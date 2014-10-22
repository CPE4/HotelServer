﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Ce code a été généré à partir d'un modèle.
//
//    Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//    Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HotelServer.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class HotelierHotelEntities : DbContext
    {
        public HotelierHotelEntities()
            : base("name=HotelierHotelEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<vHotelier> vHotelier { get; set; }
    
        public virtual ObjectResult<Nullable<decimal>> Hotelier_Insert(string mail, string motdepasse, string nom, Nullable<decimal> idPays, string etat, string ville, string codePostal, string adrLigne2, string adrLigne1, string prenom)
        {
            var mailParameter = mail != null ?
                new ObjectParameter("mail", mail) :
                new ObjectParameter("mail", typeof(string));
    
            var motdepasseParameter = motdepasse != null ?
                new ObjectParameter("motdepasse", motdepasse) :
                new ObjectParameter("motdepasse", typeof(string));
    
            var nomParameter = nom != null ?
                new ObjectParameter("nom", nom) :
                new ObjectParameter("nom", typeof(string));
    
            var idPaysParameter = idPays.HasValue ?
                new ObjectParameter("idPays", idPays) :
                new ObjectParameter("idPays", typeof(decimal));
    
            var etatParameter = etat != null ?
                new ObjectParameter("etat", etat) :
                new ObjectParameter("etat", typeof(string));
    
            var villeParameter = ville != null ?
                new ObjectParameter("ville", ville) :
                new ObjectParameter("ville", typeof(string));
    
            var codePostalParameter = codePostal != null ?
                new ObjectParameter("codePostal", codePostal) :
                new ObjectParameter("codePostal", typeof(string));
    
            var adrLigne2Parameter = adrLigne2 != null ?
                new ObjectParameter("adrLigne2", adrLigne2) :
                new ObjectParameter("adrLigne2", typeof(string));
    
            var adrLigne1Parameter = adrLigne1 != null ?
                new ObjectParameter("adrLigne1", adrLigne1) :
                new ObjectParameter("adrLigne1", typeof(string));
    
            var prenomParameter = prenom != null ?
                new ObjectParameter("prenom", prenom) :
                new ObjectParameter("prenom", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<decimal>>("Hotelier_Insert", mailParameter, motdepasseParameter, nomParameter, idPaysParameter, etatParameter, villeParameter, codePostalParameter, adrLigne2Parameter, adrLigne1Parameter, prenomParameter);
        }
    }
}