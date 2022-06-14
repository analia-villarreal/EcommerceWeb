use master
GO
Create Database eCommerce_DB
go
use eCommerce_DB
go
Create Table Usuario(
    ID bigint not null primary key identity (1, 1),
    nombreUsuario varchar(100) not null,
	contraseñaUsuario varchar(100) unique not null,
	nombrePersona varchar(100) null,
	apellidoPersona varchar(100) null,
	eMail varchar(100) unique not null,
	idDireccion bigint null foreign key references Direccion(ID),
	idRol int not null foreign key references Rol(ID),
	estado bit not null
)
go
create table Rol(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)
go 
create table Direccion(
	ID bigint not null primary key identity (1,1),
	nombreCalle varchar(100) not null,
	numeroCalle bigint not null,
	piso varchar(5) null,
	localidad varchar(100) not null,
	provincia varchar(100) not null,
	codigoPostal varchar(10) not null,
	estado bit not null
)
go
create table Articulo(
	ID bigint not null primary key identity (1,1),
	nombre varchar(100) not null,
    codigo varchar(100) not null,
    URLImagen varchar(500) null,
	descripcion varchar(500) not null,
    idTipo int not null foreign key references Tipo(ID),
	idCategoria int not null foreign key references Categoria(ID),
	idSubcategoria int not null foreign key references Subcategoria(ID),
	idMarca int not null foreign key references Marca(ID),
	idTemporada int not null foreign key references Temporada(ID),
	descuento int null,
	precio money not null,
	estado int not null foreign key references Estado(ID),
)
go
create table Tipo(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table Categoria(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)
go

create table Subcategoria(
	ID int not null primary key identity (1,1),
	talle int not null,
    descripcion varchar(100) null

)

go
create table Marca(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table Temporada(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table Estado(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)

GO

INSERT INTO Categoria (nombre)
VALUES ('BOTAS')
INSERT INTO Categoria (nombre)
VALUES('ZAPATOS')
INSERT INTO Categoria (nombre)
VALUES('BORCEGOS')
INSERT INTO Categoria (nombre)
VALUES('ZAPATILLAS')
INSERT INTO Categoria (nombre)
VALUES('SANDALIAS')
INSERT INTO Categoria (nombre)
VALUES('ACCESORIOS')
INSERT INTO Categoria (nombre)
VALUES('ZUECOS')
GO
SET IDENTITY_INSERT [dbo].[Articulo] ON
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (1,'Zapatilla','FEM01','Zapatilla Antonia Negro','fotos/Fotos Invierno 2022/Anonia_Negro (1)',1,5,1,1,1,0,3500.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (2,'Zapatilla','FEM02','Zapatilla Antonia Hueso','fotos/Fotos Invierno 2022/Anonia_Hueso (1)',1,5,1,1,1,0,3500.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (3,'Zapatilla','FEM03','Zapatilla Antonia Suela','fotos/Fotos Invierno 2022/Anonia_Suela (1)',1,5,1,1,1,0,3500.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (4,'Zueco','FEM04','Zueco Bali Negro','fotos/Fotos Invierno 2022/Bali_Negro (1)',1,8,1,1,1,0,3200.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (5,'Zueco','FEM05','Zueco Bali Suela','fotos/Fotos Invierno 2022/Bali_Suela (1)',1,8,1,1,1,0,3200.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (6,'Zueco','FEM06','Zueco Bali Vison','fotos/Fotos Invierno 2022/Bali_Vison (1)',1,8,1,1,1,0,3200.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (7,'Bota','FEM07','Bota Brisa Animal Print','fotos/Fotos Invierno 2022/Brisa_Animal Print (1)',1,1,1,1,1,0,4500.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (8,'Bota','FEM08','Bota Brisa Azul','fotos/Fotos Invierno 2022/Brisa_Azul (2)',1,1,1,1,1,0,4500.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (9,'Bota','FEM09','Bota Brisa Negro','fotos/Fotos Invierno 2022/Brisa_Negro (1)',1,1,1,1,1,0,4500.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (10,'Bota','FEM10','Bota Brisa Verde','fotos/Fotos Invierno 2022/Brisa_Verde',1,1,1,1,1,0,4500.00,7);
INSERT [dbo].[Articulo] ([ID], [nombre], [codigo], [descripcion], [urlImagen], [idTipo], [idCategoria],[idSubCategoria],[idMarca],[idTemporada],[descuento],[precio],[estado]) values (11,'Bota','FEM11','Bota Chloe Negro','fotos/Fotos Invierno 2022/Clhoe_Negro (1)',1,1,1,1,1,0,4500.00,7);
SET IDENTITY_INSERT [dbo].[Articulo] OFF

GO
INSERT INTO Tipo (nombre)
VALUES('FEMENINO')
INSERT INTO Tipo (nombre)
VALUES('MASCULINO')
INSERT INTO Tipo (nombre)
VALUES('INFANTIL')
GO

select * from Articulo

SET IDENTITY_INSERT [dbo].[Subcategoria] ON
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(1,'28','28')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(2,'29','29')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(3,'30','30')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(4,'31','31')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(5,'32','32')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(6,'33','33')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(7,'34','34')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(8,'35','35')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(9,'36','36')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(10,'37','37')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(11,'38','38')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(12,'39','39')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(13,'40','40')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(14,'41','41')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(15,'42','42')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(16,'43','43')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(17,'44','44')
INSERT INTO Subcategoria(ID,talle,descripcion)
VALUES(18,'45','45')
SET IDENTITY_INSERT [dbo].[Subcategoria] OFF
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
go
create table Articulo_Pedido(
	ID bigint not null primary key identity (1,1),
	IDpedido bigint not null foreign key references Pedido(ID),
	IDarticulo bigint not null foreign key references Articulo(ID),
	precio money not null,
	cantidad int not null,
)
go
Create table Pedido(
	ID bigint not null primary key identity (1,1),
	idUsuario bigint not null foreign key references Usuario(ID),
	idDireccion bigint not null foreign key references Direccion(ID),
	idFormaPago int not null foreign key references FormaPago(ID),
	retiraPorSucursal bit not null,
	pagoConfirmado bit not null,
	fechaInicioPedido datetime not null,
	fechaPago datetime null,
	idEnvio bigint not null foreign key references Envios(ID),
	estado bit not null
)
go
create table Envios(
	ID bigint not null primary key identity (1,1),
	idUsuario bigint not null foreign key references Usuario(ID),
	idFormaEnvio int not null foreign key references FormaEnvio(ID),
	envioConfirmado bit not null,
	estado bit not null,
	fechaEnvioVendedor datetime not null,
	fechaEntrega datetime null
)
go
create table FormaEnvio(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)
go
create table FormaPago(
	ID int not null primary key identity (1,1),
	nombre varchar(100) not null
)

SELECT a.nombre, codigo, a.descripcion, urlImagen, Precio, a.IdMarca, m.nombre as Marca ,a.IdCategoria, c.nombre as Categoria, a.idTipo, t.nombre as Tipo, a.idSubcategoria, sc.talle, a.idTemporada, temp.nombre, descuento, a.estado, e.nombre   FROM Articulo a, Marca m, Categoria c, Estado e, Tipo t , Subcategoria sc, Temporada temp WHERE m.Id = a.IdMarca and c.Id = a.IdCategoria and e.Id = a.estado and sc.Id = a.idSubcategoria and temp.Id = a.idTemporada and t.Id = a.idTipo