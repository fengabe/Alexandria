using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using Alexandria.Client.Consumers;
using Alexandria.Client.ViewModel;
using Castle.Core;
using Castle.MicroKernel.ModelBuilder.Inspectors;
using Castle.MicroKernel.Registration;
using Castle.Windsor;
using Castle.Windsor.Configuration.Interpreters;
using Rhino.ServiceBus;
using Rhino.ServiceBus.Impl;
using Rhino.ServiceBus.Internal;

namespace Alexandria.Client
{
	public class Program
	{
		public static WindsorContainer Container { get; private set; }

		[STAThread]
		private static void Main()
		{
			Container = new WindsorContainer(new XmlInterpreter());
			Container.Kernel.ComponentModelBuilder.RemoveContributor(Container.Kernel.ComponentModelBuilder.Contributors.OfType<PropertiesDependenciesModelInspector>().Single());

			Container.Register(Component.For<ApplicationModel>().Instance(new ApplicationModel(Dispatcher.CurrentDispatcher)));

			Container.Kernel.AddFacility("rhino.esb", new RhinoServiceBusFacility());

			Container.Register(
			                  	AllTypes.FromAssemblyContaining<MyBooksResponseConsumer>()
			                  		.Where(x => typeof (IMessageConsumer).IsAssignableFrom(x))
			                  		.Configure(registration => registration.LifeStyle.Is(LifestyleType.Transient))
				);
			Container.Register(
				AllTypes.FromAssemblyContaining<App>()
					.Where(type => typeof(Window).IsAssignableFrom(type) ||
								typeof(UserControl).IsAssignableFrom(type) ||
								typeof(Application).IsAssignableFrom(type))
				);

			var serviceBus = Container.Resolve<IStartableServiceBus>();
			serviceBus.Start();

			var app = Container.Resolve<App>();
			app.InitializeComponent();

			app.Run();

		}
	}
}