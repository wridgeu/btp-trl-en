@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Order'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMRB_I_ORDER
  as select from zmrb_order
{
  key order_id    as OrderId,
      customer_id as CustomerId
}
