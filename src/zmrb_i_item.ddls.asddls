@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Item'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZMRB_I_ITEM
  as select from zmrb_item
{
  key item_id  as ItemId,
  key order_id as OrderId
}
