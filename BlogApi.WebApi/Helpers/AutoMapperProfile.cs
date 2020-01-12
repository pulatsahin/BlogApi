using AutoMapper;
using BlogApi.WebApi.Entities;
using BlogApi.WebApi.Models.Users;

namespace BlogApi.WebApi.Helpers
{
    public class AutoMapperProfile : Profile
    {
        public AutoMapperProfile()
        {
            CreateMap<User, UserModel>();
            CreateMap<RegisterModel, User>();
            CreateMap<UpdateModel, User>();
        }
    }
}