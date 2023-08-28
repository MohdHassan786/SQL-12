using System.Web;
using System.Web.Mvc;

namespace Assesment12_SQLQuery12
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
