
using System.Collections.Generic;
using System.Linq;
using BlogApi.Core.DataAccess.EntityFramework;
using BlogApi.Core.Entities;
using BlogApi.DataAccess.Abstract;


namespace BlogApi.DataAccess.Concreate.EntityFramework
{


    public class EfArticleDal : EfEntityRepositoryBase<Article, WebApiBlogContext >, IArticleDal
    {
        public List<ArticleModel> GetArticlesWithDetails()
        {

            using (WebApiBlogContext context = new WebApiBlogContext())
            {
                var result = from a in context.Articles
                  
                    select new ArticleModel
                    {
                        id = a.id, 
                        ArticleDetail = a.ArticleDetail,
                        ArticleName = a.ArticleName, 
                        CreateDate = a.CreateDate
                       
                    };
                return result.ToList();
            }
        }
    }
}
