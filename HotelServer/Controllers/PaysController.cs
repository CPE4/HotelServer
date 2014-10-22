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
        private PaysHotelEntities db = new PaysHotelEntities();

        // GET: api/Pays
        public IQueryable<vPays> GetvPays()
        {
            return db.vPays;
        }

        // GET: api/Pays/5
        [ResponseType(typeof(vPays))]
        public IHttpActionResult GetvPays(string id)
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
        public IHttpActionResult PutvPays(string id, vPays vPays)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != vPays.nom)
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

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (vPaysExists(vPays.nom))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = vPays.nom }, vPays);
        }

        // DELETE: api/Pays/5
        [ResponseType(typeof(vPays))]
        public IHttpActionResult DeletevPays(string id)
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

        private bool vPaysExists(string id)
        {
            return db.vPays.Count(e => e.nom == id) > 0;
        }
    }
}