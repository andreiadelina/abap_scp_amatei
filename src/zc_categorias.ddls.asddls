@AbapCatalog.sqlViewName: 'ZVC_CATEGO_MA'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
@Metadata.ignorePropagatedAnnotations: true
define view zc_categorias as select from ztb_catego_ma
{
    key bi_categ as Categoria,
    descripcion as Descripcion
}
