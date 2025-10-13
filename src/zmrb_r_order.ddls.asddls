@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Entity Order'
define root view entity ZMRB_R_ORDER
  as select from ZMRB_I_ORDER
  composition [0..*] of ZMRB_R_ITEM     as _Item
//  association [1..1] to ZMRB_I_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId
{
  key OrderId,
      CustomerId,
      /* Associations */
      _Customer,
      _Item
}
