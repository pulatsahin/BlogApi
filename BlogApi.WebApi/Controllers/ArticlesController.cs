using BlogApi.WebApi.DataAccess.Abstract;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace BlogApi.WebApi.Controllers
{
    [Authorize]
    [ApiController]
    [Route("[controller]")]
    public class ArticlesController : Controller
    {
        private IArticleDal _articleDal;

        public ArticlesController(IArticleDal articleDal)
        {
            _articleDal = articleDal;
           
        }

        [HttpGet]
        [HttpPost("authenticate")]
        public IActionResult Get()
        {

            try
            {
                var articles = _articleDal.GetList();

                if (articles == null)
                {
                   
                    return NotFound("There is no article");
                }

                return Ok(articles);


            }
            catch { }


            return BadRequest();

        }



    }
}