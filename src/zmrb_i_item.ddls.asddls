@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Interface View Item'

define view entity ZMRB_I_ITEM
  as select from zmrb_item

{
      @EndUserText.label: 'Item Id'
  key item_id            as ItemId,

      @EndUserText.label: 'Order Id'
  key order_id           as OrderId,

      @EndUserText.label: 'Item Number'
      item_no            as ItemNumber,

      @EndUserText.label: 'ProductName'
      product_name       as ProductName,

      @EndUserText.label: 'ProductQuantity'
      product_quantity   as ProductQuantity,

      @EndUserText.label: 'ProductUnit'
      product_unit       as ProductUnit,

      @EndUserText.label: 'Created At'
      created_at         as CreatedAt,

      @EndUserText.label: 'Last change at'
      lastchange_at      as LastChangeAt,

      @EndUserText.label: 'Local last change at'
      locallastchange_at as LocalLastChangeAt
}
