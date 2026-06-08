@AbapCatalog.sqlViewName: 'ZVC_CLIENTES_MA'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@UI.headerInfo : { typeName: 'Cliente',
                   title : { type: #STANDARD,
                             value : 'NombreCompleto'},
                   description: { type: #STANDARD,
                                  value : 'IdCliente' },
                    imageUrl:'Imagen' 
                    }  
                    
define view zc_clientes as select from ztb_clientes_ma as clientes
inner join ztb_clnts_lib_ma as clnts on clnts.id_cliente = clientes.id_cliente

{
 key id_libro            as IdLibro,
 key clientes.id_cliente as IdCliente,
 key tipo_acceso         as Acceso,
     nombre              as Nombre,
     apellidos           as Apellido,
     email               as Email,
     url                 as Imagen,
     concat_with_space( nombre, apellidos, 1 ) as NombreCompleto
     
    
}
