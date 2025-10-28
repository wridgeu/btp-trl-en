CLASS zmrb_dmy_vrt_elem_cal DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_sadl_exit .
    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmrb_dmy_vrt_elem_cal IMPLEMENTATION.
  METHOD if_sadl_exit_calc_element_read~calculate.
    DATA my_order TYPE TABLE OF zmrb_c_order.

    my_order = CORRESPONDING #( it_original_data ).
    DATA(customer_id) = my_order[ 1 ]-CustomerId.

    READ ENTITIES OF zmrb_c_customer
         ENTITY C_Customer
         ALL FIELDS WITH VALUE #( ( %is_draft = if_abap_behv=>mk-on
                                    %key-CustomerId = customer_id ) )
         RESULT DATA(lt_customer_draft).

    READ ENTITIES OF zmrb_c_customer
         ENTITY C_Customer
         ALL FIELDS WITH VALUE #( ( %is_draft = if_abap_behv=>mk-off
                                    %key-CustomerId = customer_id ) )
         RESULT DATA(lt_customer).

*    IF lt_customer_draft[ 1 ]-%is_draft = if_abap_behv=>mk-on.
*      my_order[ 1 ]-IsAssocCustomerHidden = abap_true.
*      ct_calculated_data = CORRESPONDING #( my_order ).
*    ELSE.
*      my_order[ 1 ]-IsCrossBOCustomerHidden = abap_true.
*      ct_calculated_data = CORRESPONDING #( my_order ).
*    ENDIF.
  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.

*    et_requested_orig_elements = VALUE #( (  `CUSTOMERID` ) ).

  ENDMETHOD.
ENDCLASS.
