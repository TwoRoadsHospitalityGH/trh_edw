view: inntopia_dimevent {
  sql_table_name: PRAW_inntopia.dbo.dimevent ;;
    dimension:  EVENTID {
      sql: ${TABLE}.EVENTID ;;
    }
    dimension: SOURCESYSTEMCODE  {
      sql: ${TABLE}.SOURCESYSTEMCODE ;;
    }
    dimension:  SOURCEDESCRIPTION {
    sql: ${TABLE}.SOURCEDESCRIPTION ;;
    }
    dimension:  EVENTKEY {
    sql: ${TABLE}.EVENTKEY ;;
    }
    dimension:  CUSTOMERKEY {
      sql: ${TABLE}.CUSTOMERKEY ;;
    }
    dimension:  FAMILYKEY {
    sql: ${TABLE}.FAMILYKEY ;;
    }
    dimension:  EVENTSTATE {
    sql: ${TABLE}.EVENTSTATE ;;
    }
    dimension:  PURCHASEDATE {
    sql: ${TABLE}.PURCHASEDATE ;;
    }
    dimension:  PURCHASELOCATIONDESCRIPTION {
    sql: ${TABLE}.PURCHASELOCATIONDESCRIPTION ;;
    }
    dimension:  PURCHASELOCATIONTYPE {
    sql: ${TABLE}.PURCHASELOCATIONTYPE ;;
    }
    dimension:  PURCHASERESORTDETAIL {
    sql: ${TABLE}.PURCHASERESORTDETAIL ;;
    }
    dimension:  PURCHASERESORT {
    sql: ${TABLE}.PURCHASERESORT ;;
    }
    dimension:  EVENTDATE {
    sql: ${TABLE}.EVENTDATE ;;
    }
    dimension:  EVENTLOCATIONDESCRIPTION {
    sql: ${TABLE}.EVENTLOCATIONDESCRIPTION ;;
    }
    dimension:  EVENTLOCATIONTYPE {
    sql: ${TABLE}.EVENTLOCATIONTYPE ;;
    }
    dimension:  EVENTRESORTDETAIL {
    sql: ${TABLE}.EVENTRESORTDETAIL ;;
    }
    dimension:  EVENTRESORT {
    sql: ${TABLE}.EVENTRESORT ;;
    }
    dimension:  PRODUCTKEY {
    sql: ${TABLE}.PRODUCTKEY ;;
    }
    dimension:  PRODUCTSOURCESYSTEMKEY {
    sql: ${TABLE}.PRODUCTSOURCESYSTEMKEY ;;
    }
    dimension:  PRODUCTDESCRIPTION {
    sql: ${TABLE}.PRODUCTDESCRIPTION ;;
    }
    dimension:  EVENTAMOUNTLOCAL {
    sql: ${TABLE}.EVENTAMOUNTLOCAL ;;
    }
    dimension:  LOCALCURRENCYCODE {
    sql: ${TABLE}.LOCALCURRENCYCODE ;;
    }
    dimension:  SOURCESYSTEMCUSTOMERKEY {
    sql: ${TABLE}.SOURCESYSTEMCUSTOMERKEY ;;
    }
    dimension:  EVENTBRAND {
    sql: ${TABLE}.EVENTBRAND ;;
    }

  #----------------------------------------------------------------------
  #---measures---
  #----------------------------------------------------------------------



    measure:  EVENTAMOUNT {
      label: "Revenue Amount"
      description: "Event Revenue Amount"
      view_label: "  Measures"
      type: sum
      value_format_name: usd_0
    sql: ${TABLE}.EVENTAMOUNT ;;
    }
    measure:  QUANTITY {
      label: "Room Night"
      description: "Quanity of Room Nights"
      view_label: "  Measures"
      type: sum
    sql: ${TABLE}.QUANTITY ;;
    }
    measure:  ADR {
      label: "ADR"
      description: "Average Daily Rate"
      view_label: "  Measures"
      sql: sum(${TABLE}.EVENTAMOUNT) / sum(${TABLE}.QUANTITY)  ;;
      value_format_name: usd_0
    }
}
