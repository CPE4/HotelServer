/*==============================================================*/
/* Nom de SGBD :  Microsoft SQL Server 2008                     */
/* Date de création :  19/10/2014 20:42:51                      */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_ABONNE_ABO') and o.name = 'FK_ABO_IND')
alter table T_E_ABONNE_ABO
   drop constraint FK_ABO_IND
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_ABONNE_ABO') and o.name = 'FK_ABO_PAY')
alter table T_E_ABONNE_ABO
   drop constraint FK_ABO_PAY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_ALIAS_ALI') and o.name = 'FK_ALI_HOT')
alter table T_E_ALIAS_ALI
   drop constraint FK_ALI_HOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_AVIS_AVI') and o.name = 'FK_AVI_VIS')
alter table T_E_AVIS_AVI
   drop constraint FK_AVI_VIS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_AVIS_AVI') and o.name = 'FK_T_E_AVIS_REFERENCE_T_R_PERI')
alter table T_E_AVIS_AVI
   drop constraint FK_T_E_AVIS_REFERENCE_T_R_PERI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_AVIS_AVI') and o.name = 'FK_AVI_ABO')
alter table T_E_AVIS_AVI
   drop constraint FK_AVI_ABO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_AVIS_AVI') and o.name = 'FK_AVI_HOT')
alter table T_E_AVIS_AVI
   drop constraint FK_AVI_HOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_AVIS_AVI') and o.name = 'FK_AVI_WIF')
alter table T_E_AVIS_AVI
   drop constraint FK_AVI_WIF
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_AVIS_AVI') and o.name = 'FK_T_E_AVIS_REFERENCE_T_R_LANG')
alter table T_E_AVIS_AVI
   drop constraint FK_T_E_AVIS_REFERENCE_T_R_LANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_HOTELIER_HTR') and o.name = 'FK_T_E_HOTE_REFERENCE_T_R_PAYS')
alter table T_E_HOTELIER_HTR
   drop constraint FK_T_E_HOTE_REFERENCE_T_R_PAYS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_HOTEL_HOT') and o.name = 'FK_HOT_IND')
alter table T_E_HOTEL_HOT
   drop constraint FK_HOT_IND
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_HOTEL_HOT') and o.name = 'FK_HOT_PAY')
alter table T_E_HOTEL_HOT
   drop constraint FK_HOT_PAY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_HOTEL_HOT') and o.name = 'FK_T_E_HOTE_REFERENCE_T_E_HOTE')
alter table T_E_HOTEL_HOT
   drop constraint FK_T_E_HOTE_REFERENCE_T_E_HOTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_HOTEL_HOT') and o.name = 'FK_HOT_PRX')
alter table T_E_HOTEL_HOT
   drop constraint FK_HOT_PRX
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_HOTEL_HOT') and o.name = 'FK_HOT_CAT')
alter table T_E_HOTEL_HOT
   drop constraint FK_HOT_CAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_PHOTO_PHO') and o.name = 'FK_PHO_AVI')
alter table T_E_PHOTO_PHO
   drop constraint FK_PHO_AVI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_PHOTO_PHO') and o.name = 'FK_PHO_HOT')
alter table T_E_PHOTO_PHO
   drop constraint FK_PHO_HOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_E_REPONSEAVIS_REP') and o.name = 'FK_T_E_REPO_REFERENCE_T_E_AVIS')
alter table T_E_REPONSEAVIS_REP
   drop constraint FK_T_E_REPO_REFERENCE_T_E_AVIS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_EQUIPEMENTHOTEL_EQH') and o.name = 'FK_EQH_EQU')
alter table T_J_EQUIPEMENTHOTEL_EQH
   drop constraint FK_EQH_EQU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_EQUIPEMENTHOTEL_EQH') and o.name = 'FK_EQH_HOT')
alter table T_J_EQUIPEMENTHOTEL_EQH
   drop constraint FK_EQH_HOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_FAVORI_FAV') and o.name = 'FK_T_J_FAVO_REFERENCE_T_E_ABON')
alter table T_J_FAVORI_FAV
   drop constraint FK_T_J_FAVO_REFERENCE_T_E_ABON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_FAVORI_FAV') and o.name = 'FK_T_J_FAVO_REFERENCE_T_E_HOTE')
alter table T_J_FAVORI_FAV
   drop constraint FK_T_J_FAVO_REFERENCE_T_E_HOTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_HOTELSIMILAIRE_HOS') and o.name = 'FK_HOS_HOT1')
alter table T_J_HOTELSIMILAIRE_HOS
   drop constraint FK_HOS_HOT1
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_HOTELSIMILAIRE_HOS') and o.name = 'FK_HOS_HOT2')
alter table T_J_HOTELSIMILAIRE_HOS
   drop constraint FK_HOS_HOT2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_LIEUALENTOURAVIS_LAA') and o.name = 'FK_LAA_LAL')
alter table T_J_LIEUALENTOURAVIS_LAA
   drop constraint FK_LAA_LAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_LIEUALENTOURAVIS_LAA') and o.name = 'FK_LAA_AVI')
alter table T_J_LIEUALENTOURAVIS_LAA
   drop constraint FK_LAA_AVI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_STYLEAVIS_STA') and o.name = 'FK_STA_AVI')
alter table T_J_STYLEAVIS_STA
   drop constraint FK_STA_AVI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_STYLEAVIS_STA') and o.name = 'FK_STA_STY')
alter table T_J_STYLEAVIS_STA
   drop constraint FK_STA_STY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_UTILITE_UTI') and o.name = 'FK_UTI_AVI')
alter table T_J_UTILITE_UTI
   drop constraint FK_UTI_AVI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_J_UTILITE_UTI') and o.name = 'FK_UTI_ABO')
alter table T_J_UTILITE_UTI
   drop constraint FK_UTI_ABO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_E_ABONNE_ABO')
            and   type = 'U')
   drop table T_E_ABONNE_ABO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_E_ALIAS_ALI')
            and   type = 'U')
   drop table T_E_ALIAS_ALI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_E_AVIS_AVI')
            and   type = 'U')
   drop table T_E_AVIS_AVI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_E_HOTELIER_HTR')
            and   type = 'U')
   drop table T_E_HOTELIER_HTR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_E_HOTEL_HOT')
            and   type = 'U')
   drop table T_E_HOTEL_HOT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_E_PHOTO_PHO')
            and   type = 'U')
   drop table T_E_PHOTO_PHO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_E_REPONSEAVIS_REP')
            and   type = 'U')
   drop table T_E_REPONSEAVIS_REP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_J_EQUIPEMENTHOTEL_EQH')
            and   type = 'U')
   drop table T_J_EQUIPEMENTHOTEL_EQH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_J_FAVORI_FAV')
            and   type = 'U')
   drop table T_J_FAVORI_FAV
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_J_HOTELSIMILAIRE_HOS')
            and   type = 'U')
   drop table T_J_HOTELSIMILAIRE_HOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_J_LIEUALENTOURAVIS_LAA')
            and   type = 'U')
   drop table T_J_LIEUALENTOURAVIS_LAA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_J_STYLEAVIS_STA')
            and   type = 'U')
   drop table T_J_STYLEAVIS_STA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_J_UTILITE_UTI')
            and   type = 'U')
   drop table T_J_UTILITE_UTI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_CATEGORIEHOTEL_CAT')
            and   type = 'U')
   drop table T_R_CATEGORIEHOTEL_CAT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_EQUIPEMENT_EQU')
            and   type = 'U')
   drop table T_R_EQUIPEMENT_EQU
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_FOURCHETTEPRIX_PRX')
            and   type = 'U')
   drop table T_R_FOURCHETTEPRIX_PRX
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_INDICATIFTEL_IND')
            and   type = 'U')
   drop table T_R_INDICATIFTEL_IND
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_LANGUEAVIS_LNG')
            and   type = 'U')
   drop table T_R_LANGUEAVIS_LNG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_LIEUALENTOUR_LAL')
            and   type = 'U')
   drop table T_R_LIEUALENTOUR_LAL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_PAYS_PAY')
            and   type = 'U')
   drop table T_R_PAYS_PAY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_PERIODEVISITE_PER')
            and   type = 'U')
   drop table T_R_PERIODEVISITE_PER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_STYLE_STY')
            and   type = 'U')
   drop table T_R_STYLE_STY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_TYPEVISITE_VIS')
            and   type = 'U')
   drop table T_R_TYPEVISITE_VIS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_R_WIFI_WIF')
            and   type = 'U')
   drop table T_R_WIFI_WIF
go

/*==============================================================*/
/* Table : T_E_ABONNE_ABO                                       */
/*==============================================================*/
create table T_E_ABONNE_ABO (
   ABO_ID               numeric(10)          identity,
   ABO_PSEUDO           varchar(20)          not null,
   ABO_MOTPASSE         varchar(40)          not null,
   ABO_MEL              varchar(80)          not null,
   ABO_NOM              varchar(50)          not null,
   ABO_PRENOM           varchar(50)          not null,
   ABO_ADRLIGNE1        varchar(100)         not null,
   ABO_ADRLIGNE2        varchar(100)         null,
   ABO_CP               varchar(10)          not null,
   ABO_VILLE            varchar(50)          not null,
   ABO_ETAT             varchar(50)          null,
   PAY_ID               numeric(4)           not null,
   ABO_LATITUDE         float(16)            not null,
   ABO_LONGITUDE        float(16)            not null,
   IND_INDICATIF        numeric(4)           not null,
   ABO_TEL              varchar(15)          not null,
   ABO_AEROPORT         varchar(50)          null,
   constraint PK_T_E_ABONNE_ABO primary key nonclustered (ABO_ID)
)
go

/*==============================================================*/
/* Table : T_E_ALIAS_ALI                                        */
/*==============================================================*/
create table T_E_ALIAS_ALI (
   ALI_ID               numeric(7)           identity,
   HOT_ID               numeric(6)           not null,
   ALI_INTITULE         varchar(100)         not null,
   constraint PK_T_E_ALIAS_ALI primary key nonclustered (ALI_ID)
)
go

/*==============================================================*/
/* Table : T_E_AVIS_AVI                                         */
/*==============================================================*/
create table T_E_AVIS_AVI (
   AVI_ID               numeric(10)          identity,
   ABO_ID               numeric(10)          not null,
   HOT_ID               numeric(6)           not null,
   VIS_ID               numeric(2)           not null,
   PER_ID               numeric(3)           not null,
   WIF_ID               numeric(1)           null,
   LNG_ID               numeric(3)           not null,
   AVI_DATE             datetime             not null default getdate(),
   AVI_TITRE            varchar(100)         not null,
   AVI_DETAIL           varchar(2000)        not null,
   AVI_NOTEGLOBALE      numeric(1)           not null,
   AVI_NOTECHAMBRES     numeric(1)           not null,
   AVI_NOTESERVICE      numeric(1)           not null,
   AVI_NOTEPROPRETE     numeric(1)           not null,
   AVI_CONSEIL          varchar(200)         null,
   constraint PK_T_E_AVIS_AVI primary key nonclustered (AVI_ID)
)
go

/*==============================================================*/
/* Table : T_E_HOTELIER_HTR                                     */
/*==============================================================*/
create table T_E_HOTELIER_HTR (
   HTR_ID               numeric(6)           identity,
   HTR_MEL              varchar(80)          not null,
   HTR_MOTPASSE         varchar(40)          not null,
   HTR_NOM              varchar(50)          not null,
   HTR_PRENOM           varchar(50)          not null,
   HTR_ADRLIGNE1        varchar(100)         not null,
   HTR_ADRLIGNE2        varchar(100)         null,
   HTR_CP               varchar(10)          not null,
   HTR_VILLE            varchar(50)          not null,
   HTR_ETAT             varchar(50)          null,
   PAY_ID               numeric(4)           not null,
   constraint PK_T_E_HOTELIER_HTR primary key nonclustered (HTR_ID)
)
go

/*==============================================================*/
/* Table : T_E_HOTEL_HOT                                        */
/*==============================================================*/
create table T_E_HOTEL_HOT (
   HOT_ID               numeric(6)           identity,
   HTR_ID               numeric(6)           not null,
   PRX_ID               numeric(2)           not null,
   HOT_NOM              varchar(80)          not null,
   HOT_DESCRIPTION      varchar(500)         null,
   HOT_ADRLIGNE1        varchar(100)         not null,
   HOT_ADRLIGNE2        varchar(100)         null,
   HOT_CP               varchar(10)          not null,
   HOT_VILLE            varchar(50)          not null,
   HOT_ETAT             varchar(50)          null,
   PAY_ID               numeric(4)           not null,
   HOT_LATITUDE         float(16)            not null,
   HOT_LONGITUDE        float(16)            not null,
   IND_INDICATIF        numeric(4)           not null,
   CAT_NBETOILES        numeric(1)           not null,
   HOT_TEL              varchar(15)          not null,
   HOT_MEL              varchar(80)          not null,
   HOT_SITEWEB          varchar(100)         null,
   HOT_NBCHAMBRES       numeric(3)           null,
   constraint PK_T_E_HOTEL_HOT primary key nonclustered (HOT_ID)
)
go

/*==============================================================*/
/* Table : T_E_PHOTO_PHO                                        */
/*==============================================================*/
create table T_E_PHOTO_PHO (
   PHO_ID               numeric(10)          identity,
   HOT_ID               numeric(6)           null,
   AVI_ID               numeric(10)          null,
   PHO_URL              varchar(100)         not null,
   constraint PK_T_E_PHOTO_PHO primary key nonclustered (PHO_ID)
)
go

/*==============================================================*/
/* Table : T_E_REPONSEAVIS_REP                                  */
/*==============================================================*/
create table T_E_REPONSEAVIS_REP (
   AVI_ID               numeric(10)          not null,
   REP_DATE             datetime             not null default getdate(),
   REP_COMMENTAIRE      varchar(2000)        not null,
   constraint PK_T_E_REPONSEAVIS_REP primary key nonclustered (AVI_ID)
)
go

/*==============================================================*/
/* Table : T_J_EQUIPEMENTHOTEL_EQH                              */
/*==============================================================*/
create table T_J_EQUIPEMENTHOTEL_EQH (
   HOT_ID               numeric(6)           not null,
   EQU_ID               numeric(2)           not null,
   constraint PK_T_J_EQUIPEMENTHOTEL_EQH primary key nonclustered (EQU_ID, HOT_ID)
)
go

/*==============================================================*/
/* Table : T_J_FAVORI_FAV                                       */
/*==============================================================*/
create table T_J_FAVORI_FAV (
   ABO_ID               numeric(10)          not null,
   HOT_ID               numeric(6)           not null,
   constraint PK_T_J_FAVORI_FAV primary key nonclustered (ABO_ID, HOT_ID)
)
go

/*==============================================================*/
/* Table : T_J_HOTELSIMILAIRE_HOS                               */
/*==============================================================*/
create table T_J_HOTELSIMILAIRE_HOS (
   HOT_ID               numeric(6)           not null,
   HOT_IDSIMILAIRE      numeric(6)           not null,
   constraint PK_T_J_HOTELSIMILAIRE_HOS primary key nonclustered (HOT_ID, HOT_IDSIMILAIRE)
)
go

/*==============================================================*/
/* Table : T_J_LIEUALENTOURAVIS_LAA                             */
/*==============================================================*/
create table T_J_LIEUALENTOURAVIS_LAA (
   AVI_ID               numeric(10)          not null,
   LAL_ID               numeric(2)           not null,
   constraint PK_T_J_LIEUALENTOURAVIS_LAA primary key nonclustered (AVI_ID, LAL_ID)
)
go

/*==============================================================*/
/* Table : T_J_STYLEAVIS_STA                                    */
/*==============================================================*/
create table T_J_STYLEAVIS_STA (
   AVI_ID               numeric(10)          not null,
   STY_ID               numeric(2)           not null,
   STA_VALEUR           char(3)              not null
      constraint CKC_STA_VALEUR_T_J_STYL check (STA_VALEUR in ('Oui','Non','NSP')),
   constraint PK_T_J_STYLEAVIS_STA primary key nonclustered (AVI_ID, STY_ID)
)
go

/*==============================================================*/
/* Table : T_J_UTILITE_UTI                                      */
/*==============================================================*/
create table T_J_UTILITE_UTI (
   ABO_ID               numeric(10)          not null,
   AVI_ID               numeric(10)          not null,
   constraint PK_T_J_UTILITE_UTI primary key nonclustered (ABO_ID, AVI_ID)
)
go

/*==============================================================*/
/* Table : T_R_CATEGORIEHOTEL_CAT                               */
/*==============================================================*/
create table T_R_CATEGORIEHOTEL_CAT (
   CAT_NBETOILES        numeric(1)           not null,
   constraint PK_T_R_CATEGORIEHOTEL_CAT primary key nonclustered (CAT_NBETOILES)
)
go

/*==============================================================*/
/* Table : T_R_EQUIPEMENT_EQU                                   */
/*==============================================================*/
create table T_R_EQUIPEMENT_EQU (
   EQU_ID               numeric(2)           identity,
   EQU_LIBELLE          varchar(50)          not null,
   constraint PK_T_R_EQUIPEMENT_EQU primary key nonclustered (EQU_ID)
)
go

/*==============================================================*/
/* Table : T_R_FOURCHETTEPRIX_PRX                               */
/*==============================================================*/
create table T_R_FOURCHETTEPRIX_PRX (
   PRX_ID               numeric(2)           identity,
   PRX_FOURCHETTE       varchar(20)          not null,
   constraint PK_T_R_FOURCHETTEPRIX_PRX primary key nonclustered (PRX_ID)
)
go

/*==============================================================*/
/* Table : T_R_INDICATIFTEL_IND                                 */
/*==============================================================*/
create table T_R_INDICATIFTEL_IND (
   IND_INDICATIF        numeric(4)           not null,
   constraint PK_T_R_INDICATIFTEL_IND primary key nonclustered (IND_INDICATIF)
)
go

/*==============================================================*/
/* Table : T_R_LANGUEAVIS_LNG                                   */
/*==============================================================*/
create table T_R_LANGUEAVIS_LNG (
   LNG_ID               numeric(3)           identity,
   LNG_LIBELLE          varchar(20)          not null,
   constraint PK_T_R_LANGUEAVIS_LNG primary key (LNG_ID)
)
go

/*==============================================================*/
/* Table : T_R_LIEUALENTOUR_LAL                                 */
/*==============================================================*/
create table T_R_LIEUALENTOUR_LAL (
   LAL_ID               numeric(2)           identity,
   LAL_LIEU             varchar(50)          not null,
   constraint PK_T_R_LIEUALENTOUR_LAL primary key nonclustered (LAL_ID)
)
go

/*==============================================================*/
/* Table : T_R_PAYS_PAY                                         */
/*==============================================================*/
create table T_R_PAYS_PAY (
   PAY_ID               numeric(4)           identity,
   PAY_NOM              varchar(50)          not null,
   constraint PK_T_R_PAYS_PAY primary key nonclustered (PAY_ID)
)
go

/*==============================================================*/
/* Table : T_R_PERIODEVISITE_PER                                */
/*==============================================================*/
create table T_R_PERIODEVISITE_PER (
   PER_ID               numeric(3)           identity,
   PER_MOIS             numeric(2)           not null
      constraint CKC_PER_MOIS_T_R_PERI check (PER_MOIS between 1 and 12),
   PER_ANNEE            numeric(4)           not null,
   constraint PK_T_R_PERIODEVISITE_PER primary key nonclustered (PER_ID),
   constraint AK_UQ_PER_T_R_PERI unique (PER_MOIS, PER_ANNEE)
)
go

/*==============================================================*/
/* Table : T_R_STYLE_STY                                        */
/*==============================================================*/
create table T_R_STYLE_STY (
   STY_ID               numeric(2)           identity,
   STY_LIBELLE          varchar(50)          not null,
   constraint PK_T_R_STYLE_STY primary key nonclustered (STY_ID)
)
go

/*==============================================================*/
/* Table : T_R_TYPEVISITE_VIS                                   */
/*==============================================================*/
create table T_R_TYPEVISITE_VIS (
   VIS_ID               numeric(2)           identity,
   VIS_LIBELLE          varchar(20)          not null,
   constraint PK_T_R_TYPEVISITE_VIS primary key nonclustered (VIS_ID)
)
go

/*==============================================================*/
/* Table : T_R_WIFI_WIF                                         */
/*==============================================================*/
create table T_R_WIFI_WIF (
   WIF_ID               numeric(1)           identity,
   WIF_LIBELLE          varchar(20)          not null,
   constraint PK_T_R_WIFI_WIF primary key nonclustered (WIF_ID)
)
go

alter table T_E_ABONNE_ABO
   add constraint FK_ABO_IND foreign key (IND_INDICATIF)
      references T_R_INDICATIFTEL_IND (IND_INDICATIF)
go

alter table T_E_ABONNE_ABO
   add constraint FK_ABO_PAY foreign key (PAY_ID)
      references T_R_PAYS_PAY (PAY_ID)
go

alter table T_E_ALIAS_ALI
   add constraint FK_ALI_HOT foreign key (HOT_ID)
      references T_E_HOTEL_HOT (HOT_ID)
go

alter table T_E_AVIS_AVI
   add constraint FK_AVI_VIS foreign key (VIS_ID)
      references T_R_TYPEVISITE_VIS (VIS_ID)
go

alter table T_E_AVIS_AVI
   add constraint FK_T_E_AVIS_REFERENCE_T_R_PERI foreign key (PER_ID)
      references T_R_PERIODEVISITE_PER (PER_ID)
go

alter table T_E_AVIS_AVI
   add constraint FK_AVI_ABO foreign key (ABO_ID)
      references T_E_ABONNE_ABO (ABO_ID)
go

alter table T_E_AVIS_AVI
   add constraint FK_AVI_HOT foreign key (HOT_ID)
      references T_E_HOTEL_HOT (HOT_ID)
go

alter table T_E_AVIS_AVI
   add constraint FK_AVI_WIF foreign key (WIF_ID)
      references T_R_WIFI_WIF (WIF_ID)
go

alter table T_E_AVIS_AVI
   add constraint FK_T_E_AVIS_REFERENCE_T_R_LANG foreign key (LNG_ID)
      references T_R_LANGUEAVIS_LNG (LNG_ID)
go

alter table T_E_HOTELIER_HTR
   add constraint FK_T_E_HOTE_REFERENCE_T_R_PAYS foreign key (PAY_ID)
      references T_R_PAYS_PAY (PAY_ID)
go

alter table T_E_HOTEL_HOT
   add constraint FK_HOT_IND foreign key (IND_INDICATIF)
      references T_R_INDICATIFTEL_IND (IND_INDICATIF)
go

alter table T_E_HOTEL_HOT
   add constraint FK_HOT_PAY foreign key (PAY_ID)
      references T_R_PAYS_PAY (PAY_ID)
go

alter table T_E_HOTEL_HOT
   add constraint FK_T_E_HOTE_REFERENCE_T_E_HOTE foreign key (HTR_ID)
      references T_E_HOTELIER_HTR (HTR_ID)
go

alter table T_E_HOTEL_HOT
   add constraint FK_HOT_PRX foreign key (PRX_ID)
      references T_R_FOURCHETTEPRIX_PRX (PRX_ID)
go

alter table T_E_HOTEL_HOT
   add constraint FK_HOT_CAT foreign key (CAT_NBETOILES)
      references T_R_CATEGORIEHOTEL_CAT (CAT_NBETOILES)
go

alter table T_E_PHOTO_PHO
   add constraint FK_PHO_AVI foreign key (AVI_ID)
      references T_E_AVIS_AVI (AVI_ID)
go

alter table T_E_PHOTO_PHO
   add constraint FK_PHO_HOT foreign key (HOT_ID)
      references T_E_HOTEL_HOT (HOT_ID)
go

alter table T_E_REPONSEAVIS_REP
   add constraint FK_T_E_REPO_REFERENCE_T_E_AVIS foreign key (AVI_ID)
      references T_E_AVIS_AVI (AVI_ID)
go

alter table T_J_EQUIPEMENTHOTEL_EQH
   add constraint FK_EQH_EQU foreign key (EQU_ID)
      references T_R_EQUIPEMENT_EQU (EQU_ID)
go

alter table T_J_EQUIPEMENTHOTEL_EQH
   add constraint FK_EQH_HOT foreign key (HOT_ID)
      references T_E_HOTEL_HOT (HOT_ID)
go

alter table T_J_FAVORI_FAV
   add constraint FK_T_J_FAVO_REFERENCE_T_E_ABON foreign key (ABO_ID)
      references T_E_ABONNE_ABO (ABO_ID)
go

alter table T_J_FAVORI_FAV
   add constraint FK_T_J_FAVO_REFERENCE_T_E_HOTE foreign key (HOT_ID)
      references T_E_HOTEL_HOT (HOT_ID)
go

alter table T_J_HOTELSIMILAIRE_HOS
   add constraint FK_HOS_HOT1 foreign key (HOT_ID)
      references T_E_HOTEL_HOT (HOT_ID)
go

alter table T_J_HOTELSIMILAIRE_HOS
   add constraint FK_HOS_HOT2 foreign key (HOT_IDSIMILAIRE)
      references T_E_HOTEL_HOT (HOT_ID)
go

alter table T_J_LIEUALENTOURAVIS_LAA
   add constraint FK_LAA_LAL foreign key (LAL_ID)
      references T_R_LIEUALENTOUR_LAL (LAL_ID)
go

alter table T_J_LIEUALENTOURAVIS_LAA
   add constraint FK_LAA_AVI foreign key (AVI_ID)
      references T_E_AVIS_AVI (AVI_ID)
go

alter table T_J_STYLEAVIS_STA
   add constraint FK_STA_AVI foreign key (AVI_ID)
      references T_E_AVIS_AVI (AVI_ID)
go

alter table T_J_STYLEAVIS_STA
   add constraint FK_STA_STY foreign key (STY_ID)
      references T_R_STYLE_STY (STY_ID)
go

alter table T_J_UTILITE_UTI
   add constraint FK_UTI_AVI foreign key (AVI_ID)
      references T_E_AVIS_AVI (AVI_ID)
go

alter table T_J_UTILITE_UTI
   add constraint FK_UTI_ABO foreign key (ABO_ID)
      references T_E_ABONNE_ABO (ABO_ID)
go


/*==============================================================*/
/* INSERT                    */
/*==============================================================*/

Insert into t_r_typevisite_vis(vis_libelle) values('En couple');
Insert into t_r_typevisite_vis(vis_libelle) values('En famille');
Insert into t_r_typevisite_vis(vis_libelle) values('Amis');
Insert into t_r_typevisite_vis(vis_libelle) values('Affaires');
Insert into t_r_typevisite_vis(vis_libelle) values('Voyage solo');

Insert into t_r_indicatiftel_ind values(1);
Insert into t_r_indicatiftel_ind values(7);
Insert into t_r_indicatiftel_ind values(20);
Insert into t_r_indicatiftel_ind values(27);
Insert into t_r_indicatiftel_ind values(30);
Insert into t_r_indicatiftel_ind values(31);
Insert into t_r_indicatiftel_ind values(32);
Insert into t_r_indicatiftel_ind values(33);
Insert into t_r_indicatiftel_ind values(34);
Insert into t_r_indicatiftel_ind values(36);
Insert into t_r_indicatiftel_ind values(39);
Insert into t_r_indicatiftel_ind values(40);
Insert into t_r_indicatiftel_ind values(41);
Insert into t_r_indicatiftel_ind values(43);
Insert into t_r_indicatiftel_ind values(44);
Insert into t_r_indicatiftel_ind values(45);
Insert into t_r_indicatiftel_ind values(46);
Insert into t_r_indicatiftel_ind values(47);
Insert into t_r_indicatiftel_ind values(48);
Insert into t_r_indicatiftel_ind values(49);
Insert into t_r_indicatiftel_ind values(51);
Insert into t_r_indicatiftel_ind values(52);
Insert into t_r_indicatiftel_ind values(53);
Insert into t_r_indicatiftel_ind values(54);
Insert into t_r_indicatiftel_ind values(55);
Insert into t_r_indicatiftel_ind values(56);
Insert into t_r_indicatiftel_ind values(57);
Insert into t_r_indicatiftel_ind values(58);
Insert into t_r_indicatiftel_ind values(60);
Insert into t_r_indicatiftel_ind values(61);
Insert into t_r_indicatiftel_ind values(62);
Insert into t_r_indicatiftel_ind values(63);
Insert into t_r_indicatiftel_ind values(64);
Insert into t_r_indicatiftel_ind values(65);
Insert into t_r_indicatiftel_ind values(66);
Insert into t_r_indicatiftel_ind values(81);
Insert into t_r_indicatiftel_ind values(82);
Insert into t_r_indicatiftel_ind values(84);
Insert into t_r_indicatiftel_ind values(86);
Insert into t_r_indicatiftel_ind values(90);
Insert into t_r_indicatiftel_ind values(91);
Insert into t_r_indicatiftel_ind values(92);
Insert into t_r_indicatiftel_ind values(93);
Insert into t_r_indicatiftel_ind values(94);
Insert into t_r_indicatiftel_ind values(95);
Insert into t_r_indicatiftel_ind values(98);
Insert into t_r_indicatiftel_ind values(211);
Insert into t_r_indicatiftel_ind values(212);
Insert into t_r_indicatiftel_ind values(213);
Insert into t_r_indicatiftel_ind values(216);
Insert into t_r_indicatiftel_ind values(218);
Insert into t_r_indicatiftel_ind values(220);
Insert into t_r_indicatiftel_ind values(221);
Insert into t_r_indicatiftel_ind values(222);
Insert into t_r_indicatiftel_ind values(223);
Insert into t_r_indicatiftel_ind values(224);
Insert into t_r_indicatiftel_ind values(225);
Insert into t_r_indicatiftel_ind values(226);
Insert into t_r_indicatiftel_ind values(227);
Insert into t_r_indicatiftel_ind values(228);
Insert into t_r_indicatiftel_ind values(229);
Insert into t_r_indicatiftel_ind values(230);
Insert into t_r_indicatiftel_ind values(231);
Insert into t_r_indicatiftel_ind values(232);
Insert into t_r_indicatiftel_ind values(233);
Insert into t_r_indicatiftel_ind values(234);
Insert into t_r_indicatiftel_ind values(235);
Insert into t_r_indicatiftel_ind values(236);
Insert into t_r_indicatiftel_ind values(237);
Insert into t_r_indicatiftel_ind values(238);
Insert into t_r_indicatiftel_ind values(239);
Insert into t_r_indicatiftel_ind values(240);
Insert into t_r_indicatiftel_ind values(241);
Insert into t_r_indicatiftel_ind values(242);
Insert into t_r_indicatiftel_ind values(243);
Insert into t_r_indicatiftel_ind values(244);
Insert into t_r_indicatiftel_ind values(245);
Insert into t_r_indicatiftel_ind values(246);
Insert into t_r_indicatiftel_ind values(247);
Insert into t_r_indicatiftel_ind values(248);
Insert into t_r_indicatiftel_ind values(249);
Insert into t_r_indicatiftel_ind values(250);
Insert into t_r_indicatiftel_ind values(251);
Insert into t_r_indicatiftel_ind values(252);
Insert into t_r_indicatiftel_ind values(253);
Insert into t_r_indicatiftel_ind values(254);
Insert into t_r_indicatiftel_ind values(255);
Insert into t_r_indicatiftel_ind values(256);
Insert into t_r_indicatiftel_ind values(257);
Insert into t_r_indicatiftel_ind values(258);
Insert into t_r_indicatiftel_ind values(260);
Insert into t_r_indicatiftel_ind values(261);
Insert into t_r_indicatiftel_ind values(262);
Insert into t_r_indicatiftel_ind values(263);
Insert into t_r_indicatiftel_ind values(264);
Insert into t_r_indicatiftel_ind values(265);
Insert into t_r_indicatiftel_ind values(266);
Insert into t_r_indicatiftel_ind values(267);
Insert into t_r_indicatiftel_ind values(268);
Insert into t_r_indicatiftel_ind values(269);
Insert into t_r_indicatiftel_ind values(290);
Insert into t_r_indicatiftel_ind values(291);
Insert into t_r_indicatiftel_ind values(297);
Insert into t_r_indicatiftel_ind values(298);
Insert into t_r_indicatiftel_ind values(299);
Insert into t_r_indicatiftel_ind values(350);
Insert into t_r_indicatiftel_ind values(351);
Insert into t_r_indicatiftel_ind values(352);
Insert into t_r_indicatiftel_ind values(353);
Insert into t_r_indicatiftel_ind values(354);
Insert into t_r_indicatiftel_ind values(355);
Insert into t_r_indicatiftel_ind values(356);
Insert into t_r_indicatiftel_ind values(357);
Insert into t_r_indicatiftel_ind values(358);
Insert into t_r_indicatiftel_ind values(359);
Insert into t_r_indicatiftel_ind values(370);
Insert into t_r_indicatiftel_ind values(371);
Insert into t_r_indicatiftel_ind values(372);
Insert into t_r_indicatiftel_ind values(373);
Insert into t_r_indicatiftel_ind values(374);
Insert into t_r_indicatiftel_ind values(375);
Insert into t_r_indicatiftel_ind values(376);
Insert into t_r_indicatiftel_ind values(377);
Insert into t_r_indicatiftel_ind values(378);
Insert into t_r_indicatiftel_ind values(379);
Insert into t_r_indicatiftel_ind values(380);
Insert into t_r_indicatiftel_ind values(381);
Insert into t_r_indicatiftel_ind values(382);
Insert into t_r_indicatiftel_ind values(385);
Insert into t_r_indicatiftel_ind values(386);
Insert into t_r_indicatiftel_ind values(387);
Insert into t_r_indicatiftel_ind values(389);
Insert into t_r_indicatiftel_ind values(420);
Insert into t_r_indicatiftel_ind values(421);
Insert into t_r_indicatiftel_ind values(423);
Insert into t_r_indicatiftel_ind values(500);
Insert into t_r_indicatiftel_ind values(501);
Insert into t_r_indicatiftel_ind values(502);
Insert into t_r_indicatiftel_ind values(503);
Insert into t_r_indicatiftel_ind values(504);
Insert into t_r_indicatiftel_ind values(505);
Insert into t_r_indicatiftel_ind values(506);
Insert into t_r_indicatiftel_ind values(507);
Insert into t_r_indicatiftel_ind values(508);
Insert into t_r_indicatiftel_ind values(509);
Insert into t_r_indicatiftel_ind values(590);
Insert into t_r_indicatiftel_ind values(591);
Insert into t_r_indicatiftel_ind values(592);
Insert into t_r_indicatiftel_ind values(593);
Insert into t_r_indicatiftel_ind values(594);
Insert into t_r_indicatiftel_ind values(595);
Insert into t_r_indicatiftel_ind values(596);
Insert into t_r_indicatiftel_ind values(597);
Insert into t_r_indicatiftel_ind values(598);
Insert into t_r_indicatiftel_ind values(599);
Insert into t_r_indicatiftel_ind values(670);
Insert into t_r_indicatiftel_ind values(672);
Insert into t_r_indicatiftel_ind values(673);
Insert into t_r_indicatiftel_ind values(674);
Insert into t_r_indicatiftel_ind values(675);
Insert into t_r_indicatiftel_ind values(676);
Insert into t_r_indicatiftel_ind values(677);
Insert into t_r_indicatiftel_ind values(678);
Insert into t_r_indicatiftel_ind values(679);
Insert into t_r_indicatiftel_ind values(680);
Insert into t_r_indicatiftel_ind values(681);
Insert into t_r_indicatiftel_ind values(682);
Insert into t_r_indicatiftel_ind values(683);
Insert into t_r_indicatiftel_ind values(685);
Insert into t_r_indicatiftel_ind values(686);
Insert into t_r_indicatiftel_ind values(687);
Insert into t_r_indicatiftel_ind values(688);
Insert into t_r_indicatiftel_ind values(689);
Insert into t_r_indicatiftel_ind values(690);
Insert into t_r_indicatiftel_ind values(691);
Insert into t_r_indicatiftel_ind values(692);
Insert into t_r_indicatiftel_ind values(850);
Insert into t_r_indicatiftel_ind values(852);
Insert into t_r_indicatiftel_ind values(853);
Insert into t_r_indicatiftel_ind values(855);
Insert into t_r_indicatiftel_ind values(856);
Insert into t_r_indicatiftel_ind values(880);
Insert into t_r_indicatiftel_ind values(886);
Insert into t_r_indicatiftel_ind values(960);
Insert into t_r_indicatiftel_ind values(961);
Insert into t_r_indicatiftel_ind values(962);
Insert into t_r_indicatiftel_ind values(963);
Insert into t_r_indicatiftel_ind values(964);
Insert into t_r_indicatiftel_ind values(965);
Insert into t_r_indicatiftel_ind values(966);
Insert into t_r_indicatiftel_ind values(967);
Insert into t_r_indicatiftel_ind values(968);
Insert into t_r_indicatiftel_ind values(970);
Insert into t_r_indicatiftel_ind values(971);
Insert into t_r_indicatiftel_ind values(972);
Insert into t_r_indicatiftel_ind values(973);
Insert into t_r_indicatiftel_ind values(974);
Insert into t_r_indicatiftel_ind values(975);
Insert into t_r_indicatiftel_ind values(976);
Insert into t_r_indicatiftel_ind values(977);
Insert into t_r_indicatiftel_ind values(992);
Insert into t_r_indicatiftel_ind values(993);
Insert into t_r_indicatiftel_ind values(994);
Insert into t_r_indicatiftel_ind values(995);
Insert into t_r_indicatiftel_ind values(996);
Insert into t_r_indicatiftel_ind values(998);
Insert into t_r_indicatiftel_ind values(1242);
Insert into t_r_indicatiftel_ind values(1246);
Insert into t_r_indicatiftel_ind values(1264);
Insert into t_r_indicatiftel_ind values(1268);
Insert into t_r_indicatiftel_ind values(1284);
Insert into t_r_indicatiftel_ind values(1340);
Insert into t_r_indicatiftel_ind values(1345);
Insert into t_r_indicatiftel_ind values(1441);
Insert into t_r_indicatiftel_ind values(1473);
Insert into t_r_indicatiftel_ind values(1649);
Insert into t_r_indicatiftel_ind values(1664);
Insert into t_r_indicatiftel_ind values(1670);
Insert into t_r_indicatiftel_ind values(1671);
Insert into t_r_indicatiftel_ind values(1684);
Insert into t_r_indicatiftel_ind values(1721);
Insert into t_r_indicatiftel_ind values(1758);
Insert into t_r_indicatiftel_ind values(1767);
Insert into t_r_indicatiftel_ind values(1784);
Insert into t_r_indicatiftel_ind values(1868);
Insert into t_r_indicatiftel_ind values(1869);
Insert into t_r_indicatiftel_ind values(1876);

Insert into t_r_pays_pay(pay_nom) values('Afghanistan');
Insert into t_r_pays_pay(pay_nom) values('Afrique du Sud');
Insert into t_r_pays_pay(pay_nom) values('Albanie');
Insert into t_r_pays_pay(pay_nom) values('Algérie');
Insert into t_r_pays_pay(pay_nom) values('Allemagne');
Insert into t_r_pays_pay(pay_nom) values('Angola');
Insert into t_r_pays_pay(pay_nom) values('Antigua-et-Barbuda');
Insert into t_r_pays_pay(pay_nom) values('Arabie saoudite');
Insert into t_r_pays_pay(pay_nom) values('Argentine');
Insert into t_r_pays_pay(pay_nom) values('Arménie');
Insert into t_r_pays_pay(pay_nom) values('Australie');
Insert into t_r_pays_pay(pay_nom) values('Autriche');
Insert into t_r_pays_pay(pay_nom) values('Azerbaïdjan');
Insert into t_r_pays_pay(pay_nom) values('Bahamas');
Insert into t_r_pays_pay(pay_nom) values('Bahreïn');
Insert into t_r_pays_pay(pay_nom) values('Bangladesh');
Insert into t_r_pays_pay(pay_nom) values('Barbade');
Insert into t_r_pays_pay(pay_nom) values('Belau');
Insert into t_r_pays_pay(pay_nom) values('Belgique');
Insert into t_r_pays_pay(pay_nom) values('Belize');
Insert into t_r_pays_pay(pay_nom) values('Bénin');
Insert into t_r_pays_pay(pay_nom) values('Bhoutan');
Insert into t_r_pays_pay(pay_nom) values('Biélorussie');
Insert into t_r_pays_pay(pay_nom) values('Birmanie');
Insert into t_r_pays_pay(pay_nom) values('Bolivie');
Insert into t_r_pays_pay(pay_nom) values('Bosnie-Herzégovine');
Insert into t_r_pays_pay(pay_nom) values('Botswana');
Insert into t_r_pays_pay(pay_nom) values('Brésil');
Insert into t_r_pays_pay(pay_nom) values('Brunei');
Insert into t_r_pays_pay(pay_nom) values('Bulgarie');
Insert into t_r_pays_pay(pay_nom) values('Burkina');
Insert into t_r_pays_pay(pay_nom) values('Burundi');
Insert into t_r_pays_pay(pay_nom) values('Cambodge');
Insert into t_r_pays_pay(pay_nom) values('Cameroun');
Insert into t_r_pays_pay(pay_nom) values('Canada');
Insert into t_r_pays_pay(pay_nom) values('Cap-Vert');
Insert into t_r_pays_pay(pay_nom) values('Chili');
Insert into t_r_pays_pay(pay_nom) values('Chine');
Insert into t_r_pays_pay(pay_nom) values('Chypre');
Insert into t_r_pays_pay(pay_nom) values('Colombie');
Insert into t_r_pays_pay(pay_nom) values('Comores');
Insert into t_r_pays_pay(pay_nom) values('Congo');
Insert into t_r_pays_pay(pay_nom) values('Cook');
Insert into t_r_pays_pay(pay_nom) values('Corée du Nord');
Insert into t_r_pays_pay(pay_nom) values('Corée du Sud');
Insert into t_r_pays_pay(pay_nom) values('Costa Rica');
Insert into t_r_pays_pay(pay_nom) values('Côte d''Ivoire');
Insert into t_r_pays_pay(pay_nom) values('Croatie');
Insert into t_r_pays_pay(pay_nom) values('Cuba');
Insert into t_r_pays_pay(pay_nom) values('Danemark');
Insert into t_r_pays_pay(pay_nom) values('Djibouti');
Insert into t_r_pays_pay(pay_nom) values('Dominique');
Insert into t_r_pays_pay(pay_nom) values('Écosse');
Insert into t_r_pays_pay(pay_nom) values('Égypte');
Insert into t_r_pays_pay(pay_nom) values('Émirats arabes unis');
Insert into t_r_pays_pay(pay_nom) values('Équateur');
Insert into t_r_pays_pay(pay_nom) values('Érythrée');
Insert into t_r_pays_pay(pay_nom) values('Espagne');
Insert into t_r_pays_pay(pay_nom) values('Estonie');
Insert into t_r_pays_pay(pay_nom) values('États-Unis');
Insert into t_r_pays_pay(pay_nom) values('Éthiopie');
Insert into t_r_pays_pay(pay_nom) values('Fidji');
Insert into t_r_pays_pay(pay_nom) values('Finlande');
Insert into t_r_pays_pay(pay_nom) values('France');
Insert into t_r_pays_pay(pay_nom) values('Gabon');
Insert into t_r_pays_pay(pay_nom) values('Gambie');
Insert into t_r_pays_pay(pay_nom) values('Géorgie');
Insert into t_r_pays_pay(pay_nom) values('Ghana');
Insert into t_r_pays_pay(pay_nom) values('Grèce');
Insert into t_r_pays_pay(pay_nom) values('Grenade');
Insert into t_r_pays_pay(pay_nom) values('Guatemala');
Insert into t_r_pays_pay(pay_nom) values('Guinée');
Insert into t_r_pays_pay(pay_nom) values('Guinée-Bissao');
Insert into t_r_pays_pay(pay_nom) values('Guinée équatoriale');
Insert into t_r_pays_pay(pay_nom) values('Guyana');
Insert into t_r_pays_pay(pay_nom) values('Haïti');
Insert into t_r_pays_pay(pay_nom) values('Honduras');
Insert into t_r_pays_pay(pay_nom) values('Hongrie');
Insert into t_r_pays_pay(pay_nom) values('Inde');
Insert into t_r_pays_pay(pay_nom) values('Indonésie');
Insert into t_r_pays_pay(pay_nom) values('Iran');
Insert into t_r_pays_pay(pay_nom) values('Irak');
Insert into t_r_pays_pay(pay_nom) values('Irlande');
Insert into t_r_pays_pay(pay_nom) values('Islande');
Insert into t_r_pays_pay(pay_nom) values('Israël');
Insert into t_r_pays_pay(pay_nom) values('Italie');
Insert into t_r_pays_pay(pay_nom) values('Jamaïque');
Insert into t_r_pays_pay(pay_nom) values('Japon');
Insert into t_r_pays_pay(pay_nom) values('Jordanie');
Insert into t_r_pays_pay(pay_nom) values('Kazakhstan');
Insert into t_r_pays_pay(pay_nom) values('Kenya');
Insert into t_r_pays_pay(pay_nom) values('Kirghizistan');
Insert into t_r_pays_pay(pay_nom) values('Kiribati');
Insert into t_r_pays_pay(pay_nom) values('Koweït');
Insert into t_r_pays_pay(pay_nom) values('Laos');
Insert into t_r_pays_pay(pay_nom) values('Lesotho');
Insert into t_r_pays_pay(pay_nom) values('Lettonie');
Insert into t_r_pays_pay(pay_nom) values('Liban');
Insert into t_r_pays_pay(pay_nom) values('Liberia');
Insert into t_r_pays_pay(pay_nom) values('Libye');
Insert into t_r_pays_pay(pay_nom) values('Liechtenstein');
Insert into t_r_pays_pay(pay_nom) values('Lituanie');
Insert into t_r_pays_pay(pay_nom) values('Luxembourg');
Insert into t_r_pays_pay(pay_nom) values('Macédoine');
Insert into t_r_pays_pay(pay_nom) values('Madagascar');
Insert into t_r_pays_pay(pay_nom) values('Malaisie');
Insert into t_r_pays_pay(pay_nom) values('Malawi');
Insert into t_r_pays_pay(pay_nom) values('Maldives');
Insert into t_r_pays_pay(pay_nom) values('Mali');
Insert into t_r_pays_pay(pay_nom) values('Malte');
Insert into t_r_pays_pay(pay_nom) values('Maroc');
Insert into t_r_pays_pay(pay_nom) values('Marshall');
Insert into t_r_pays_pay(pay_nom) values('Maurice');
Insert into t_r_pays_pay(pay_nom) values('Mauritanie');
Insert into t_r_pays_pay(pay_nom) values('Mexique');
Insert into t_r_pays_pay(pay_nom) values('Micronésie');
Insert into t_r_pays_pay(pay_nom) values('Moldavie');
Insert into t_r_pays_pay(pay_nom) values('Monaco');
Insert into t_r_pays_pay(pay_nom) values('Mongolie');
Insert into t_r_pays_pay(pay_nom) values('Mozambique');
Insert into t_r_pays_pay(pay_nom) values('Namibie');
Insert into t_r_pays_pay(pay_nom) values('Nauru');
Insert into t_r_pays_pay(pay_nom) values('Népal');
Insert into t_r_pays_pay(pay_nom) values('Nicaragua');
Insert into t_r_pays_pay(pay_nom) values('Niger');
Insert into t_r_pays_pay(pay_nom) values('Nigeria');
Insert into t_r_pays_pay(pay_nom) values('Niue');
Insert into t_r_pays_pay(pay_nom) values('Norvège');
Insert into t_r_pays_pay(pay_nom) values('Nouvelle-Zélande');
Insert into t_r_pays_pay(pay_nom) values('Oman');
Insert into t_r_pays_pay(pay_nom) values('Ouganda');
Insert into t_r_pays_pay(pay_nom) values('Ouzbékistan');
Insert into t_r_pays_pay(pay_nom) values('Pakistan');
Insert into t_r_pays_pay(pay_nom) values('Palestine');
Insert into t_r_pays_pay(pay_nom) values('Panama');
Insert into t_r_pays_pay(pay_nom) values('Papouasie - Nouvelle Guinée');
Insert into t_r_pays_pay(pay_nom) values('Paraguay');
Insert into t_r_pays_pay(pay_nom) values('Pays-Bas');
Insert into t_r_pays_pay(pay_nom) values('Pérou');
Insert into t_r_pays_pay(pay_nom) values('Philippines');
Insert into t_r_pays_pay(pay_nom) values('Pologne');
Insert into t_r_pays_pay(pay_nom) values('Portugal');
Insert into t_r_pays_pay(pay_nom) values('Qatar');
Insert into t_r_pays_pay(pay_nom) values('République centrafricaine');
Insert into t_r_pays_pay(pay_nom) values('République démocratique du Congo');
Insert into t_r_pays_pay(pay_nom) values('République dominicaine');
Insert into t_r_pays_pay(pay_nom) values('République tchèque');
Insert into t_r_pays_pay(pay_nom) values('Roumanie');
Insert into t_r_pays_pay(pay_nom) values('Royaume-Uni');
Insert into t_r_pays_pay(pay_nom) values('Russie');
Insert into t_r_pays_pay(pay_nom) values('Rwanda');
Insert into t_r_pays_pay(pay_nom) values('Saint-Christophe-et-Niévès');
Insert into t_r_pays_pay(pay_nom) values('Sainte-Lucie');
Insert into t_r_pays_pay(pay_nom) values('Saint-Marin');
Insert into t_r_pays_pay(pay_nom) values('Saint-Siège');
Insert into t_r_pays_pay(pay_nom) values('Saint-Vincent-et-les-Grenadine');
Insert into t_r_pays_pay(pay_nom) values('Salomon');
Insert into t_r_pays_pay(pay_nom) values('Salvador');
Insert into t_r_pays_pay(pay_nom) values('Samoa occidentales');
Insert into t_r_pays_pay(pay_nom) values('Sao Tomé-et-Principe');
Insert into t_r_pays_pay(pay_nom) values('Sénégal');
Insert into t_r_pays_pay(pay_nom) values('Seychelles');
Insert into t_r_pays_pay(pay_nom) values('Sierra Leone');
Insert into t_r_pays_pay(pay_nom) values('Singapour');
Insert into t_r_pays_pay(pay_nom) values('Slovaquie');
Insert into t_r_pays_pay(pay_nom) values('Slovénie');
Insert into t_r_pays_pay(pay_nom) values('Somalie');
Insert into t_r_pays_pay(pay_nom) values('Soudan');
Insert into t_r_pays_pay(pay_nom) values('Sri Lanka');
Insert into t_r_pays_pay(pay_nom) values('Suède');
Insert into t_r_pays_pay(pay_nom) values('Suisse');
Insert into t_r_pays_pay(pay_nom) values('Suriname');
Insert into t_r_pays_pay(pay_nom) values('Swaziland');
Insert into t_r_pays_pay(pay_nom) values('Syrie');
Insert into t_r_pays_pay(pay_nom) values('Tadjikistan');
Insert into t_r_pays_pay(pay_nom) values('Tanzanie');
Insert into t_r_pays_pay(pay_nom) values('Tchad');
Insert into t_r_pays_pay(pay_nom) values('Thaïlande');
Insert into t_r_pays_pay(pay_nom) values('Togo');
Insert into t_r_pays_pay(pay_nom) values('Tonga');
Insert into t_r_pays_pay(pay_nom) values('Trinité-et-Tobago');
Insert into t_r_pays_pay(pay_nom) values('Tunisie');
Insert into t_r_pays_pay(pay_nom) values('Turkménistan');
Insert into t_r_pays_pay(pay_nom) values('Turquie');
Insert into t_r_pays_pay(pay_nom) values('Tuvalu');
Insert into t_r_pays_pay(pay_nom) values('Ukraine');
Insert into t_r_pays_pay(pay_nom) values('Uruguay');
Insert into t_r_pays_pay(pay_nom) values('Vanuatu');
Insert into t_r_pays_pay(pay_nom) values('Venezuela');
Insert into t_r_pays_pay(pay_nom) values('Viêt Nam');
Insert into t_r_pays_pay(pay_nom) values('Yémen');
Insert into t_r_pays_pay(pay_nom) values('Yougoslavie');
Insert into t_r_pays_pay(pay_nom) values('Zambie');
Insert into t_r_pays_pay(pay_nom) values('Zimbabwe');

insert into t_r_equipement_equ(equ_libelle) values('Internet Haut débit gratuit');
insert into t_r_equipement_equ(equ_libelle) values('Service en chambre');
insert into t_r_equipement_equ(equ_libelle) values('Piscine');
insert into t_r_equipement_equ(equ_libelle) values('Restaurant');
insert into t_r_equipement_equ(equ_libelle) values('Suites');
insert into t_r_equipement_equ(equ_libelle) values('Accès handicapés');
insert into t_r_equipement_equ(equ_libelle) values('Bar/lounge');
insert into t_r_equipement_equ(equ_libelle) values('Kitchenette');
insert into t_r_equipement_equ(equ_libelle) values('Centre d''affaires avec accès Internet');
insert into t_r_equipement_equ(equ_libelle) values('Parking gratuit');
insert into t_r_equipement_equ(equ_libelle) values('Animaux domestiques autorisés');
insert into t_r_equipement_equ(equ_libelle) values('Service d''autobus');
insert into t_r_equipement_equ(equ_libelle) values('Navette aéroport');
insert into t_r_equipement_equ(equ_libelle) values('Casino et jeux d''argent');
insert into t_r_equipement_equ(equ_libelle) values('Plage');
insert into t_r_equipement_equ(equ_libelle) values('Centre de remise en forme');

Insert into t_r_periodevisite_per(per_mois, per_annee) values(1, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(2, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(3, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(4, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(5, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(6, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(7, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(8, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(9, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(10, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(11, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(12, 2010);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(1, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(2, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(3, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(4, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(5, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(6, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(7, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(8, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(9, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(10, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(11, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(12, 2011);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(1, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(2, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(3, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(4, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(5, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(6, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(7, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(8, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(9, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(10, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(11, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(12, 2012);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(1, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(2, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(3, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(4, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(5, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(6, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(7, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(8, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(9, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(10, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(11, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(12, 2013);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(1, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(2, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(3, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(4, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(5, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(6, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(7, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(8, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(9, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(10, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(11, 2014);
Insert into t_r_periodevisite_per(per_mois, per_annee) values(12, 2014);

Insert into t_r_categoriehotel_cat(cat_nbetoiles) values(1);
Insert into t_r_categoriehotel_cat(cat_nbetoiles) values(2);
Insert into t_r_categoriehotel_cat(cat_nbetoiles) values(3);
Insert into t_r_categoriehotel_cat(cat_nbetoiles) values(4);
Insert into t_r_categoriehotel_cat(cat_nbetoiles) values(5);

Insert into t_r_fourchetteprix_prx(prx_fourchette) values ('0€ - 52€');
Insert into t_r_fourchetteprix_prx(prx_fourchette) values ('52€ - 117€');
Insert into t_r_fourchetteprix_prx(prx_fourchette) values ('117€ - 169€');
Insert into t_r_fourchetteprix_prx(prx_fourchette) values ('169 €+');

Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Jean-Michel', 'info', 'jean-michel.aulas@gmail.com', 'AULAS', 'Jean-Michel', '10 Avenue Général Frère', '69008', 'Lyon', 64, 45.729394, 4.879395, 33, '401020304', 'Lyon');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Yohann', 'info', 'yohann.gourcuf@gmail.com', 'GOURCUF', 'Yohann', 'Rue Maryse Bastié', '69500', 'Bron', 64, 45.726888, 4.922322, 33, '401020305', 'Lyon');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Tony', 'info', 'tony.parker@gmail.com', 'PARKER', 'Tony', '3 rue du 8 mai 1945', '69100', 'Villeurbanne', 64, 45.781412, 4.891292, 33, '401020305', 'Lyon');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Juninho', 'info', 'juninho.pernambucano@gmail.com', 'PERNAMBUCANO', 'Juninho', '10 rue des 3 Rois', '69007', 'Lyon', 64, 45.75398, 4.842775, 33, '401020305', 'Lyon');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Homer', 'info', 'homer.simpson@gmail.com', 'SIMPSON', 'Homer', '11 rue Sommeiller', '74000', 'Annecy', 64, 45.902126, 6.123754, 33, '450010203', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Marge', 'info', 'marge.simpson@gmail.com', 'SIMPSON', 'Marge', '11 rue Sommeiller', '74000', 'Annecy', 64, 45.902126, 6.123754, 33, '450010204', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Matt', 'info', 'matt.groening@gmail.com', 'GROENING', 'Matt', '9 rue de l''Arc en Ciel', '74940', 'Annecy Le Vieux', 64, 45.921153, 6.153794, 33, '450010205', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Bart', 'info', 'moe.szyslak@gmail.com', 'SZYSLAK', 'Moe', '5 Chemin de Bellevue', '74940', 'Annecy Le Vieux', 64, 45.920254, 6.16188, 33, '450010206', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Bob', 'info', 'bart.simpson@gmail.com', 'SIMPSON', 'Bart', 'Chef-Lieu', '74150', 'Vaulx', 64, 45.885129, 5.94805, 33, '450010207', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Joe', 'info', 'bob.leponge@gmail.com', 'LEPONGE', 'Bob', '50 route de Poisy', '74330', 'Lovagny', 64, 45.903805, 6.031961, 33, '450010208', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Jeff', 'info', 'joe.quimby@gmail.com', 'QUIMBY', 'Joe', 'Place Gabriel Fauré', '74940', 'Annecy le Vieux', 64, 45.91972, 6.142131, 33, '450010209', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Barney', 'info', 'jeff.albertson@gmail.com', 'ALBERTSON', 'Jeff', 'Place de la Navigation 2', '1201', 'Genève', 171, 46.211399, 6.14983, 41, '227354438', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Mel', 'info', 'barney.gumble@gmail.com', 'GUMBLE', 'Barney', '21, quai des Bergues', '1201', 'Genève', 171, 46.20615, 6.14461, 41, '227354439', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Mel', 'info', 'mel.sideshow@gmail.com', 'SIDESHOW', 'Mel', 'Route de la Galaise 8', '1228', 'Plan-les-Ouates', 171, 46.164563, 6.105927, 41, '227354440', 'Genève');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Winnie', 'info', 'winnie.lourson@gmail.com', 'LOURSON', 'Winnie', 'Kornhausstrasse 3', '3000', 'Bern', 171, 46.95303, 7.44966, 41, '227354441', 'Zurich');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Candy', 'info', 'candy.crush@gmail.com', 'CRUSH', 'Candy', 'Zeughausgasse 41', '3000', 'Bern', 171, 46.949089, 7.44456, 41, '227354442', 'Zurich');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Capitaine', 'info', 'capitaine.flam@gmail.com', 'FLAM', 'Capitaine', 'Claridenstrasse 30', '8022', 'Zurich', 171, 47.367611, 8.53718, 41, '227354443', 'Zurich');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Ken', 'info', 'ken.lesurvivant@gmail.com', 'LESURVIVANT', 'Ken', 'Weinbergstrasse 92', '8006', 'Zurich', 171, 47.384696, 8.542859, 41, '227354444', 'Zurich');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Mario', 'info', 'mario.bros@gmail.com', 'BROS', 'Mario', 'Via Di Ripetta 231', '00186', 'Roma', 86, 41.908498, 12.476017, 39, '677261658', 'Roma');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Luigi', 'info', 'luigi.bros@gmail.com', 'BROS', 'Luigi', 'Via del Pellegrino 122', '00186', 'Roma', 86, 41.89702, 12.470217, 39, '677261659', 'Roma');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Peach', 'info', 'peach.princesse@gmail.com', 'PRINCESSE', 'Peach', 'Via V. Veneto 155', '00187', 'Roma', 86, 41.908244, 12.489189, 39, '677261660', 'Roma');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Diddy', 'info', 'diddy.kong@gmail.com', 'KONG', 'Diddy', 'Via Mario De Fiori 93', '00187', 'Roma', 86, 41.904565, 12.481899, 39, '677261661', 'Roma');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('William', 'info', 'william.decambridge@gmail.com', 'DE CAMBRIDGE', 'William', '22 Portman Square', 'W1H 7BG ', 'London', 149, 51.516231, -0.157945, 44, '2073887666', 'London');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Kate', 'info', 'kate.middleton@gmail.com', 'MIDDLETON', 'Kate', 'A41 Watford Bypass', 'WD25 8JH', 'Watford', 149, 51.657604, -0.349246, 44, '2073887667', 'London');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Pippa', 'info', 'pippa.middleton@gmail.com', 'MIDDLETON', 'Pippa', '19 Bridle Path', 'WD17 1UE', 'Watford', 149, 51.664622, -0.398241, 44, '2073887668', 'London');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('George', 'info', 'george.decambridge@gmail.com', 'DE CAMBRIDGE', 'George', 'Primrose Hill Rd', 'NW3 3NA', 'London', 149, 51.544239, -0.162251, 44, '2073887669', 'London');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Frank', 'info', 'frank.ribbery@gmail.com', 'RIBBERY', 'Frank', 'Gabriele-Tergit-Promenade 19', '10963', 'Berlin', 5, 52.504639, 13.374837, 49, '304172400', 'Berlin');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Benoit', 'info', 'benoit.treize@gmail.com', 'TREIZE', 'Benoit', 'Landsberger Allee 106', '10369', 'Berlin', 5, 52.528562, 13.457339, 49, '304172401', 'Berlin');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Angela', 'info', 'angela.merkel@gmail.com', 'MERKEL', 'Angela', 'Wittenbergplatz 5', '10789', 'Berlin', 5, 52.502727, 13.343332, 49, '304172402', 'Berlin');
Insert into t_e_abonne_abo(abo_pseudo, abo_motpasse, abo_mel, abo_nom, abo_prenom, abo_adrligne1, abo_cp, abo_ville, pay_id, abo_latitude, abo_longitude, ind_indicatif, abo_tel, abo_aeroport) values('Rainer', 'info', 'rainer.wolfcastle@gmail.com', 'WOLFCASTLE', 'Rainer', 'Charlottenstrasse 49', '10117', 'Berlin', 5, 52.515126, 13.390790, 49, '304172403', 'Berlin');

Insert into T_E_HOTELIER_HTR (HTR_MEL, HTR_MOTPASSE, HTR_NOM, HTR_PRENOM, HTR_ADRLIGNE1, HTR_ADRLIGNE2, HTR_CP, HTR_VILLE, HTR_ETAT, PAY_ID) values('rotschild@gmail.com', 'info', 'ROTSCHILD', 'Jean-Michel', '9 rue de l''Arc en Ciel', null, '74940', 'Annecyle-Vieux', null, 64);
Insert into T_E_HOTELIER_HTR (HTR_MEL, HTR_MOTPASSE, HTR_NOM, HTR_PRENOM, HTR_ADRLIGNE1, HTR_ADRLIGNE2, HTR_CP, HTR_VILLE, HTR_ETAT, PAY_ID) values('cresus@gmail.com', 'info', 'CRESUS', 'Paul', '9 rue de l''Arc en Ciel', null, '74940', 'Annecyle-Vieux', null, 64);

Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(4, 1, 4, 'Le Clos des Sens', 'Certificat d''excellence 2014', '13 Rue Jean Mermoz', '74940', 'Annecy-le-Vieux', 64, 45.917074, 6.14548, 33, '450230790', 'http://www.closdessens.com', 'closdessens@gmail.com', 10);
Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(2, 1, 2, 'La Mascotte', 'Hotel et chambres d''hotes', '20 rue capitaine Baud', '74940', 'Annecy-le-Vieux', 64, 45.915593, 6.149578, 33, '450230791', null, 'mascotte@gmail.com', null);
Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(3, 1, 3, 'Le Flamboyant', null, '52 Rue des Mouettes', '74940', 'Annecy-le-Vieux', 64, 45.912214, 6.154846, 33, '450230792', null, 'flamboyant@gmail.com', 31);
Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(1, 2, 2, 'Hotel IBIS Budget', 'Des chambres pour 3 à partir de 40 euros', '11 rue centrale', '74940', 'Annecy-le-Vieux', 64, 45.907181, 6.150237, 33, '450230793', null, 'ibis-annecy@gmail.com', 55);
Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(2, 2, 2, 'Hotel IBIS', null, '11 rue de Lachat ', '74940', 'Annecy-le-Vieux', 64, 45.921256, 6.145531, 34, '450230794', null, 'ibis-annecy@gmail.com', null);
Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(2, 2, 2, 'Hotel l''Arc en Ciel', null, '27 Avenue Petit Port', '74940', 'Annecy-le-Vieux', 64, 45.905246, 6.15071, 34, '450230795', null, 'arc-en-ciel@gmail.com', null);
Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(2, 2, 2, 'Marina Bay', null, '9 Rue des Ecoles', '74940', 'Annecy-le-Vieux', 64, 45.9119, 6.144095, 34, '450230796', null, 'marina-bay@gmail.com', 38);
Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(2, 1, 2, 'Novel', null, '59 Avenue Petit Port', '74940', 'Annecy-le-Vieux', 64, 45.905913, 6.154789, 34, '450230797', null, 'hotel-novel@gmail.com', null);
Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(2, 1, 2, 'Alpha', null, '12 Rue Centrale', '74940', 'Annecy-le-Vieux', 64, 45.90651, 6.146369, 34, '450230798', null, 'hotel-alpha@gmail.com', null);
Insert into t_e_hotel_hot(prx_id, htr_id, cat_nbetoiles, hot_nom, hot_description, hot_adrligne1, hot_cp, hot_ville, pay_id, hot_latitude, hot_longitude, ind_indicatif, hot_tel, hot_siteweb, hot_mel, hot_nbchambres) values(3, 1, 3, 'Au faisan doré', null, '13, rue Centrale', '74940', 'Annecy-le-Vieux', 64, 45.907181, 6.150237, 34, '450230799', null, 'aufaisan@gmail.com', null);
 
Insert into t_j_equipementhotel_eqh values(1, 1);
Insert into t_j_equipementhotel_eqh values(1, 2);
Insert into t_j_equipementhotel_eqh values(1, 3);
Insert into t_j_equipementhotel_eqh values(1, 4);
Insert into t_j_equipementhotel_eqh values(1, 5);
Insert into t_j_equipementhotel_eqh values(1, 6);
Insert into t_j_equipementhotel_eqh values(3, 7);
Insert into t_j_equipementhotel_eqh values(3, 1);
Insert into t_j_equipementhotel_eqh values(3, 8);
Insert into t_j_equipementhotel_eqh values(3, 9);
Insert into t_j_equipementhotel_eqh values(3, 2);
Insert into t_j_equipementhotel_eqh values(3, 11);
Insert into t_j_equipementhotel_eqh values(7, 7);
Insert into t_j_equipementhotel_eqh values(7, 10);
Insert into t_j_equipementhotel_eqh values(7, 2);
Insert into t_j_equipementhotel_eqh values(7, 1);
Insert into t_j_equipementhotel_eqh values(7, 4);

Insert into t_e_alias_ali(hot_id, ali_intitule) values(1, 'Le Clos Des Sens Annecy');
Insert into t_e_alias_ali(hot_id, ali_intitule) values(1, 'Clos Sens Hotel Annecy');
Insert into t_e_alias_ali(hot_id, ali_intitule) values(1, 'Annecy Clos Des Sens');
Insert into t_e_alias_ali(hot_id, ali_intitule) values(1, 'Clos Des Sens Hotel Annecy');
Insert into t_e_alias_ali(hot_id, ali_intitule) values(1, 'Clos Sens Annecy');
Insert into t_e_alias_ali(hot_id, ali_intitule) values(1, 'Hotel Clos Des Sens Annecy');
Insert into t_e_alias_ali(hot_id, ali_intitule) values(1, 'Clos Des Sens Annecy-Le-Vieux');
Insert into t_e_alias_ali(hot_id, ali_intitule) values(2, 'La Mascotte Annecy-Le-Vieux');

Insert into t_j_hotelsimilaire_hos values(1, 3);
Insert into t_j_hotelsimilaire_hos values(1, 10);
Insert into t_j_hotelsimilaire_hos values(3, 1);
Insert into t_j_hotelsimilaire_hos values(3, 10);
Insert into t_j_hotelsimilaire_hos values(10, 1);
Insert into t_j_hotelsimilaire_hos values(10, 3);

Insert into t_r_wifi_wif(wif_libelle) values('Oui, Wifi gratuit');
Insert into t_r_wifi_wif(wif_libelle) values('Oui, en supplément');
Insert into t_r_wifi_wif(wif_libelle) values('Pas de Wifi');
Insert into t_r_wifi_wif(wif_libelle) values('NSP');

insert into t_r_langueavis_lng(lng_libelle) values ('English');
insert into t_r_langueavis_lng(lng_libelle) values ('Français');

Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 1, 13, 5, '1/02/11', 1, 'Une pure merveille', 'Terrasse dominant Annecy. S''offrir une soirée dans cet hôtel est une pure merveille.', 5, 5, 5, 5, 'A réserver pour un WE romantique', 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 2, 14, 6, '1/03/11', 1, 'Tout simplement parfait ', 'Nous revenons pour la seconde fois et le charme continue à opérer. Le cadre, l''accueil de tout le personnel attentif et attentionné, contribuent à la magie des lieux.', 5, 4, 4, 4, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 3, 15, 7, '1/04/11', 1, 'Un endroit magique avec vue sur le lac d''Annecy', 'Le clos des sens est un petit hôtel de charme, très cher (mieux vaut se le faire offrir) comprenant une quinzaine de chanbres, chacune particulière dans sa taille et sa décoration, certaines avec jaccuzi, la plupart avec terrasse ou balcon. Les deux chambres étaient magnifiques, très luxueuses. De plus l''hôtel possède un bassin de nage avec chaises longues et un restaurant gastronomique qu''il vaut la peine de découvrir tant par la qualité des mets que leur présentation d''une originalité hors de la norme.', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 4, 16, 1, '1/05/11', 1, 'Weekend magnifique', 'Nous avons réservé une chambre et un dîner au restaurant pour un weekend en couple. La chambre 5, parfaite une immense douche, cheminée au gaz, jacuzzi extra, lit douillet, machine nespresso (dommage qu''il ne propose que 2 dosettes) petit déjeuner servis en chambre sans supplément vraiment copieux, une chambre, une nuit de rêve, la perfection!', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 1, 17, 2, '1/06/11', 1, 'Je préfère le Flamboyant', 'Trop bling bling. Cher pour la qualité de l''hôtel. On entend le bruit des voitures sur la route et la ventilation. Propreté pas toujours impécable', 1, 1, 1, 1, 'Venir avec une autre femme !', 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 2, 18, 3, '1/07/11', 1, 'Toujours une belle adresse', 'Nous sommes retournés pour la six ou septième fois dans ce restaurant et pour la première fois avons réservé une chambre dans la nouvelle aile. Tout a été absolument parfait. La chambre mansardée au dernier étage est grande avec un jacuzzi et une cheminée au gaz... Un vrai rêve pour un weekend en amoureux. ', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 3, 19, 4, '1/08/11', 1, '2 ans de mariage magnifiques !', 'Une chambre parfaite , douillette , un jacuzzi à tomber , une cheminée qui vous met dans l ambiance , une atmosphère cosy ... Tout est la pour une belle soirée en amoureux ... Nous n avons pas eu la chance de goûter au restaurant car fermé ce lundi soir , mais notre délicieux petit déjeuner fait de produits frais et régionaux nous a mis l eau à la bouche !! Nous avons pu profiter d une piscine très agréable , bref un vrai moment de déconnexion .', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 4, 20, 8, '1/09/11', 1, 'Bien mais…', 'Nous avons séjourné pour la première fois dans cet hôtel après un dîner gastronomique. L''accueil est charmant, la visite de la chambre aurait mérité une explication complète du fonctionnement des fenêtres pour obtenir le fameux balcon sans y passer trop de temps. La décoration est très réussie, la chambre est vraiment spacieuse. Il est cependant très dommage que les portes de la salle de bain et des toilettes ne ferment pas correctement (au mieux, se poussent mais ne restent pas en place). Nous avons voulu essayer la baignoire balnéo sous les étoiles mais apparemment, cela faisait longtemps qu''elle n''avait pas servi : odeur de renfermé à l''activation des buses et une mousse plus que douteuse a recouvert la surface de l''eau. Ça gâche un peu le plaisir. La salle de bains est agréable et tout y est.', 4, 4, 4, 4, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 1, 21, 9, '1/10/11', 1, 'Soirée merveilleuse', 'Pour une soirée d''anniversaire, ce fut une réussite complète. Nous avions réservé une chambre pour ne pas subir la pression d''un contrôle potentiel d''alcoolémie. Ceci ne veut pas dire que nous avions l''intention d''abuser mais les limites sont simplement vite atteintes. Notre chambre fut absolument parfaite et je dois préciser que les équipements sont plus que corrects: douche ouverte et vitrée, jacuzzi plaisant, magnifique terrasse. Une literie très bonne. Rien à redire ! Le petit-déjeuner fut aussi une partie de plaisir après une bonne nuit de repos.', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 2, 22, 10, '1/11/11', 1, 'Au top !', 'Un cadre superbe, une chambre magnifique avec un jacuzzi XL et une belle terrasse,une déco sympa, un parking tout proche pour la voiture,un personnel aux petit soins, bref parfait pour une soirée en amoureux ! Un peu cher mais très bon rapport qualité-prix!', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 3, 23, 11, '1/12/11', 1, 'Un moment juste parfait', 'Nous avons passé un moment d''exception .notre première impression a été plus que favorable .l''accueil du directeur efficace ,sobre,et distingué nous a permis de passer une excellente soirée. surprenant un vrai bon moment.', 4, 4, 4, 4, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 4, 24, 5, '1/01/12', 1, 'Moment d''exception', 'Cadre sympa à découvrir. Vue sur le lac de la terrasse, belle piscine..... Accueil très chaleureux et pourtant discret. Table "superbe" à découvrir...et à recommander', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 1, 25, 6, '1/02/12', 1, 'Un hotel qui mérite bien son nom', 'Nous sommes allés dans cet hôtel en famille. Première impression : Un hotel localisé un peu à l''écart d''Annecy, décoré avec goût. Petit plus pour le parasol naturel, un marronnier au milieu des tables dont les branches recouvraient la terrasse en un petit plafond. ', 4, 4, 4, 4, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 2, 26, 7, '1/03/12', 1, 'Très belle découverte', 'Nous sommes venus avec l''offre Sens''As: le dîner avec plusieurs plats, une nuit dans une chambre avec jacuzzi et le petit déjeuner. Nous avons beaucoup apprécié l''expérience ! Le cadre est magnifique, notamment bien sûr les deux marronniers et la vue sublime sur le lac d''Annecy.', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 3, 27, 12, '1/04/12', 1, 'Tous les sens en éveil !', 'Pour nos 7 ans de mariage, nous avons eu droit à la soirée parfaite. Le cadre magnifique (terrasse avec vue sur Annecy le vieux et arbre centenaire au milieu des tables...) y acontribué, mais pas seulement. La cuisine est vraiment orientée sur les sens.', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 4, 28, 13, '1/05/12', 1, 'Le repos absolu', 'Nous avons passé une nuit exceptionnelle dans une chambre où tout est conçu pour la relaxation : douche XXL, baignoire à remous pour deux personnes... Au réveil, ce fut un petit déjeuner d''exception avec des produits locaux tous plus excellents les uns que les autres. Malheureusement, nous n''avons pas pu accéder au restaurant complet ce soir là.', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 1, 29, 14, '1/06/12', 1, 'personnel aux petits soins', 'L''ambiance, l''architecture et la décoration sont déjà à elles seules dignes d''intérêt (je suis sensible à ces détails...) ! Nous avons apprécié la terrasse sous le plafond de marronniers, qui constitue un point de vue en hauteur sur la ville, cadre agréable pour un déjeuner en cas de beau temps.', 4, 4, 4, 4, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 2, 30, 15, '1/07/12', 1, 'exceptionnel !', 'Nous avons été invité à passer un week-end dans ce lieu magique ! Nous ne nous attendions pas à une telle surprise, chaque minute a été un grand moment de plaisir, de détente, de délices... Le diner au restaurant fut un grand moment de découvertes et d''orgasmes gustatifs. La chambre était très cosy et très grand luxe.... jacuzzi, cheminée, douches...', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 3, 31, 16, '1/08/12', 1, 'Génial !!', 'Alors si vous souhaitez vous évader le temps d''une nuit, c''est l''adresse qu''il vous faut !! rien a redire a part, vous aller y prendre goût ! La déco est juste magnifique, le mobilier moderne, la salle de bain... J''en reve encore... ;-)', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 4, 32, 17, '1/09/12', 1, 'A essayer sans hésiter', 'Comme beaucoup d''entre vous, nous avons aussi fêté notre anniversaire de mariage au Clos des Sens. Effectivement, je vous rejoins tous là dessus, les chambres sont d''un charme fou, le jacuzzi est top, je pense que c''est ce qui fait principalement le cachet des chambres. Cheminée non seulement moderne et esthétique mais aussi très efficace.', 4, 4, 4, 4, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 1, 33, 18, '1/10/12', 1, 'excellent', 'Mangnifique hôtel. Grande sallle de bain, superbe décoration. Génial après un très bon dîner. Le petit déjeuner est très copieux et varié. Nous y retournerons.', 4, 4, 4, 4, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 2, 34, 19, '1/11/12', 1, 'Parfait Parfait Parfait !', 'Chambres magnifiquement aménagées, style cosy et moderne. Jacuzzi, cheminée, rien ne manque, tous les détails sont soignés Salle de bains très originale. Couloir de nage dans le jardin pour l''été, très belle terrasse. Accueil chaleureux, service parfait du début à la fin. Petit déjeuner hors normes tant par la qualité que la diversité des mets servis.', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 3, 35, 20, '1/12/12', 1, 'Un moment exceptionnel', 'Dès que nous avons franchi les portes du Clos des Sens, nous avons été chaleureusement accueillis. Un peu comme de vieux amis dont on attend la venue. Toute l''équipe a su s''adapter au changement de dernière minute ( nous avions réservé pour trois et arrivons à six dont un bébé). Nous avons été particulièrement sensibles à l''attention portée à notre fille de neuf mois.', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 4, 36, 21, '1/01/13', 1, 'Très agréable !!!!!!', 'Nous avons passez un excellent moment dans cet hotel. La chambre est magnifique, très bien équipée, décorée avec goût, vue sur lac et montagne, une belle terrasse et surtout la cheminée à l''éthanol avec un jacuzzi au pied du lit. Parfait pour notre anniversaire de mariage !!!', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 1, 37, 22, '1/02/13', 1, 'On ne veut plus partir !', 'Le temps s''arrête lorsque l''on met les pieds dans cette magnifique bâtisse. Une seule chose à faire : profiter d''un accueil délicieux accompagné d''une vue imprenable et d''un décor parfait.', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 2, 38, 5, '1/03/13', 1, 'un week end en amoureux', 'une recette des weekend en amoureux: Annecy et son lac sublime, et une envie de passer un moment en couple inoubliable', 4, 4, 4, 4, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 3, 39, 6, '1/04/13', 1, 'Exceptionnel', 'Un cadre extraordinaire une chambre de rêve pour un prix raisonnable un menu aussi excellent que varié et original, le vin très bien conseillé. Deux petits points noirs mais minimes le service diminue d''efficacité en fin de soirée et pour la réservation je trouve déplacé qu''après avoir réservé par mail et donner un numéro de carte de crédit on vous appelle encore le midi pour vous demander de confirmer votre venue!!!', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 4, 40, 7, '1/05/13', 1, 'Hotel de très belle qualité et un petit déjeuner…', 'Weekend en amoureux tombant par hasard le jour de la fête du Lac, avec accueil, chambre et environnement parfaits. Chambre vaste magnifiquement décorée incluant cheminée et jacuzzi particulièrement agréable surtout après une heure passée dans le splendide couloir de nage. Le repas du soir, menu unique, du fait de la fête du Lac, de belle qualité, un peu décevant dans l''innovation, immédiatement rattrapée par le dessert " blanc presque parfait" surprenant par sa présentation et sa saveur.', 4, 4, 4, 4, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 2, 41, 23, '1/06/13', 1, 'Calme et volupté dans un cadre idyllique.', 'Service courtois et attentionné. Offre Sens''As vraiment attractive. Choix judicieux de vins au verre avec chaque plat proposé par le sommelier. Surprenantes découvertes de crus locaux. Chambre propre et bien aménagée avec jacuzzi et poêle à bois. Chambre confortable, propre et calme. Superbe vue sur le lac d''Annecy et les montagnes environnantes. A recommander : le copieux et succulent petit-déjeuner en chambre ! Premier séjour et certainement pas le dernier !', 5, 5, 5, 5, null, 2);
Insert into t_e_avis_avi(hot_id, vis_id, per_id, abo_id, avi_date, wif_id, avi_titre, avi_detail, avi_noteglobale, avi_notechambres, avi_noteservice, avi_noteproprete, avi_conseil, lng_id) values(1, 2, 42, 24, '1/07/13', 1, 'Mauvais rapport qualité-prix', 'Le lit était particulièrement dur. Etant maniaque, j''ai cherché la poussière et en ai trouvé. Pour le prix, on s''attendrait à bcp mieux. Ce n''est pas du standing de l''impérial', 1, 1, 1, 1, null, 2);

Insert into t_r_style_sty(sty_libelle) values ('Proche centre-ville ?');
Insert into t_r_style_sty(sty_libelle) values ('Hôtel classique ?');
Insert into t_r_style_sty(sty_libelle) values ('Hôtel branché ?');
Insert into t_r_style_sty(sty_libelle) values ('Hôtel pittoresque ?');
Insert into t_r_style_sty(sty_libelle) values ('Hôtel boutique ?');
Insert into t_r_style_sty(sty_libelle) values ('Hôtel avec du charme ?');
Insert into t_r_style_sty(sty_libelle) values ('Hôtel romantique ?');
Insert into t_r_style_sty(sty_libelle) values ('Proche aéroport ?');

Insert into t_r_lieualentour_lal(lal_lieu) values ('Vie nocturne');
Insert into t_r_lieualentour_lal(lal_lieu) values ('Musées');
Insert into t_r_lieualentour_lal(lal_lieu) values ('Restaurants');
Insert into t_r_lieualentour_lal(lal_lieu) values ('Monuments');
Insert into t_r_lieualentour_lal(lal_lieu) values ('Shopping');
Insert into t_r_lieualentour_lal(lal_lieu) values ('Activités de plein air');
Insert into t_r_lieualentour_lal(lal_lieu) values ('Activités pour les enfants');

Insert into t_e_photo_pho(hot_id, avi_id, pho_url) values(1, null, 'images/img1.jpg'); 
Insert into t_e_photo_pho(hot_id, avi_id, pho_url) values(1, null, 'images/img2.jpg'); 
Insert into t_e_photo_pho(hot_id, avi_id, pho_url) values(1, null, 'images/img3.jpg'); 
Insert into t_e_photo_pho(hot_id, avi_id, pho_url) values(null, 1, 'images/img6.jpg'); 

insert into t_j_utilite_uti values (1,1);
insert into t_j_utilite_uti values (2,1);
insert into t_j_utilite_uti values (3,1);
insert into t_j_utilite_uti values (3,2);
insert into t_j_utilite_uti values (4,2);
insert into t_j_utilite_uti values (5,2);
insert into t_j_utilite_uti values (1,2);

Insert into t_j_lieualentouravis_laa values(1, 1); 
Insert into t_j_lieualentouravis_laa values(1, 3); 
Insert into t_j_lieualentouravis_laa values(4, 1); 
Insert into t_j_lieualentouravis_laa values(5, 3); 
Insert into t_j_lieualentouravis_laa values(6, 6); 
Insert into t_j_lieualentouravis_laa values(10, 6); 
Insert into t_j_lieualentouravis_laa values(20, 3); 
Insert into t_j_lieualentouravis_laa values(21, 3); 
Insert into t_j_lieualentouravis_laa values(22, 3); 
Insert into t_j_lieualentouravis_laa values(23, 3); 
Insert into t_j_lieualentouravis_laa values(24, 3); 
Insert into t_j_lieualentouravis_laa values(28, 1); 
Insert into t_j_lieualentouravis_laa values(28, 3); 
Insert into t_j_lieualentouravis_laa values(28, 6); 
Insert into t_j_lieualentouravis_laa values(28, 7); 

Insert into t_j_styleavis_sta values(1, 1, 'Oui');
Insert into t_j_styleavis_sta values(1, 2, 'Non');
Insert into t_j_styleavis_sta values(1, 3, 'Non');
Insert into t_j_styleavis_sta values(1, 4, 'Oui');
Insert into t_j_styleavis_sta values(1, 5, 'Non');
Insert into t_j_styleavis_sta values(1, 6, 'Oui');
Insert into t_j_styleavis_sta values(1, 7, 'Oui');
Insert into t_j_styleavis_sta values(1, 8, 'Non');
Insert into t_j_styleavis_sta values(10, 1, 'Oui'); 
Insert into t_j_styleavis_sta values(10, 2, 'Non'); 
Insert into t_j_styleavis_sta values(10, 3, 'Non'); 
Insert into t_j_styleavis_sta values(10, 4, 'Oui'); 
Insert into t_j_styleavis_sta values(10, 5, 'Non'); 
Insert into t_j_styleavis_sta values(10, 6, 'Oui'); 
Insert into t_j_styleavis_sta values(10, 7, 'Oui'); 
Insert into t_j_styleavis_sta values(10, 8, 'Non'); 

Insert into t_j_favori_fav values(5, 1);
Insert into t_j_favori_fav values(6, 1);
Insert into t_j_favori_fav values(7, 1);
Insert into t_j_favori_fav values(1, 2);
Insert into t_j_favori_fav values(3, 3);
Insert into t_j_favori_fav values(1, 4);
Insert into t_j_favori_fav values(2, 4);
Insert into t_j_favori_fav values(3, 4);
Insert into t_j_favori_fav values(4, 4);
Insert into t_j_favori_fav values(5, 4);
Insert into t_j_favori_fav values(6, 4);
Insert into t_j_favori_fav values(7, 4);
Insert into t_j_favori_fav values(8, 4);