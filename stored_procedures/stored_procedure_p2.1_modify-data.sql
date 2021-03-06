USE [Biblioteca]
GO
/****** Object:  StoredProcedure [dbo].[modificarLibros]    Script Date: 09-04-22 13:59:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ABRIL BEJARANO
-- Create date: 8/4/22
-- Description:	Modify books
-- =============================================
ALTER PROCEDURE [dbo].[modificarLibros]
	@IdUsuario as int, -- parameters always start with @. it's advisable to use the same names as the parameters of the tables
	@IdLibro as int
AS
BEGIN
	SET NOCOUNT ON;

    update Libros
	set 
		EsActivo = 0, 
		FechaModificacion = GETDATE() -- this sentece is used to set the date automatically
	where	
		IdLibro = @IdLibro

END