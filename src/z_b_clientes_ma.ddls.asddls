@AbapCatalog.sqlViewName: 'ZV_CLIENTES_MA'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_b_clientes_ma as select from ztb_clientes_ma
{
    key id_cliente as IdCliente,
    key tipo_acceso as TipoAcceso,
    nombre as Nombre,
    apellidos as Apellidos,
    email as Email,
    url as Url
}
