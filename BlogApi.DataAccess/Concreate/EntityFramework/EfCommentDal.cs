using BlogApi.Core.DataAccess.EntityFramework;
using BlogApi.Core.Entities;
using BlogApi.DataAccess.Abstract;

namespace BlogApi.DataAccess.Concreate.EntityFramework
{
    public class EfCommentDal : EfEntityRepositoryBase<Comment, WebApiBlogContext>, ICommentDal
    {
    }
}
