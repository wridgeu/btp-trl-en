@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Interface View Customer'

define view entity ZMRB_I_CUSTOMER
  as select from zmrb_customer

  association [0..*] to ZMRB_I_ORDER as _Orders on $projection.CustomerId = _Orders.CustomerId

{
      @EndUserText.label: 'Customer Id'
  key customer_id        as CustomerId,

      @EndUserText.label: 'First Name'
      first_name         as FirstName,

      @EndUserText.label: 'Last Name'
      last_name          as LastName,

      @EndUserText.label: 'Email'
      email              as Email,

      @EndUserText.label: 'Birth Date'
      birthdate          as BirthDate,

      @EndUserText.label: 'Created At'
      created_at         as CreatedAt,

      @EndUserText.label: 'Created By'
      created_by         as CreatedBy,

      @EndUserText.label: 'Last change at'
      lastchange_at      as LastChangeAt,

      @EndUserText.label: 'Last change by'
      lastchange_by      as LastChangeBy,

      @EndUserText.label: 'Local last change at'
      locallastchange_at as LocalLastChangeAt,

      _Orders
}
