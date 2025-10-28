CLASS lhc_r_order DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS setSemanticKeys FOR DETERMINE ON SAVE
      IMPORTING keys FOR R_Order~setSemanticKeys.
*    METHODS validateCustomer FOR VALIDATE ON SAVE
*      IMPORTING keys FOR R_Order~validateCustomer.

ENDCLASS.

CLASS lhc_r_order IMPLEMENTATION.

  METHOD setSemanticKeys.

    " hardcode for testing until number range obj is set up
    MODIFY ENTITY IN LOCAL MODE zmrb_r_order\\R_Order
        UPDATE FIELDS ( OrderNumber ) WITH VALUE #( ( %tky = keys[ 1 ]-%tky
                                                      OrderNumber = '1234567893'  ) ).

  ENDMETHOD.

*  METHOD validateCustomer.
*    READ ENTITIES OF zmrb_r_order IN LOCAL MODE
*         ENTITY R_Order
*         ALL FIELDS
*         WITH CORRESPONDING #( keys )
*         RESULT DATA(orders).

*    READ ENTITIES OF zmrb_r_order IN LOCAL MODE
*         ENTITY R_Order BY \_Customer
*         ALL FIELDS
*         WITH CORRESPONDING #( orders )
*         " TODO: variable is assigned but never used (ABAP cleaner)
*         RESULT DATA(customer_order_links)
*         FAILED DATA(customer_order_links_failed)
*         REPORTED DATA(customer_order_links_reported).

*    READ ENTITIES OF zmrb_r_customer
*        ENTITY R_Customer
*        ALL FIELDS
*        WITH VALUE #( ( CustomerId = orders[ 1 ]-CustomerId ) )
*    RESULT DATA(customers)
*    FAILED DATA(customers_failed).

*    LOOP AT orders INTO DATA(order).
*      APPEND VALUE #( %tky = order-%tky ) TO failed-r_order.
**      APPEND VALUE #( %tky        = order-%tky
**                      %state_area = 'VALIDATE_CUSTOMER' )
**             TO reported-r_order.
**      APPEND VALUE #( customerid = customers_failed-r_customer[ 1 ]-CustomerId ) TO failed-zmrb_r_customer.
*    ENDLOOP.
*  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
