@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Order'
@Metadata.allowExtensions: true
define root view entity ZMRB_C_ORDER
  provider contract transactional_query
  as projection on ZMRB_R_ORDER
{
  key OrderId,
      @UI.lineItem: [{ position: 10 }]
      CustomerId,
      /* Associations */
      _Customer,
      _Item : redirected to composition child ZMRB_C_ITEM
}
