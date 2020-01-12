using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlogApi.Core.Entities
{
    public class Comment:IEntity
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public int ArticleID { get; set; }

        public string UserName { get; set; }
        public string CommentDetail { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Computed)]
        public DateTime CreateDate { get; set; }

    }
}
