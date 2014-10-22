USE [Hotel]
GO

/****** Object:  StoredProcedure [dbo].[Abonne_Insert]    Script Date: 22/10/2014 09:42:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Abonne_Insert](
    @mail varchar(80),
    @motdepasse varchar(40),
    @nom varchar(50),
    @idPays numeric(4,0),
    @etat varchar(50),
    @ville varchar(50),
    @codePostal varchar(10),
    @adrLigne2 varchar(100),
    @adrLigne1 varchar(100),
	@prenom varchar(50)
)
AS
BEGIN	
	INSERT INTO [dbo].[T_E_ABONNE_ABO]
			   ([ABO_MEL]
			   ,[ABO_MOTPASSE]
			   ,[ABO_NOM]
			   ,[PAY_ID])
			   ,[ABO_ETAT]
			   ,[ABO_VILLE]
			   ,[ABO_CP]
			   ,[ABO_ADRLIGNE2]
			   ,[ABO_ADRLIGNE1]
			   ,[ABO_PRENOM]
		 VALUES
			   (@mail,
			    @motdepasse,
				@nom,
				@idPays,
				@etat,
				@ville,
				@codePostal,
				@adrLigne2,
				@adrLigne1,
				@prenom)

SELECT SCOPE_IDENTITY() AS id
END

GO

