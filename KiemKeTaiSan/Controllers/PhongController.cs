using KiemKeTaiSan.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KiemKeTaiSan.Controllers
{
    public class PhongController : Controller
    {
        kktsDataContext kkts = new kktsDataContext();
        // GET: Phong
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public JsonResult Select_LoaiPhong()
        {
            var get_data = from s in kkts.LoaiPhongs.OrderByDescending(a => a.MaLP)
                           select new { s.MaLP, s.TenLP, s.GhiChu, s.NgayCapNhat };
            return Json(new { data = get_data }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult Select_KhuVucPhong()
        {
            var get_data = from s in kkts.KhuVucPhongs.OrderByDescending(a => a.MaKV)
                           select new { s.MaKV, s.TenKV, s.GhiChu, s.NgayCapNhat };
            return Json(new { data = get_data }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult Select_Phong()
        {
            var get_data = from s in kkts.Phongs.OrderByDescending(a => a.MaKV)
                           join kvp in kkts.KhuVucPhongs on s.MaKV equals kvp.MaKV
                           join lp in kkts.LoaiPhongs on s.MaLP equals lp.MaLP
                           select new { s.MaPhong, s.MaKV, s.MaLP, s.TenPhong, kvp.TenKV, lp.TenLP, s.GhiChu, s.NgayCapNhat };
            return Json(new { data = get_data }, JsonRequestBehavior.AllowGet);
        }

    }
}