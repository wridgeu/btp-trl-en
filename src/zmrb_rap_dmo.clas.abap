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
*    out->write( result ).
  ENDMETHOD.
ENDCLASS.
