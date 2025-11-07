CLASS zmrb_rap_dmo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmrb_rap_dmo IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*    READ ENTITIES OF zmrb_c_order
*         ENTITY C_Order
*         EXECUTE sourceResolvedAssociationFn FROM VALUE #( ( %cid             = 'mycid'
*                                                             %param-CustomerId = '9a003045-3dc9-1fd0-a8f3-2fa37e3eb8dd' ) )
*         RESULT DATA(result).
*
*

**********************************************************************
*
* START: Number Range Object
*
**********************************************************************
*    TRY.
*        cl_numberrange_intervals=>create(
*          EXPORTING
*            interval  = VALUE #( ( nrrangenr = '01' fromnumber = '2000000000' tonumber = '2999999999' procind = 'I' ) )
*            object    = 'Z_MRB_ORD'
*          IMPORTING
*            error     = DATA(lv_error)
*            error_inf = DATA(ls_error)
*            error_iv  = DATA(lt_error_iv)
*            warning   = DATA(lv_warning)
*        ).
*      CATCH cx_nr_object_not_found.
*      CATCH cx_number_ranges.
*
*    ENDTRY.

*    COMMIT WORK.

*cl_numberrange_intervals=>

*    cl_numberrange_runtime=>number_get(
*      EXPORTING
**    ignore_buffer     =
*        nr_range_nr       = '01'
*        object            = 'Z_MRB_ORD'
**    quantity          =
**    subobject         =
**    toyear            =
*      IMPORTING
*        number            = DATA(lv_number)
*        returncode        = DATA(lv_returncode)
**    returned_quantity =
*    ).
*CATCH cx_nr_object_not_found.
*CATCH cx_number_ranges.


*    out->write( lv_number ).
  ENDMETHOD.
ENDCLASS.
