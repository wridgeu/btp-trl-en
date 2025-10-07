@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Entity Order'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZMRB_R_ORDER
  as select from ZMRB_I_ORDER
  composition [0..*] of ZMRB_R_ITEM as _Item
{
  key OrderId,
      CustomerId,
      /* Associations */
      _Item
}
