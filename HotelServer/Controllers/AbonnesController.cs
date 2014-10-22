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
    public class AbonnesController : ApiController
    {
        private HotelEntities db = new HotelEntities();

        // GET: api/Abonnes
        public IQueryable<vAbonne> GetvAbonne()
        {
            return db.vAbonne;
        }

        // GET: api/Abonnes/5
        [ResponseType(typeof(vAbonne))]
        public IHttpActionResult GetvAbonne(decimal id)
        {
            vAbonne vAbonne = db.vAbonne.Find(id);
            if (vAbonne == null)
            {
                return NotFound();
            }

            return Ok(vAbonne);
        }

        // PUT: api/Abonnes/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutvAbonne(decimal id, vAbonne vAbonne)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != vAbonne.id)
            {
                return BadRequest();
            }

            db.Entry(vAbonne).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!vAbonneExists(id))
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

        // POST: api/Abonnes
        [ResponseType(typeof(vAbonne))]
        public IHttpActionResult PostvAbonne(vAbonne vAbonne)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.vAbonne.Add(vAbonne);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = vAbonne.id }, vAbonne);
        }

        // DELETE: api/Abonnes/5
        [ResponseType(typeof(vAbonne))]
        public IHttpActionResult DeletevAbonne(decimal id)
        {
            vAbonne vAbonne = db.vAbonne.Find(id);
            if (vAbonne == null)
            {
                return NotFound();
            }

            db.vAbonne.Remove(vAbonne);
            db.SaveChanges();

            return Ok(vAbonne);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool vAbonneExists(decimal id)
        {
            return db.vAbonne.Count(e => e.id == id) > 0;
        }
    }
}