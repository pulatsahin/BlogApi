using BlogApi.Core.DataAccess.EntityFramework;
using BlogApi.WebApi.DataAccess.Abstract;
using BlogApi.WebApi.Entities;


namespace BlogApi.WebApi.DataAccess.Concreate.EntityFramework
{
    public class EfCommentDal : EfEntityRepositoryBase<Comment, WebApiBlogContext>, ICommentDal
    {
    }
}
