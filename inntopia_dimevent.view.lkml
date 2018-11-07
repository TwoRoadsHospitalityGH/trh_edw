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
    dimension:  PRODUCTDESCRIPTION {
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
