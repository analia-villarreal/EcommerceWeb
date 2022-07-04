using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio.Models
{
    public class Diccionario
    {
        ///QUERY GENERAL
        public static string LISTAR_X = "select id, @nameX Color from @Xb"; 

        public static string MODIFICAR_X = "update @X set @nameX = @nombre where ID = @ID";

        public static string AGREGAR_X = "insert into @X values (@nombre)";

        public static string ELIMINAR_X = "delete from @X where ID = @ID";

        ///ELEMENTALES PARA USO RECURRENTE

        public static string CONEXION_SERVER = "server=.\\SQLEXPRESS; database=eCOMMERCE_DB3; integrated security=true";

        public static string IMAGE_NOTFOUND = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXJq6u65-ZDLDMCQMHejY3TGV5Vbj-O343pyR1KoVE8lvmTet4TG319R9tPMgSgxKFgjY&usqp=CAU";

        ///PARA MARCAS

        public static string LISTAR_MARCA = "select id, nombreMarca as Marca from Marca";

        public static string MODIFICAR_MARCA = "update Marca set nombreMarca = @nombre where ID= @ID";

        public static string AGREGAR_MARCA = "insert into Marca values (@nombre)";

        public static string ELIMINAR_MARCA = "delete from Marca where ID = @ID";

        ///PARA TALLES

        public static string LISTAR_TALLE = "select id, nombreTalle as Talle from Talle";

        public static string MODIFICAR_TALLE = "update Talle set nombreTalle = @nombre where ID = @ID";

        public static string AGREGAR_TALLE = "insert into Talle values (@nombre)";

        public static string ELIMINAR_TALLE = "delete from Talle where ID = @ID";

        ///PARA CATEGORIAS

        public static string LISTAR_CATEGORIA = "select id, nombreCategoria as Categoria from CATEGORIA";

        public static string MODIFICAR_CATEGORIA = "update Categoria set nombreCategoria = @nombre where ID = @ID";

        public static string AGREGAR_CATEGORIA = "insert into Categoria values (@nombre)";

        public static string ELIMINAR_CATEGORIA = "delete from Categoria where ID = @ID";


        ///PARA COLORES

        public static string LISTAR_COLOR = "SELECT ID, nombreColor as Color from Color";

        public static string MODIFICAR_COLOR = "update Color set nombreColor = @nombre where ID = @ID";

        public static string AGREGAR_COLOR = "insert into Color values (@nombre)";

        public static string ELIMINAR_COLOR = "delete from Color where ID = @ID";


        ///PARA ARTICULOS
        public static string LISTAR_ARTICULOS = "SELECT a.ID,a.nombreArticulo,a.codigo,a.descripcion,a.URLImagen,a.idTipo,ti.nombreTipo as Tipo,a.idColor,co.nombreColor as Color,a.idTalle,t.nombreTalle as Talle,a.idCategoria,c.nombreCategoria as Categoria,a.idMarca,m.nombreMarca as Marca,a.idTemporada,te.nombreTemporada as Temporada,a.descuento,a.precio,a.idEstadoComercial,ec.nombreEC as Estado_Comercial,a.estadoActivo FROM Articulo a,Tipo ti,Color co,Talle t,Categoria c,Marca m,Temporada te,EstadoComercial ec WHERE a.idTipo=ti.ID AND a.idColor=co.ID AND a.idTalle=t.ID AND a.idCategoria=c.ID AND a.idMarca=m.ID AND a.idTemporada=te.ID AND a.idEstadoComercial=ec.ID";

        public static string LISTAR_ARTICULOS_ACTIVOS = "EXEC storedListarActivos1";
       
        public static string MODIFICAR_ARTICULO = "update Articulo set NombreArticulo = @nombre, Descripcion = @descripcion, URLImagen = @URLImagen, idTipo = @idTipo, idColor = @idColor, IdTalle = @IdTalle,  IdCategoria = @IdCategoria, idMarca = @idMarca, idTemporada = @idTemporada, Descuento = @descuento, Precio = @precio, idEstadoComercial = @idEstadoComercial where ID = @ID";
        
        public static string AGREGAR_ARTICULO = "insert into Articulo values (@nombre,@codigo,@URLImagen,@descripcion,@idTipo,@idCategoria,@idColor,@idTalle,@idMarca,@idTemporada,@descuento,@precio,@idEstadoComercial,@estadoActivo)";
        
        public static string BAJA_ARTICULO = "update articulo set estadoActivo = 0 where ID = @ID";
        
        public static string ELIMINAR_ARTICULO = "delete from articulos where ID = @ID";
        
        public static string ALTA_ARTICULO = "update articulos set Estado = 1 where ID = @ID";







        public static string BUSCAR_POR_ID = "select A.ID, A.Codigo, A.Nombre, A.Descripcion, M.Descripcion as Marca, M.Id as IdMarca, C.Descripcion as Categoria, C.Id as IdCategoria, A.ImagenUrl, A.Precio, A.Estado from ARTICULOS A inner join MARCAS M on M.Id = A.IdMarca inner join CATEGORIAS C on C.Id = A.IdCategoria where A.Id = @ID";

        public static string BUSCAR_POR_ID_TIPO = "Select T.Nombre from @aBuscar T where T.ID = @idtipo";

        public static string LISTAR_USUARIOS = "Select T.Nombre from @aBuscar T where T.ID = @idtipo";
    }
}
