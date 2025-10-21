@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Entity Customer'
define root view entity ZMRB_R_CUSTOMER
  as select from ZMRB_I_CUSTOMER
  
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
