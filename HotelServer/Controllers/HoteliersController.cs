using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using HotelServer.Models;

namespace HotelServer.Controllers
{
    public class HoteliersController : ApiController
    {
        private HotelierHotelEntities db = new HotelierHotelEntities();

        // GET: api/Hoteliers
        public IQueryable<vHotelier> GetvHotelier()
        {
            return db.vHotelier;
        }

        // GET: api/Hoteliers/5
        [ResponseType(typeof(vHotelier))]
        public IHttpActionResult GetvHotelier(decimal id)
        {
            vHotelier vHotelier = db.vHotelier.Find(id);
            if (vHotelier == null)
            {
                return NotFound();
            }

            return Ok(vHotelier);
        }

        // PUT: api/Hoteliers/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutvHotelier(decimal id, vHotelier vHotelier)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != vHotelier.id)
            {
                return BadRequest();
            }

            db.Entry(vHotelier).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!vHotelierExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Hoteliers
        [ResponseType(typeof(vHotelier))]
        public IHttpActionResult PostvHotelier(vHotelier vHotelier)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.vHotelier.Add(vHotelier);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = vHotelier.id }, vHotelier);
        }

        // DELETE: api/Hoteliers/5
        [ResponseType(typeof(vHotelier))]
        public IHttpActionResult DeletevHotelier(decimal id)
        {
            vHotelier vHotelier = db.vHotelier.Find(id);
            if (vHotelier == null)
            {
                return NotFound();
            }

            db.vHotelier.Remove(vHotelier);
            db.SaveChanges();

            return Ok(vHotelier);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool vHotelierExists(decimal id)
        {
            return db.vHotelier.Count(e => e.id == id) > 0;
        }
    }
}