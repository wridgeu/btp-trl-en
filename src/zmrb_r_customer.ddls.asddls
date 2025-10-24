@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Root Entity Customer'

define root view entity ZMRB_R_CUSTOMER
  as select from ZMRB_I_CUSTOMER

  association [0..*] to ZMRB_R_ORDER as _Orders on $projection.CustomerId = _Orders.CustomerId

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
