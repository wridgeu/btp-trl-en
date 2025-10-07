@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Customer'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMRB_I_CUSTOMER
  as select from zmrb_customer
  association [0..*] to ZMRB_I_ORDER as _Orders on $projection.CustomerId = _Orders.CustomerId
{
  key customer_id as CustomerId,
      first_name  as FirstName,
      last_name   as LastName,
      email       as Email,
      _Orders
}
