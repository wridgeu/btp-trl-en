@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Order'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZMRB_C_ORDER
  provider contract transactional_query
  as projection on ZMRB_R_ORDER
{
  key OrderId,
      CustomerId,
      /* Associations */
      _Customer,
      _Item
}
