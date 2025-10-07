@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Item'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMRB_C_ITEM
  provider contract transactional_query
  as projection on ZMRB_R_ITEM
{
  key ItemId,
  key OrderId,
      /* Associations */
      _Order
}
