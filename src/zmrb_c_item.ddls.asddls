@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Item'
define view entity ZMRB_C_ITEM
  as projection on ZMRB_R_ITEM
{
  key ItemId,
  key OrderId,
      /* Associations */
      _Order: redirected to parent ZMRB_C_ORDER
}
