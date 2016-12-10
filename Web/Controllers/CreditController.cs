using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web.ViewModel;

namespace Web.Controllers
{
    public class CreditController : BaseController
    {
        // GET: Credit
        public ActionResult Index()
        {
            //var project = emlakmvc.ProjectSet.FirstOrDefault(q => q.Id == Id);
            //ViewBag.project = project;

            return View();
        }

        

        public ActionResult Success()
        {
            return View();
        }
    }
}