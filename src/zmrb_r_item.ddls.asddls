@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Root Entity Item'

define view entity ZMRB_R_ITEM
  as select from ZMRB_I_ITEM

  association to parent ZMRB_R_ORDER as _Order on $projection.OrderId = _Order.OrderId

{
  key ItemId,
  key OrderId,

      ItemNumber,
      ProductName,
      ProductQuantity,
      ProductUnit,
      CreatedAt,
      LastChangeAt,
      LocalLastChangeAt,

      /* Associations */
      _Order
}
