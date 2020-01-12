using BlogApi.WebApi.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace BlogApi.WebApi.DataAccess.Concreate.EntityFramework
{
    public class WebApiBlogContext:DbContext
    {

        public WebApiBlogContext() { }

        //public WebApiBlogContext(DbContextOptions<WebApiBlogContext> options) : base(options)
        //{

        //}


        


        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {


            var appName = new ConfigurationBuilder().AddJsonFile("appsettings.json").Build().GetSection("ConnectionStrings")["DefaultConnection"];

            optionsBuilder.UseSqlServer(
                appName

                );

        }





        public DbSet<Article> Articles { get; set; }
        public DbSet<Comment> Comments { get; set; }

        public DbSet<User> Users { get; set; }


        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}
