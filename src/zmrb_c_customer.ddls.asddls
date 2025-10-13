@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Customer'
@Metadata.allowExtensions: true
define root view entity ZMRB_C_CUSTOMER
  provider contract transactional_query
  as projection on ZMRB_R_CUSTOMER
{
  key CustomerId,
      FirstName,
      LastName,
      Email,
      /* Associations */
      _Orders
      // https://help.sap.com/doc/abapdocu_cp_index_htm/CLOUD/en-US/ABENCDS_PV_ASSOC_REDIRECTED.html
}
