using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Helpers;
using ASP.Net_WebAPI1.Models;

namespace ASP.Net_WebAPI.Controllers
{
    public class HomeController : Controller
    {
        private Model1Container db = new Model1Container();
        // GET: Home 
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }
        public ActionResult WebGrid()
        {

            ViewBag.Title = "Home Page";

            return View(db.CompanySet.ToList());


        }
        public ActionResult WebGrid2()
        {

            ViewBag.Title = "Home Page";

            var Phone = db.PhoneSet.Include(c => c.Company);
            return View(Phone.ToList());


        }

    }
}
