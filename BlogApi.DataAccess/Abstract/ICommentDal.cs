
using BlogApi.Core.DataAccess;
using BlogApi.Core.Entities;


namespace BlogApi.DataAccess.Abstract
{
    public interface ICommentDal:IEntityRepository<Comment>
    {
    }
}
