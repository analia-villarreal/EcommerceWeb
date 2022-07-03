use master
GO
Create Database eCOMMERCE_DB3
go
use eCOMMERCE_DB3
go
Create Table Usuario(
    ID int not null primary key identity (1, 1),
    usuario varchar(100) not null,
	pass varchar(100) unique not null,
	nombrePersona varchar(100) null,
	apellidoPersona varchar(100) null,
	eMail varchar(100) unique not null,
	idDireccion int null foreign key references Direccion(ID),
	idRol int not null,
	estado bit not null
)
go 
create table Direccion(
	ID int not null primary key identity (1,1),
	nombreCalle varchar(100) not null,
	numeroCalle int not null,
	piso varchar(5) null,
	localidad varchar(100) not null,
	provincia varchar(100) not null,
	codigoPostal varchar(10) not null,
	estado bit not null
)
go
create table Articulo(
	ID int not null primary key identity (1,1),
	nombreArticulo varchar(100) not null,
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
	idEstadoComercial int not null foreign key references EstadoComercial(ID),
	estadoActivo bit not null
)
go
create table Tipo(
	ID int not null primary key identity (1,1),
	nombreTipo varchar(100) not null,
    estadoTipo bit not null
)
go
create table Categoria(
	ID int not null primary key identity (1,1),
	nombreCategoria varchar(100) not null,
    estadoCategoria bit not null
)
go

create table Color(
	ID int not null primary key identity (1,1),
    nombreColor varchar(100) null, 
    estadoColor bit not null
)
go
create table Talle(
	ID int not null primary key identity (1,1),
    nombreTalle varchar(100) null,
    estadoTalle bit not null
)
go
create table Marca(
	ID int not null primary key identity (1,1),
	nombreMarca varchar(100) not null,
    estadoMarca bit not null
)
go
create table Temporada(
	ID int not null primary key identity (1,1),
	nombreTemporada varchar(100) not null,
    estadoTemporada bit not null
)
go
create table EstadoComercial(
	ID int not null primary key identity (1,1),
	nombreEC varchar(100) not null,
    estadoEC bit not null,
)
GO
create table Articulo_Pedido(
	ID int not null primary key identity (1,1),
	IDpedido int not null foreign key references Pedido(ID),
	IDarticulo int not null foreign key references Articulo(ID),
	precio money not null,
	cantidad int not null,
)
go
Create table Pedido(
	ID int not null primary key identity (1,1),
	idUsuario int not null foreign key references Usuario(ID),
	idDireccion int not null foreign key references Direccion(ID),
	idFormaPago int not null foreign key references FormaPago(ID),
	retiraPorSucursal bit not null,
	pagoConfirmado bit not null,
	fechaInicioPedido datetime not null,
	fechaPago datetime null,
	idEnvio int not null foreign key references Envios(ID),
	estado bit not null
)
go
create table Envios(
	ID int not null primary key identity (1,1),
	idUsuario int not null foreign key references Usuario(ID),
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