@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Order'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMRB_I_ORDER
  as select from zmrb_order
  association [1..1] to ZMRB_I_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId
{
  key order_id             as OrderId,
      _Customer.CustomerId as CustomerId
}
