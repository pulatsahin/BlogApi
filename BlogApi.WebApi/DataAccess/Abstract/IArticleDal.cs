using BlogApi.WebApi.Core.DataAccess;
using BlogApi.WebApi.Entities;
using System.Collections.Generic;

namespace BlogApi.WebApi.DataAccess.Abstract
{
    public interface IArticleDal : IEntityRepository<Article>
    {
        List<ArticleModel> GetArticlesWithDetails();
    }
}
