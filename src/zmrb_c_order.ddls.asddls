@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Projection View Order'

@Metadata.allowExtensions: true

define root view entity ZMRB_C_ORDER
  provider contract transactional_query
  as projection on ZMRB_R_ORDER

  association [1..1] to ZMRB_C_CUSTOMER_RESTRICTED as _CustomerRestricted on $projection.CustomerId = _CustomerRestricted.CustomerId
  association [1..1] to ZMRB_C_CUSTOMER            as _CustomerCrossBO    on $projection.CustomerId = _CustomerCrossBO.CustomerId

{
  key     OrderId,

          CustomerId,
          OrderNumber,
          CreatedAt,
          CreatedBy,
          LastChangeAt,
          LastChangeBy,
          LocalLastChangeAt,
          OrderDescription,

          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMRB_DMY_VRT_ELEM_CAL'
  virtual IsCrossBOCustomerHidden : abap_boolean,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMRB_DMY_VRT_ELEM_CAL'
  virtual IsAssocCustomerHidden   : abap_boolean,

          /* Associations */
          _CustomerCrossBO,
          _CustomerRestricted,
          _Customer : redirected to ZMRB_C_CUSTOMER,
          _Item     : redirected to composition child ZMRB_C_ITEM
}
