use eCOMMERCE_DB2
go

EXEC sp_RENAME 'Articulo.nombre' , 'nombreArticulo', 'COLUMN'
EXEC sp_RENAME 'Categoria.nombre' , 'nombreCategoria', 'COLUMN'
EXEC sp_RENAME 'Color.nombre' , 'nombreColor', 'COLUMN'
EXEC sp_RENAME 'Tipo.nombre' , 'nombreTipo', 'COLUMN'
EXEC sp_RENAME 'Marca.nombre' , 'nombreMarca', 'COLUMN'
EXEC sp_RENAME 'Rol.nombre' , 'nombreRol', 'COLUMN'
EXEC sp_RENAME 'Talle.nombre' , 'nombreTalle', 'COLUMN'
EXEC sp_RENAME 'Temporada.nombre' , 'nombreTemporada', 'COLUMN'
EXEC sp_RENAME 'Rol.nombre' , 'nombreRol', 'COLUMN'
EXEC sp_RENAME 'EstadoComercial.nombre' , 'nombreEC', 'COLUMN'