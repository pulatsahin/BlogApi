using System;
using System.Collections.Generic;
using System.Text;
using BlogApi.Core.DataAccess;
using BlogApi.Core.Entities;

namespace BlogApi.DataAccess.Abstract
{
    public interface IArticleDal : IEntityRepository<Article>
    {
        List<ArticleModel> GetArticlesWithDetails();
    }
}
