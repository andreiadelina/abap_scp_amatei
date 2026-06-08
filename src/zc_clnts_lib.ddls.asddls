@AbapCatalog.sqlViewName: 'ZVC_CLNTS_LIB_MA'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ventas'
@Metadata.ignorePropagatedAnnotations: true
define view zc_clnts_lib as select from ztb_clnts_lib_ma
{
 key id_libro,
     count(distinct id_cliente) as Ventas
    
}
group by id_libro
