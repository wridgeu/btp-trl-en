@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Customer'
define view entity ZMRB_I_CUSTOMER
  as select from zmrb_customer
  association [0..*] to ZMRB_I_ORDER as _Orders on $projection.CustomerId = _Orders.CustomerId
{
  @EndUserText.label: 'Customer Id'
  key customer_id as CustomerId,
      first_name  as FirstName,
      last_name   as LastName,
      email       as Email,
      _Orders
}
