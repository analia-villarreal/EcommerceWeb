use master
GO
Create Database eCOMMERCE_DB_
go
use eCOMMERCE_DB_
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
    idColor int not null foreign key references Color(ID),
    idTalle int not null foreign key references Talle(ID),
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

create table Color(
	ID int not null primary key identity (1,1),
    nombre varchar(100) null

)
go
create table Talle(
	ID int not null primary key identity (1,1),
    nombre varchar(100) null

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

SELECT a.nombre, codigo, a.descripcion, urlImagen, Precio, a.IdMarca, m.nombre as Marca ,a.IdCategoria, c.nombre as Categoria, a.idTipo, t.nombre as Tipo, a.idColor, co.nombre as Color,a.idTalle, talle.nombre as Talle, a.idTemporada, temp.nombre as Temporada, descuento, a.estado, e.nombre as Estado  FROM Articulo a, Marca m, Categoria c, Estado e, Tipo t ,Color co, Talle talle, Temporada temp WHERE m.Id = a.IdMarca and c.Id = a.IdCategoria and e.Id = a.estado and co.Id = a.idColor and talle.id = a.idTalle and temp.Id = a.idTemporada and t.Id = a.idTipo

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