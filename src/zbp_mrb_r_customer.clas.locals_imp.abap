CLASS lhc_r_customer DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR R_Customer RESULT result.

ENDCLASS.


CLASS lhc_r_customer IMPLEMENTATION.
  METHOD get_instance_features.
*  // mies cringe -
*    result = VALUE #( ( %is_draft = keys[ 1 ]-%is_draft
*                        %key      = keys[ 1 ]-%key
*                        %features-%field = VALUE #( FirstName =  if_abap_behv=>fc-f-read_only
*                                                    LastName =  if_abap_behv=>fc-f-read_only ) ) ).
  ENDMETHOD.
ENDCLASS.

*CLASS lhc_zmrb_r_customer DEFINITION INHERITING FROM cl_abap_behavior_handler.
*
*  PRIVATE SECTION.
*
**    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
**      IMPORTING REQUEST requested_authorizations FOR ZMRB_R_CUSTOMER RESULT result.
*
*ENDCLASS.
*
*CLASS lhc_zmrb_r_customer IMPLEMENTATION.
*
**  METHOD get_global_authorizations.
**    " https://community.sap.com/t5/technology-blog-posts-by-members/abap-rap-global-authorization/ba-p/13558291
**
**    result-%create = if_abap_behv=>auth-allowed.
**    result-%update = if_abap_behv=>auth-allowed.
**    result-%delete = if_abap_behv=>auth-allowed.
**
**  ENDMETHOD.
*
*ENDCLASS.
