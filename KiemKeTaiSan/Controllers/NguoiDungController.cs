using KiemKeTaiSan.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace KiemKeTaiSan.Controllers
{
    public class NguoiDungController : Controller
    {
        kktsDataContext kkts = new kktsDataContext();
        // GET: NguoiDung
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection collection)
        {
            var sTenDN = collection["TenDangNhap"];
            var sMatKhau = collection["MatKhau"];
            if (String.IsNullOrEmpty(sTenDN))
            {
                ViewBag.ThongBao = "Bạn chưa nhập tên đăng nhập";
            }
            else if (String.IsNullOrEmpty(sMatKhau))
            {
                ViewBag.ThongBao = "Phải nhập mật khẩu";
            }
            else
            {
                NguoiDung kh = kkts.NguoiDungs.SingleOrDefault(n => n.TenDangNhap == sTenDN && n.MatKhau == sMatKhau);
                if (kh != null)
                {
                    ViewBag.ThongBao = "Chúc mừng đăng nhập thành công";
                    Session["NguoiDung"] = kh;
                    return RedirectToAction("Index", "TrangChu");
                }
                else
                {
                    ViewBag.ThongBao = "Tên đăng nhập hoặc mật khẩu không chính xác";
                }

            }
            return View();
        }
        public ActionResult LoginLogout()
        {
            return PartialView("LoginLogoutPartial");
        }
        public ActionResult DangXuat()
        {
            FormsAuthentication.SignOut();
            //Session.Abandon();
            Session.Remove("TaiKhoan");
            return RedirectToAction("Index", "TrangChu");
        }
        public static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;
        }
    }
}