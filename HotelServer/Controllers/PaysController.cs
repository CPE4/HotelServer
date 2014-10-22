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
    public class PaysController : ApiController
    {
        private HotelEntities db = new HotelEntities();

        // GET: api/Pays
        public IQueryable<vPays> GetvPays()
        {
            return db.vPays;
        }

        // GET: api/Pays/5
        [ResponseType(typeof(vPays))]
        public IHttpActionResult GetvPays(decimal id)
        {
            vPays vPays = db.vPays.Find(id);
            if (vPays == null)
            {
                return NotFound();
            }

            return Ok(vPays);
        }

        // PUT: api/Pays/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutvPays(decimal id, vPays vPays)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != vPays.id)
            {
                return BadRequest();
            }

            db.Entry(vPays).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!vPaysExists(id))
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

        // POST: api/Pays
        [ResponseType(typeof(vPays))]
        public IHttpActionResult PostvPays(vPays vPays)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.vPays.Add(vPays);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = vPays.id }, vPays);
        }

        // DELETE: api/Pays/5
        [ResponseType(typeof(vPays))]
        public IHttpActionResult DeletevPays(decimal id)
        {
            vPays vPays = db.vPays.Find(id);
            if (vPays == null)
            {
                return NotFound();
            }

            db.vPays.Remove(vPays);
            db.SaveChanges();

            return Ok(vPays);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool vPaysExists(decimal id)
        {
            return db.vPays.Count(e => e.id == id) > 0;
        }
    }
}