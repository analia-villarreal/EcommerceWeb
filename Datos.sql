use eCommerce_DB
go
INSERT INTO Categoria VALUES ('ALPARGATAS')
INSERT INTO Categoria VALUES ('BOTAS')
INSERT INTO Categoria VALUES('ZAPATOS')
INSERT INTO Categoria VALUES('BORCEGOS')
INSERT INTO Categoria VALUES('ZAPATILLAS')
INSERT INTO Categoria VALUES('SANDALIAS')
INSERT INTO Categoria VALUES('ACCESORIOS')
INSERT INTO Categoria VALUES('ZUECOS')

GO
INSERT INTO Tipo (nombre)
VALUES('FEMENINO')
INSERT INTO Tipo (nombre)
VALUES('MASCULINO')
INSERT INTO Tipo (nombre)
VALUES('INFANTIL')
GO

INSERT INTO Subcategoria
VALUES('28','28')
INSERT INTO Subcategoria
VALUES('29','29')
INSERT INTO Subcategoria
VALUES('30','30')
INSERT INTO Subcategoria
VALUES('31','31')
INSERT INTO Subcategoria
VALUES('32','32')
INSERT INTO Subcategoria
VALUES('33','33')
INSERT INTO Subcategoria
VALUES('34','34')
INSERT INTO Subcategoria
VALUES('35','35')
INSERT INTO Subcategoria
VALUES('36','36')
INSERT INTO Subcategoria
VALUES('37','37')
INSERT INTO Subcategoria
VALUES('38','38')
INSERT INTO Subcategoria
VALUES('39','39')
INSERT INTO Subcategoria
VALUES('40','40')
INSERT INTO Subcategoria
VALUES('41','41')
INSERT INTO Subcategoria
VALUES('42','42')
INSERT INTO Subcategoria
VALUES('43','43')
INSERT INTO Subcategoria
VALUES('44','44')
INSERT INTO Subcategoria
VALUES('45','45')

GO

INSERT INTO Estado(nombre)
VALUES('SALE')
INSERT INTO Estado(nombre)
VALUES('HOT SALE')
INSERT INTO Estado(nombre)
VALUES('AGOTADO')
INSERT INTO Estado(nombre)
VALUES('NEW IN')
INSERT INTO Estado(nombre)
VALUES('DISCONTINUADO')
INSERT INTO Estado(nombre)
VALUES('ANULADO')
INSERT INTO Estado(nombre)
VALUES('NORMAL')
GO
INSERT INTO Temporada(nombre)
VALUES('Fall-Winter')
INSERT INTO Temporada(nombre)
VALUES('Spring-Summer')
GO
INSERT INTO Marca(nombre)
VALUES('Propia')
GO
INSERT INTO Direccion VALUES ('Pueyrredon', 1423, 0, 'Jose C Paz', 'Buenos Aires', '1554', 1)
GO
INSERT INTO Usuario VALUES ('tester', '1234', 'Raul', 'Lopez', 'rLopez@gmail.com', 1, 2, 1)
GO
INSERT INTO ROL VALUES ('Invitado'), ('Cliente'), ('Admin') 
GO
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado)
values ('Sandalia','MAS01','Sandalias Reebok Marrones','fotos/Fotos Invierno 2022/Reebok_Marron (1)',2,5,1,1,1,0,3500.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Zapatilla','FEM01','Zapatilla Antonia Negro','fotos/Fotos Invierno 2022/Anonia_Negro (1)',1,5,1,1,1,0,3500.00,7);
INSERT INTO Articulo (nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Zapatilla','FEM02','Zapatilla Antonia Hueso','fotos/Fotos Invierno 2022/Anonia_Hueso (1)',1,5,1,1,1,0,3500.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Zapatilla','FEM03','Zapatilla Antonia Suela','fotos/Fotos Invierno 2022/Anonia_Suela (1)',1,5,1,1,1,0,3500.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Zueco','FEM04','Zueco Bali Negro','fotos/Fotos Invierno 2022/Bali_Negro (1)',1,8,1,1,1,0,3200.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Zueco','FEM05','Zueco Bali Suela','fotos/Fotos Invierno 2022/Bali_Suela (1)',1,8,1,1,1,0,3200.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Zueco','FEM06','Zueco Bali Vison','fotos/Fotos Invierno 2022/Bali_Vison (1)',1,8,1,1,1,0,3200.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Bota','FEM07','Bota Brisa Animal Print','fotos/Fotos Invierno 2022/Brisa_Animal Print (1)',1,1,1,1,1,0,4500.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Bota','FEM08','Bota Brisa Azul','fotos/Fotos Invierno 2022/Brisa_Azul (2)',1,1,1,1,1,0,4500.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Bota','FEM09','Bota Brisa Negro','fotos/Fotos Invierno 2022/Brisa_Negro (1)',1,1,1,1,1,0,4500.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Bota','FEM10','Bota Brisa Verde','fotos/Fotos Invierno 2022/Brisa_Verde',1,1,1,1,1,0,4500.00,7);
INSERT INTO Articulo ( nombre, codigo, descripcion, urlImagen, idTipo, idCategoria,idSubCategoria,idMarca,idTemporada,descuento,precio,estado) values ('Bota','FEM11','Bota Chloe Negro','fotos/Fotos Invierno 2022/Clhoe_Negro (1)',1,1,1,1,1,0,4500.00,7);
