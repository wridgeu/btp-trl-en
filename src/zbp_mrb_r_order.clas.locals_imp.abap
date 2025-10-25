CLASS lhc_r_order DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS setSemanticKeys FOR DETERMINE ON SAVE
      IMPORTING keys FOR R_Order~setSemanticKeys.

ENDCLASS.

CLASS lhc_r_order IMPLEMENTATION.

  METHOD setSemanticKeys.

    " hardcode for testing until number range obj is set up
    MODIFY ENTITY IN LOCAL MODE zmrb_r_order\\R_Order
        UPDATE FIELDS ( OrderNumber ) WITH VALUE #( ( %tky = keys[ 1 ]-%tky
                                                      OrderNumber = '1234567890'  ) ).

  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
