using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace HelloWorldWeb2.Pages
{
    public class IndexModel : PageModel, IIndexModel
    {
        private readonly ILogger<IndexModel> _logger;

        public IndexModel(ILogger<IndexModel> logger)
        {
            _logger = logger;
        }

        public void OnGet()
        {

        }

        public string Message { get { return "Hello World my name is Devora Goldenberg" + DateTime.Now.ToString(); } }
    }
}