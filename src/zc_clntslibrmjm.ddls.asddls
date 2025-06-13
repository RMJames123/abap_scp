@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_CLNTSLIBRMJM
  as select from ztb_clntslibrmjm
{
  key id_libro                     as IdLibro,
      count( distinct id_cliente ) as Ventas
}
group by
  id_libro;
