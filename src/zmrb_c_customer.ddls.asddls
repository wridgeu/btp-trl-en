@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Customer'
@Metadata.allowExtensions: true
define root view entity ZMRB_C_CUSTOMER
  provider contract transactional_query
  as projection on ZMRB_R_CUSTOMER
{
  key CustomerId,
      FirstName,
      LastName,
      Email,
      /* Associations */
      _Orders
}
