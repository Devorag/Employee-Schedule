using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace APIBasics.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : ControllerBase
    {
        List<Customer> lst = new() { new() { Id = 1, Name = "Andy" }, new() { Id = 2, Name = "Bob", Category = Customer.CategoryEnum.priority } };

        [HttpGet]
        [HttpGet("getcust")]

        public List<Customer> Get()
        {
            return lst;
        }

        [HttpGet("{id:int:range(1,2)}")]

        public Customer GetCustomer(int id)
        {
            return lst.First(c => c.Id == id);
        }

        [HttpGet("{id}/ {category}")]
        [HttpGet("id/{id}/category/{category}")]
        public Customer GetCustomerByIdAndCategory(int id, string category)
        {
            return lst.First(c => c.Id == id && c.Category.ToString().ToLower() == category.ToLower());
        }

        [HttpGet("qs")]
        public Customer GetCustomerByIdAndCategorybyIdAndQueryString(int id, string category)
        {
            return lst.First(c => c.Id == id && c.Category.ToString().ToLower() == category.ToLower());
        }
    }
}
