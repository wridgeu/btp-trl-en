@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Customer'
@Metadata.allowExtensions: true
define root view entity ZMRB_C_CUSTOMER
  provider contract transactional_query
  as projection on ZMRB_R_CUSTOMER
  association [0..*] to ZMRB_C_ORDER as _Orders on $projection.CustomerId = _Orders.CustomerId
{
  key CustomerId,
      FirstName,
      LastName,
      Email,
      BirthDate,
      CreatedAt,
      CreatedBy,
      LastChangeAt,
      LastChangeBy,
      LocalLastChangeAt,
      /* Associations */
      _Orders
}
