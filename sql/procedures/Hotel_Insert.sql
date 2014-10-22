USE [Hotel]
GO

/****** Object:  StoredProcedure [dbo].[Abonne_Insert]    Script Date: 22/10/2014 09:42:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Hotel_Insert](
	@idPrix numeric(6,0),
	@idHotelier numeric(6,0),
	@nom varchar(80),
	@description varchar(50),
    @adrLigne1 varchar(100),
    @adrLigne2 varchar(100),
    @etat varchar(50),
	@ville varchar(50),
	@codePostal varchar(10),
    @idPays numeric(4,0),
    @latitude real,
	@indicatif numeric(4,0),
    @longitude real,
	@nbEtoiles numeric(1,0),
    @telephone varchar(15),
	@mail varchar(80),
    @siteWeb varchar(100),
	@nbChambres numeric(3,0)
)
AS
BEGIN	
	INSERT INTO [dbo].[T_E_HOTEL_HOT]
			   ([HTR_ID]
			   ,[PRX_ID]
			   ,[HOT_NOM]
			   ,[HOT_DESCRIPTION]
			   ,[HOT_ADRLIGNE1]
			   ,[HOT_ADRLIGNE2]
			   ,[HOT_CP]
			   ,[HOT_VILLE]
			   ,[HOT_ETAT]
			   ,[PAY_ID]
			   ,[HOT_LATITUDE]
			   ,[HOT_LONGITUDE]
			   ,[IND_INDICATIF]
			   ,[CAT_NBETOILES]
			   ,[HOT_TEL]
			   ,[HOT_MEL]
			   ,[HOT_SITEWEB]
			   ,[HOT_NBCHAMBRES]
			   )
		 VALUES
			   (@idHotelier,
				@idPrix,
				@nom,
				@description,
				@adrLigne1,
				@adrLigne2,
				@codePostal,
				@ville,
				@etat,
				@idPays,
				@latitude,
				@longitude,
				@indicatif,
				@nbEtoiles,
				@telephone,
				@mail,
				@siteWeb,
				@nbChambres)

SELECT SCOPE_IDENTITY() AS id
END

GO

