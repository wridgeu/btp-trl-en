@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Item'
define root view entity ZMRB_I_ITEM
  as select from zmrb_item
{
  @EndUserText.label: 'Item Id'
  key item_id  as ItemId,
  @EndUserText.label: 'Order Id'
  key order_id as OrderId
}
