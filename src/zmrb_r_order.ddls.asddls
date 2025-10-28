@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Root Entity Order'

define root view entity ZMRB_R_ORDER
  as select from ZMRB_I_ORDER

  composition [0..*] of ZMRB_R_ITEM     as _Item
  association [1..1] to ZMRB_R_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId

{
  key OrderId,

      CustomerId,
      OrderNumber,
      CreatedAt,
      CreatedBy,
      LastChangeAt,
      LastChangeBy,
      LocalLastChangeAt,
      OrderDescription,
      //          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMRB_DMY_VRT_ELEM_CAL'
//      cast('' as abap.char(60)) as FirstName,
      /* Associations */
      _Customer,
      _Item
}
