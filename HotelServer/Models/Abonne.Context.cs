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
    
    public partial class AbonneHotelEntities : DbContext
    {
        public AbonneHotelEntities()
            : base("name=AbonneHotelEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<vAbonne> vAbonne { get; set; }
    
        public virtual ObjectResult<Nullable<decimal>> Abonne_Insert(string pseudo, string motdepasse, string mail, string nom, string prenom, string adrLigne1, string adrLigne2, string codePostal, string ville, string etat, Nullable<decimal> idPays, Nullable<float> latitude, Nullable<float> longitude, Nullable<decimal> indicatif, string telephone, string aeroport)
        {
            var pseudoParameter = pseudo != null ?
                new ObjectParameter("pseudo", pseudo) :
                new ObjectParameter("pseudo", typeof(string));
    
            var motdepasseParameter = motdepasse != null ?
                new ObjectParameter("motdepasse", motdepasse) :
                new ObjectParameter("motdepasse", typeof(string));
    
            var mailParameter = mail != null ?
                new ObjectParameter("mail", mail) :
                new ObjectParameter("mail", typeof(string));
    
            var nomParameter = nom != null ?
                new ObjectParameter("nom", nom) :
                new ObjectParameter("nom", typeof(string));
    
            var prenomParameter = prenom != null ?
                new ObjectParameter("prenom", prenom) :
                new ObjectParameter("prenom", typeof(string));
    
            var adrLigne1Parameter = adrLigne1 != null ?
                new ObjectParameter("adrLigne1", adrLigne1) :
                new ObjectParameter("adrLigne1", typeof(string));
    
            var adrLigne2Parameter = adrLigne2 != null ?
                new ObjectParameter("adrLigne2", adrLigne2) :
                new ObjectParameter("adrLigne2", typeof(string));
    
            var codePostalParameter = codePostal != null ?
                new ObjectParameter("codePostal", codePostal) :
                new ObjectParameter("codePostal", typeof(string));
    
            var villeParameter = ville != null ?
                new ObjectParameter("ville", ville) :
                new ObjectParameter("ville", typeof(string));
    
            var etatParameter = etat != null ?
                new ObjectParameter("etat", etat) :
                new ObjectParameter("etat", typeof(string));
    
            var idPaysParameter = idPays.HasValue ?
                new ObjectParameter("idPays", idPays) :
                new ObjectParameter("idPays", typeof(decimal));
    
            var latitudeParameter = latitude.HasValue ?
                new ObjectParameter("latitude", latitude) :
                new ObjectParameter("latitude", typeof(float));
    
            var longitudeParameter = longitude.HasValue ?
                new ObjectParameter("longitude", longitude) :
                new ObjectParameter("longitude", typeof(float));
    
            var indicatifParameter = indicatif.HasValue ?
                new ObjectParameter("indicatif", indicatif) :
                new ObjectParameter("indicatif", typeof(decimal));
    
            var telephoneParameter = telephone != null ?
                new ObjectParameter("telephone", telephone) :
                new ObjectParameter("telephone", typeof(string));
    
            var aeroportParameter = aeroport != null ?
                new ObjectParameter("aeroport", aeroport) :
                new ObjectParameter("aeroport", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<decimal>>("Abonne_Insert", pseudoParameter, motdepasseParameter, mailParameter, nomParameter, prenomParameter, adrLigne1Parameter, adrLigne2Parameter, codePostalParameter, villeParameter, etatParameter, idPaysParameter, latitudeParameter, longitudeParameter, indicatifParameter, telephoneParameter, aeroportParameter);
        }
    }
}
