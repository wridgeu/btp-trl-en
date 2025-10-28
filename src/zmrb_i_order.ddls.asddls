@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Interface View Order'

define view entity ZMRB_I_ORDER
  as select from zmrb_order

  association [1..1] to ZMRB_I_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId

{
      @EndUserText.label: 'Order Id'
  key order_id           as OrderId,

      @EndUserText.label: 'Customer Id'
      /* start suppress warning shlporigin_not_inherited */
      customer_id        as CustomerId,

      /* end suppress warning shlporigin_not_inherited */
      @EndUserText.label: 'Order Number'
      order_no           as OrderNumber,

      @EndUserText.label: 'Order Description'
      order_description  as OrderDescription,

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

      //      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMRB_DMY_VRT_ELEM_CAL'
      //      CAST ('' as abap.char(60) ) as FirstName,

      /* Association */
      _Customer
}
