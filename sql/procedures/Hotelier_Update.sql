USE [Hotel]
GO


CREATE PROCEDURE [dbo].[Hotelier_Update](
	@id numeric(6,0),
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
	UPDATE [dbo].[T_E_HOTELIER_HTR]
	SET
		[HTR_MEL]=@mail,
		[HTR_MOTPASSE]=@motdepasse,
		[HTR_NOM]=@nom,
		[PAY_ID]=@idPays,
		[HTR_ETAT]=@etat,
		[HTR_VILLE]=@ville,
		[HTR_CP]=@codePostal,
		[HTR_ADRLIGNE2]=@adrLigne2,
		[HTR_ADRLIGNE1]=@adrLigne1,
		[HTR_PRENOM]=@prenom
	WHERE
		[HTR_ID]=@id
END