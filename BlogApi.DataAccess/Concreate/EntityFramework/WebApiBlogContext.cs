using System;
using System.Security.Principal;
using BlogApi.Core.Entities;
using Microsoft.AspNet.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace BlogApi.DataAccess.Concreate.EntityFramework
{
    public class WebApiBlogContext:DbContext
    {
        public WebApiBlogContext(DbContextOptions<WebApiBlogContext> options) : base(options)
        {

        }


        public static void Initialize(IServiceProvider serviceProvider)
        {
            var context = serviceProvider.GetRequiredService<WebApiBlogContext>();
            var userManager = serviceProvider.GetRequiredService<UserManager<ApplicationUser>>();
            context.Database.EnsureCreated();



            ApplicationUser user = new ApplicationUser()
            {
                Email = "ali@gmail.com",
                SecurityStamp = Guid.NewGuid().ToString(),
                UserName = "Ali"
            };

            userManager.CreateAsync(user, "Ali@123");


             user = new ApplicationUser()
            {
                Email = "sahin@gmail.com",
                SecurityStamp = Guid.NewGuid().ToString(),
                UserName = "Sahin"
            };

            userManager.CreateAsync(user, "Sahin@123");





        }


        //protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //{


        //    var appName = new ConfigurationBuilder().AddJsonFile("appsettings.json").Build().GetSection("ConnectionStrings")["DefaultConnection"];

        //    optionsBuilder.UseSqlServer(
        //        appName

        //        );

        //}





        public DbSet<Article> Articles { get; set; }
        public DbSet<Comment> Comments { get; set; }


        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}
