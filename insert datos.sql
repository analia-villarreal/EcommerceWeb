SELECT * FROM Articulo

INSERT INTO Categoria (ID)

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


INSERT INTO Tipo (nombre)
VALUES('FEMENINO')
INSERT INTO Tipo (nombre)
VALUES('MASCULINO')
INSERT INTO Tipo (nombre)
VALUES('INFANTIL')

INSERT INTO Subcategoria(talle)
VALUES('28')
INSERT INTO Subcategoria(talle)
VALUES('29')
INSERT INTO Subcategoria(talle)
VALUES('30')
INSERT INTO Subcategoria(talle)
VALUES('31')
INSERT INTO Subcategoria(talle)
VALUES('32')
INSERT INTO Subcategoria(talle)
VALUES('33')
INSERT INTO Subcategoria(talle)
VALUES('34')
INSERT INTO Subcategoria(talle)
VALUES('35')
INSERT INTO Subcategoria(talle)
VALUES('36')
INSERT INTO Subcategoria(talle)
VALUES('37')
INSERT INTO Subcategoria(talle)
VALUES('38')
INSERT INTO Subcategoria(talle)
VALUES('39')
INSERT INTO Subcategoria(talle)
VALUES('40')
INSERT INTO Subcategoria(talle)
VALUES('41')
INSERT INTO Subcategoria(talle)
VALUES('42')
INSERT INTO Subcategoria(talle)
VALUES('43')
INSERT INTO Subcategoria(talle)
VALUES('44')
INSERT INTO Subcategoria(talle)
VALUES('45')

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

INSERT INTO Temporada(nombre)
VALUES('Fall-Winter')
INSERT INTO Temporada(nombre)
VALUES('Spring-Summer')

INSERT INTO Marca(nombre)
VALUES('Propia')

