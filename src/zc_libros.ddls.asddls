@AbapCatalog.sqlViewName: 'ZVC_LIBROS_MA'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
@UI.headerInfo: { typeName: 'Libro',
                  typeNamePlural: 'Libros',
                  title: { type: #STANDARD,
                          value: 'Titulo'},
                 description: { type: #STANDARD,
                               value: 'Autor' },
                 imageUrl: 'Imagen'}
   

        
define view zc_libros
  as select from ztb_libros_ma as libros
    inner join   ztb_catego_ma as catego on libros.bi_categ = catego.bi_categ
    left outer join zc_clnts_lib as ventas on libros.id_libro = ventas.id_libro
  association [0..*] to zc_clientes as _Clientes on $projection.Id_Libro = _Clientes.IdLibro

{
  key libros.id_libro as Id_Libro,
      titulo          as Titulo,
      libros.bi_categ as Categoria,
      autor           as Autor,
      editorial       as Editorial,
      idioma          as Idioma,
      paginas         as Paginas,
      @Semantics.amount.currencyCode: 'moneda'
      precio          as Precio,
      case
      when ventas.Ventas < 1 then 0
      when ventas.Ventas = 1 then 1
      when ventas.Ventas = 2 then 2
      when ventas.Ventas > 2 then 3
      else 0
      end as Ventas,
      case ventas.Ventas
      when 0 then ''
      else ''
      end             as Text,
      @Semantics.currencyCode: true
      moneda          as Moneda,
      formato         as Formato,
      descripcion     as Descripcion,
      url             as Imagen,
      _Clientes
}
