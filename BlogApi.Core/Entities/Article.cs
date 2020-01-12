using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlogApi.Core.Entities
{
    public class Article:IEntity
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public  string ArticleName { get; set; }

        public string ArticleDetail { get; set; }
        

        [DatabaseGenerated(DatabaseGeneratedOption.Computed)]
        public  DateTime CreateDate { get; set; }

    }
}
