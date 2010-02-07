using System.Linq;

namespace Alexandria.Client
{
	using Caliburn.PresentationFramework;
	using Caliburn.PresentationFramework.Screens;
	using Messages;
	using Rhino.ServiceBus;
	using ViewModels;

	public class ApplicationModel : Screen
	{
		private readonly IServiceBus bus;
		private SubscriptionDetails subscriptionDetails;

		/// <summary>
		/// Pretend that application startup is showing the user some login screen
		/// and that we get the user id from the login process
		/// </summary>
		private const int userId = 1;

		public ApplicationModel(IServiceBus bus)
		{
			this.bus = bus;

			MyBooks = new BindableCollection<BookModel>();
			Queue = new BindableCollection<BookModel>();
			Recommendations = new BindableCollection<BookModel>();
			SearchResults = new BindableCollection<BookModel>();
			subscriptionDetails = new SubscriptionDetails(bus);
		}

		public SubscriptionDetails SubscriptionDetails
		{
			get { return subscriptionDetails; }
			set
			{
				subscriptionDetails = value;
				NotifyOfPropertyChange(() => SubscriptionDetails);
			}
		}

		public BindableCollection<BookModel> Queue { get; set; }
		public BindableCollection<BookModel> Recommendations { get; set; }
		public BindableCollection<BookModel> MyBooks { get; set; }
		public BindableCollection<BookModel> SearchResults { get; set; }

		protected override void OnInitialize()
		{
			bus.Send(
				new MyBooksRequest
				{
					UserId = userId
				},
				new MyQueueRequest
				{
					UserId = userId
				},
				new MyRecommendationsRequest
				{
					UserId = userId
				},
				new SubscriptionDetailsRequest
				{
					UserId = userId
				});
		}

		public void MoveForwardInQueue(BookModel book)
		{
			var currentIndex = Queue.IndexOf(book);
			ExecuteQueueReorder(currentIndex, currentIndex - 1);
		}

		public void MoveBackInQueue(BookModel book)
		{
			var currentIndex = Queue.IndexOf(book);
			ExecuteQueueReorder(currentIndex, currentIndex + 1);
		}

		private void ExecuteQueueReorder(int oldIndex, int newIndex)
		{
			var bookModel = Queue[oldIndex];
			Queue.Move(oldIndex, newIndex);

			bus.Send(
			        	new ChangeBookPositionInQueue
			        	{
			        		UserId = userId,
			        		BookId = bookModel.Id,
			        		NewPosition = newIndex
			        	},
			        	new MyQueueRequest
			        	{
			        		UserId = userId
			        	});
		}

		public bool CanMoveForwardInQueue(BookModel book)
		{
			return Queue.IndexOf(book) > 0;
		}

		public bool CanMoveBackInQueue(BookModel book)
		{
			var lastIndex = Queue.Count - 1;
			return Queue.IndexOf(book) < lastIndex;
		}

		public void AddToQueue(BookModel book)
		{
			Recommendations.Remove(book);
			if (Queue.Any(x => x.Id == book.Id) == false) // avoid adding twice
				Queue.Add(book);

			bus.Send(
			        	new AddBookToQueue
			        	{
			        		UserId = userId,
			        		BookId = book.Id
			        	},
			        	new MyQueueRequest
			        	{
			        		UserId = userId
			        	},
			        	new MyRecommendationsRequest
			        	{
			        		UserId = userId
			        	});
		}

		public void Search(string search)
		{
			bus.Send(
			        	new SearchRequest
			        	{
			        		Search = search,
			        		UserId = userId
			        	});
		}

		public void RemoveFromQueue(BookModel book)
		{
			Queue.Remove(book);

			bus.Send(
			        	new RemoveBookFromQueue
			        	{
			        		UserId = userId,
			        		BookId = book.Id
			        	},
			        	new MyQueueRequest
			        	{
			        		UserId = userId
			        	},
			        	new MyRecommendationsRequest
			        	{
			        		UserId = userId
			        	});
		}
	}
}