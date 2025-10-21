@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Entity Order'
define root view entity ZMRB_R_ORDER
  as select from ZMRB_I_ORDER
  composition [0..*] of ZMRB_R_ITEM as _Item
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
      /* Associations */
      _Customer,
      _Item

      /*

        - nummernkreis
        - item semantic id? determination in item oder auch order?
        - customer in order schöner (Annotations/UI, User flow???)

      */
}
