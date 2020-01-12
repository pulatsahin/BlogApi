using BlogApi.WebApi.Core.DataAccess;
using BlogApi.WebApi.Entities;


namespace BlogApi.WebApi.DataAccess.Abstract
{
    public interface ICommentDal:IEntityRepository<Comment>
    {
    }
}
