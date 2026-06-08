@AbapCatalog.sqlViewName: 'ZV_LIBROS_MA'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_b_libros_ma as select from ztb_libros_ma
{
    key id_libro as Id_Libro,
    key bi_categ as Categoria,
    titulo as Titulo,
    autor as Autor,
    editorial as Editorial,
    idioma as Idioma,
    paginas as Paginas,
    precio as Precio,
    moneda as Moneda,
    formato as Formato,
    url as Imagen
}
