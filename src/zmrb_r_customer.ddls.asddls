@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Entity Customer'
define root view entity ZMRB_R_CUSTOMER
  as select from ZMRB_I_CUSTOMER
  association [0..*] to ZMRB_I_ORDER as _Orders on $projection.CustomerId = _Orders.CustomerId
{
  key CustomerId,
      FirstName,
      LastName,
      Email,
      /* Associations */
      _Orders
}
