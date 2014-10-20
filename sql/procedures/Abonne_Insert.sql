CREATE PROCEDURE Abonne_Insert(
	@pseudo varchar(20),
    @motdepasse varchar(40),
    @mail varchar(80),
    @nom varchar(50),
    @prenom varchar(50),
    @adrLigne1 varchar(100),
    @adrLigne2 varchar(100),
    @codePostal varchar(10),
    @ville varchar(50),
    @etat varchar(50),
    @idPays numeric(4,0),
    @latitude real,
    @longitude real,
    @indicatif numeric(4,0),
    @telephone varchar(15),
    @aeroport varchar(50),
	@id int OUTPUT)
AS
BEGIN	
	DECLARE @CODEERREUR int=0

	INSERT INTO [dbo].[T_E_ABONNE_ABO]
			   ([ABO_PSEUDO]
			   ,[ABO_MOTPASSE]
			   ,[ABO_MEL]
			   ,[ABO_NOM]
			   ,[ABO_PRENOM]
			   ,[ABO_ADRLIGNE1]
			   ,[ABO_ADRLIGNE2]
			   ,[ABO_CP]
			   ,[ABO_VILLE]
			   ,[ABO_ETAT]
			   ,[PAY_ID]
			   ,[ABO_LATITUDE]
			   ,[ABO_LONGITUDE]
			   ,[IND_INDICATIF]
			   ,[ABO_TEL]
			   ,[ABO_AEROPORT])
		 VALUES
			   (@pseudo,
				@motdepasse,
				@mail,
				@nom,
				@prenom,
				@adrLigne1,
				@adrLigne2,
				@codePostal,
				@ville,
				@etat,
				@idPays,
				@latitude,
				@longitude,
				@indicatif,
				@telephone,
				@aeroport)

	SET @CODEERREUR = @@ERROR /*Récupération du numéro d'erreur via la variable d'environnement @@ERROR*/
	
	IF @CODEERREUR<>0
		SET @id=-1
	ELSE
		BEGIN
			/*Récupération de l'identifiant*/
			SELECT @id=@@IDENTITY;
		END
END
GO