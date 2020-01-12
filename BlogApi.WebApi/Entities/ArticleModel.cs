using System;

namespace BlogApi.WebApi.Entities
{
    public class ArticleModel
    {
        public int id { get; set; }
        public string ArticleName { get; set; }
        public string ArticleDetail { get; set; }
        public DateTime CreateDate { get; set; }

    }
}
