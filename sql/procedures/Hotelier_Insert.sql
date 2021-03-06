USE [Hotel]
GO

CREATE PROCEDURE [dbo].[Hotelier_Insert](
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
	INSERT INTO [dbo].[T_E_HOTELIER_HTR]
			   ([HTR_MEL]
			   ,[HTR_MOTPASSE]
			   ,[HTR_NOM]
			   ,[PAY_ID]
			   ,[HTR_ETAT]
			   ,[HTR_VILLE]
			   ,[HTR_CP]
			   ,[HTR_ADRLIGNE2]
			   ,[HTR_ADRLIGNE1]
			   ,[HTR_PRENOM])
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

