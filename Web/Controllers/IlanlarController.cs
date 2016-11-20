using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Data;

namespace Web.Controllers
{
    public class IlanlarController : BaseController
    {
        // GET: Ilanlar
        public ActionResult Index(int id = 0, int start = 0, int pageSize = 10, string query = "")
        {
            var ilanlar = emlakmvc.IlanSet.AsQueryable();

            if (id > 0)
            {
                ilanlar = ilanlar.Where(q => q.KategoriId == id);
            }

            if (query.Length > 0)
            {
                ilanlar = ilanlar.Where(q => q.Title.Contains(query) || q.IlanDetay.Aciklama.Contains(query));
            }

            ilanlar.OrderByDescending(q => q.Id).Skip(start).Take(pageSize);

            ViewBag.start = start + pageSize;
            ViewBag.pageSize = pageSize;

            return View(ilanlar);
        }
    }
}