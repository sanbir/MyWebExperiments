﻿using System.Collections.Generic;
using MVCBlog.Core.Entities;

namespace MVCBlog.Core.Commands
{
    public class UpdateBlogEntryCommand
    {
        public BlogEntry Entity { get; set; }

        public IEnumerable<string> Tags { get; set; }
    }
}
