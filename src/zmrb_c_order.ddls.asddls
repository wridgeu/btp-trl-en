@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Order'
@Metadata.allowExtensions: true
define root view entity ZMRB_C_ORDER
  provider contract transactional_query
  as projection on ZMRB_R_ORDER
  association [1..1] to ZMRB_C_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId
{
  key OrderId,
      CustomerId,
      /* Associations */
      _Customer,
      _Item : redirected to composition child ZMRB_C_ITEM
}
