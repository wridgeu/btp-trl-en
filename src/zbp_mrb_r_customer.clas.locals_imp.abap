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
