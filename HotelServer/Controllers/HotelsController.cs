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
    public class HotelsController : ApiController
    {
        private HotelEntities db = new HotelEntities();

        // GET: api/Hotels
        public IQueryable<vHotel> GetvHotel()
        {
            return db.vHotel;
        }

        // GET: api/Hotels/5
        [ResponseType(typeof(vHotel))]
        public IHttpActionResult GetvHotel(decimal id)
        {
            vHotel vHotel = db.vHotel.Find(id);
            if (vHotel == null)
            {
                return NotFound();
            }

            return Ok(vHotel);
        }

        // PUT: api/Hotels/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutvHotel(decimal id, vHotel vHotel)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != vHotel.id)
            {
                return BadRequest();
            }

            db.Entry(vHotel).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!vHotelExists(id))
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

        // POST: api/Hotels
        [ResponseType(typeof(vHotel))]
        public IHttpActionResult PostvHotel(vHotel vHotel)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.vHotel.Add(vHotel);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = vHotel.id }, vHotel);
        }

        // DELETE: api/Hotels/5
        [ResponseType(typeof(vHotel))]
        public IHttpActionResult DeletevHotel(decimal id)
        {
            vHotel vHotel = db.vHotel.Find(id);
            if (vHotel == null)
            {
                return NotFound();
            }

            db.vHotel.Remove(vHotel);
            db.SaveChanges();

            return Ok(vHotel);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool vHotelExists(decimal id)
        {
            return db.vHotel.Count(e => e.id == id) > 0;
        }
    }
}