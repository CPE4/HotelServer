USE [Hotel]
GO

/****** Object:  StoredProcedure [dbo].[Hotel_Update]    Script Date: 22/10/2014 12:39:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Hotel_Update](
	@id numeric(6,0),
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
	UPDATE [dbo].[T_E_HOTEL_HOT]
	SET
		[PRX_ID]=@idPrix,
		[HOT_NOM]=@nom,
		[HOT_DESCRIPTION]=@description,
		[HOT_ADRLIGNE1]=@adrLigne1,
        [HOT_ADRLIGNE2]=@adrLigne2,
 	    [HOT_CP]=@codePostal,
		[HOT_VILLE]=@ville,
		[HOT_ETAT]=@etat,
		[PAY_ID]=@idPays,
		[HOT_LATITUDE]=@latitude,
		[HOT_LONGITUDE]=@longitude,
		[IND_INDICATIF]=@indicatif,
		[CAT_NBETOILES]=@nbEtoiles,
		[HOT_TEL]=@telephone,
		[HOT_MEL]=@mail,
		[HOT_SITEWEB]=@siteWeb,
		[HOT_NBCHAMBRES]=@nbChambres
	WHERE
		[HOT_ID]=@id
END
GO

