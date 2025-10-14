@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Order'
define view entity ZMRB_I_ORDER
  as select from zmrb_order

  association [1..1] to ZMRB_I_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId

{
      @EndUserText.label: 'Order Id'
  key order_id    as OrderId,
      @EndUserText.label: 'Customer Id'
      customer_id as CustomerId,

      /* Association */
      _Customer
}
