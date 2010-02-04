﻿using System;

namespace Alexandria.Messages
{
	public class MyQueueResponse : ICachableResponse
	{
		public BookDTO[] Queue { get; set; }

		public long UserId { get; set; }

		public string Key
		{
			get { return "MyQueue [UserId #" + UserId + "]"; }
		}

		public DateTime Timestamp { get; set; }
	}
}