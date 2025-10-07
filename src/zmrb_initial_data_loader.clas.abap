CLASS zmrb_initial_data_loader DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS:
      clear_existing_data,
      create_customers,
      create_orders,
      create_items.

    DATA:
      customer_uuids TYPE TABLE OF sysuuid_x16,
      order_uuids    TYPE TABLE OF sysuuid_x16.
ENDCLASS.

CLASS zmrb_initial_data_loader IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Disclaimer: AI generated
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    out->write( 'Starting data initialization...' ).

    " Clear existing data first
    clear_existing_data( ).
    out->write( 'Existing data cleared.' ).

    " Create customers
    create_customers( ).
    out->write( 'Customers created.' ).

    " Create orders
    create_orders( ).
    out->write( 'Orders created.' ).

    " Create items
    create_items( ).
    out->write( 'Items created.' ).

    out->write( 'Data initialization completed successfully!' ).

  ENDMETHOD.

  METHOD clear_existing_data.
    " Clear in reverse dependency order
    DELETE FROM zmrb_item.
    DELETE FROM zmrb_order.
    DELETE FROM zmrb_customer.
  ENDMETHOD.

  METHOD create_customers.
    DATA: customers TYPE TABLE OF zmrb_customer.

    " Generate customer UUIDs
    DO 5 TIMES.
      APPEND cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ) TO customer_uuids.
    ENDDO.

    " Create customer data
    customers = VALUE #(
      ( client = sy-mandt customer_id = customer_uuids[ 1 ]
        first_name = 'John' last_name = 'Doe' email = 'john.doe@example.com' )
      ( client = sy-mandt customer_id = customer_uuids[ 2 ]
        first_name = 'Jane' last_name = 'Smith' email = 'jane.smith@example.com' )
      ( client = sy-mandt customer_id = customer_uuids[ 3 ]
        first_name = 'Michael' last_name = 'Johnson' email = 'michael.johnson@example.com' )
      ( client = sy-mandt customer_id = customer_uuids[ 4 ]
        first_name = 'Sarah' last_name = 'Wilson' email = 'sarah.wilson@example.com' )
      ( client = sy-mandt customer_id = customer_uuids[ 5 ]
        first_name = 'David' last_name = 'Brown' email = 'david.brown@example.com' )
    ).

    INSERT zmrb_customer FROM TABLE @customers.
  ENDMETHOD.

  METHOD create_orders.
    DATA: orders TYPE TABLE OF zmrb_order.

    " Generate order UUIDs
    DO 8 TIMES.
      APPEND cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ) TO order_uuids.
    ENDDO.

    " Create orders - distribute across customers
    orders = VALUE #(
      ( client = sy-mandt order_id = order_uuids[ 1 ] customer_id = customer_uuids[ 1 ] )
      ( client = sy-mandt order_id = order_uuids[ 2 ] customer_id = customer_uuids[ 1 ] )
      ( client = sy-mandt order_id = order_uuids[ 3 ] customer_id = customer_uuids[ 2 ] )
      ( client = sy-mandt order_id = order_uuids[ 4 ] customer_id = customer_uuids[ 2 ] )
      ( client = sy-mandt order_id = order_uuids[ 5 ] customer_id = customer_uuids[ 3 ] )
      ( client = sy-mandt order_id = order_uuids[ 6 ] customer_id = customer_uuids[ 4 ] )
      ( client = sy-mandt order_id = order_uuids[ 7 ] customer_id = customer_uuids[ 4 ] )
      ( client = sy-mandt order_id = order_uuids[ 8 ] customer_id = customer_uuids[ 5 ] )
    ).

    INSERT zmrb_order FROM TABLE @orders.
  ENDMETHOD.

  METHOD create_items.
    DATA: items TYPE TABLE OF zmrb_item.

    " Create items for orders
    items = VALUE #(
      " Order 1 items
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 1 ] )
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 1 ] )

      " Order 2 items
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 2 ] )

      " Order 3 items
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 3 ] )
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 3 ] )
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 3 ] )

      " Order 4 items
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 4 ] )
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 4 ] )

      " Order 5 items
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 5 ] )

      " Order 6 items
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 6 ] )

      " Order 7 items
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 7 ] )
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 7 ] )

      " Order 8 items
      ( client = sy-mandt
        item_id = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( )
        order_id = order_uuids[ 8 ] )
    ).

    INSERT zmrb_item FROM TABLE @items.
  ENDMETHOD.

ENDCLASS.
