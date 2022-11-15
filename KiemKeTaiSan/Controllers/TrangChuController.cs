using KiemKeTaiSan.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KiemKeTaiSan.Controllers
{
    public class TrangChuController : Controller
    {
        kktsDataContext kkts = new kktsDataContext();
        // GET: TrangChu
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Navbar()
        {
            return View();
        }
        public ActionResult TT_ThietBi()
        {
            return View();
        }
        public ActionResult ThongTin()
        {
            return View();
        }
        public ActionResult Footer()
        {
            return View();
        }
        
    }
}