
GO
CREATE PROCEDURE [dbo].[storedListarActivos1]
as begin
SELECT a.ID,a.nombre,a.codigo,a.descripcion,a.URLImagen,a.idTipo,ti.nombre as Tipo,a.idColor,co.nombre as Color,a.idTalle,t.nombre as Talle,a.idCategoria,c.nombre as Categoria,a.idMarca,m.nombre as Marca,a.idTemporada,te.nombre,a.descuento,a.precio,a.idEstadoComercial,ec.nombre as Estado_Comercial,a.estadoActivo
FROM Articulo a,Tipo ti,Color co,Talle t,Categoria c,Marca m,Temporada te,EstadoComercial ec
WHERE a.idTipo=ti.ID AND a.idColor=co.ID AND a.idTalle=t.ID AND a.idCategoria=c.ID AND a.idMarca=m.ID AND a.idTemporada=te.ID AND a.idEstadoComercial=ec.ID AND estadoActivo=1
END
GO
