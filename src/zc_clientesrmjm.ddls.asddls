@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZC_CLIENTESRMJM
  as select from ztb_clientesrmjm as Clientes
    inner join   ztb_clntslibrmjm as ClientesLibros on ClientesLibros.id_cliente = Clientes.id_cliente
{
  key ClientesLibros.id_libro   as IdLibro,
  key ClientesLibros.id_cliente as IdCliente,
  key Clientes.tipo_acceso      as TipoAcceso,
      Clientes.nombre           as Nombre,
      Clientes.apellidos        as Apellidos,
      Clientes.email            as Email,
      Clientes.url              as Imagen
}
