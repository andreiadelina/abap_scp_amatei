@AbapCatalog.sqlViewName: 'ZV_LIB_VEN_MA'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros Ventas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_B_LIBROS_VENTAS_MA as select from  z_b_clnts_lib_ma as _LibrosVendidos 

{
  key IdLibro,
  count( * ) as Ventas_Unicas


} group by IdLibro
