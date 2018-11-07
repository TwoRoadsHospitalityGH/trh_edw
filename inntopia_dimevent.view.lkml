view: inntopia_dimevent {
  sql_table_name: PRAW_inntopia.dbo.dimevent ;;
    dimension:  EVENTID {
      sql: ${TABLE}.EVENTID ;;
      hidden:  yes
    }
    dimension: SOURCESYSTEMCODE  {
      sql: ${TABLE}.SOURCESYSTEMCODE ;;
      hidden: yes
    }
    dimension:  EVENTKEY {
      sql: ${TABLE}.EVENTKEY ;;
      hidden: yes
    }
    dimension:  CUSTOMERKEY {
      sql: ${TABLE}.CUSTOMERKEY ;;
      hidden:  yes
    }
    dimension:  FAMILYKEY {
      sql: ${TABLE}.FAMILYKEY ;;
      hidden: yes
    }
    dimension:  PURCHASEDATE_SID {
      sql: utl..udf_date_to_julian(${TABLE}.PURCHASEDATE) ;;
      hidden:  yes
    }
    dimension:  PURCHASELOCATIONDESCRIPTION {
      view_label: "Purchase Details"
      label: "Purchase Description"
      description: "Purchase Location Description"
      type: string
      sql: ${TABLE}.PURCHASELOCATIONDESCRIPTION ;;
    }
    dimension:  PURCHASELOCATIONTYPE {
      view_label: "Purchase Details"
      label: "Purchase Location Type"
      description: "Purchase Location Type"
      type: string
      sql: ${TABLE}.PURCHASELOCATIONTYPE ;;
    }
    dimension:  EVENTDATE_SID {
      sql: utl..udf_date_to_julian(${TABLE}.EVENTDATE) ;;
      hidden:  yes
    }
    dimension:  EVENTLOCATIONDESCRIPTION {
      view_label: "Event Details"
      label: "Event Location Description"
      description: "Event Location Description"
      type:  string
      sql: ${TABLE}.EVENTLOCATIONDESCRIPTION ;;
    }
    dimension:  EVENTLOCATIONTYPE {
      view_label: "Event Details"
      label: "Event Location Type"
      description: "Event Location Type"
      type:  string
      sql: ${TABLE}.EVENTLOCATIONTYPE ;;
    }
    dimension:  PRODUCTKEY {
      view_label: "Product Details"
      label: "Product Key"
      description: "Source System Product Key"
      type:  string
      sql: ${TABLE}.PRODUCTSOURCESYSTEMKEY ;;
    }
    dimension:  PRODUCTDESCRIPTION {
      view_label: "Product Details"
      label: "Product Description"
      description: "Product Description"
      type:  string
      sql: ${TABLE}.PRODUCTDESCRIPTION ;;
    }

  #----------------------------------------------------------------------
  #---measures---
  #----------------------------------------------------------------------
    measure:  Countall{
      label: "Count(*)"
      description: "count all"
      type: count
    }
    measure:  event_count {
      label: "Event Count"
      description: "Count of distinct events."
      type: count_distinct
      sql: ${EVENTID} ;;
    }
    measure:  EVENTAMOUNT {
      label: "Rev/TRev"
      description: "Total Portolio Revenue"
      type: sum
      value_format_name: usd_0
    sql: ${TABLE}.EVENTAMOUNT ;;
    }
    measure:  QUANTITY {
      label: "Rm Bkd"
      description: "Room Nights Actual & OTB"
      type: sum
    sql: ${TABLE}.QUANTITY ;;
    }
}
