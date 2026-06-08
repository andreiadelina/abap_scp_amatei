@AbapCatalog.sqlViewName: 'ZV_CLNTS_LIB_MA'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes Libros'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_b_clnts_lib_ma
  as select from ztb_clnts_lib_ma as _ClientesLibros 
  association [0..*] to z_b_clientes_ma as _Clientes on _ClientesLibros.id_cliente = _Clientes.IdCliente
{
  key id_cliente as IdCliente,
  key id_libro   as IdLibro,
  _Clientes
}
