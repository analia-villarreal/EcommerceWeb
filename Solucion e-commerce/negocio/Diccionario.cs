using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class Diccionario
    {
        public static string CONEXION_SERVER = "server=.\\SQLEXPRESS; database=eCOMMERCE_DB_; integrated security=true";

        public static string LISTAR_MARCAS = "select id, descripcion as nombreMarca from MARCAS";

        public static string LISTAR_CATEGORIAS = "select id, descripcion as nombreCategoria from CATEGORIAS";

        public static string LISTAR_ARTICULOS = "SELECT A.ID, A.nombre, A.codigo, A.descripcion, A.URLImagen, A.precio, A.idMarca, M.nombre as Marca, a.idCategoria, C.nombre as Categoria, A.idTipo, T.nombre as Tipo, A.idColor, CO.nombre as Color, A.idTalle, TA.nombre as Talle, A.idTemporada, TE.nombre as Temporada, A.descuento, A.idEstadoComercial, EC.nombre as Estado_Comercial, A.estadoActivo FROM Articulo A, Marca M, Categoria C, EstadoComercial EC, Tipo T, Color CO, Talle TA, Temporada TE WHERE M.ID = A.idMarca AND C.ID = A.idCategoria and EC.ID = A.idEstadoComercial and CO.ID = A.idColor and TA.ID = A.idTalle and TE.ID = A.idTemporada and T.ID = A.idTipo";


        public static string IMAGE_NOTFOUND = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXJq6u65-ZDLDMCQMHejY3TGV5Vbj-O343pyR1KoVE8lvmTet4TG319R9tPMgSgxKFgjY&usqp=CAU";

        public static string MODIFICAR_ARTICULO = "update articulos set Codigo = @codigo, Nombre = @nombre, Descripcion = @descripcion, IdMarca = @IdMarca, IdCategoria = @IdCategoria, ImagenUrl = @imagenUrl, Precio = @precio where ID = @ID";

        public static string AGREGAR_ARTICULO = "insert into articulos values (@id, @codigo, @nombre, @descripcion, @idMarca, @idCategoria, @imagen, @precio, @estado)";

        public static string BAJA_ARTICULO = "update articulos set Estado = 0 where ID = @ID";

        public static string ELIMINAR_ARTICULO = "delete from articulos where ID = @ID";

        public static string ALTA_ARTICULO = "update articulos set Estado = 1 where ID = @ID";

        public static string BUSCAR_POR_ID = "select A.Id, A.Codigo, A.Nombre, A.Descripcion, M.Descripcion as Marca, M.Id as IdMarca, C.Descripcion as Categoria, C.Id as IdCategoria, A.ImagenUrl, A.Precio, A.Estado from ARTICULOS A inner join MARCAS M on M.Id = A.IdMarca inner join CATEGORIAS C on C.Id = A.IdCategoria where A.Id = @ID";

    }
}
