view: inntopia_dimevent {
  sql_table_name: PRAW_inntopia.dbo.dimevent ;;
    dimension:  EVENTID {
      sql: ${TABLE}.EVENTID ;;
    }
    dimension:  SOURCESYSTEMCODE {
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
    dimension:  EVENTSTATEKEY {
    sql: ${TABLE}.EVENTSTATEKEY ;;
    }
    dimension:  EVENTSTATE {
    sql: ${TABLE}.EVENTSTATE ;;
    }
    dimension:  PURCHASEDATEKEY {
    sql: ${TABLE}.PURCHASDATEKEY ;;
    }
    dimension:  PURCHASEDATE {
    sql: ${TABLE}.PURCHASEDATE ;;
    }
    dimension:  PURCHASELOCATIONKEY {
    sql: ${TABLE}.PURCHASELOCATIONKEY ;;
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
    dimension:  EVENTDATEKEY {
    sql: ${TABLE}.EVENTDATEKEY ;;
    }
    dimension:  EVENTDATE {
    sql: ${TABLE}.EVENTDATE ;;
    }
    dimension:  EVENTLOCATIONKEY {
    sql: ${TABLE}.EVENTLOCATIONKEY ;;
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
    dimension:  PRODUCTLOB {
    sql: ${TABLE}.PRODUCTLOB ;;
    }
    dimension:  PRODUCTLOBSUMMARY {
    sql: ${TABLE}.PRODUCTLOBSUMMARY ;;
    }
    dimension:  SOURCEPRODUCTLOBSUMMARY {
    sql: ${TABLE}.SOURCEPRODUCTLOBSUMMARY ;;
    }
    dimension:  SEASONID {
    sql: ${TABLE}.SEASONID ;;
    }
    dimension:  SEASON {
    sql: ${TABLE}.SEASON ;;
    }
    dimension:  YEAR {
    sql: ${TABLE}.YEAR ;;
    }
    dimension:  HOLIDAY {
    sql: ${TABLE}.HOLIDAY ;;
    }
    dimension:  EVENTTYPE {
    sql: ${TABLE}.EVENTTYPE ;;
    }
    dimension:  PROMOTIONDESCRIPTION {
    sql: ${TABLE}.PROMOTIONDESCRIPTION ;;
    }
    dimension:  PROMOTIONKEY {
    sql: ${TABLE}.PROMOTIONKEY ;;
    }
    dimension:  SOURCEPROMOTIONKEY {
    sql: ${TABLE}.SOURCEPROMOTIONKEY ;;
    }
    dimension:  EVENTAMOUNTLOCAL {
    sql: ${TABLE}.EVENTAMOUNTLOCAL ;;
    }
    dimension:  LOCALCURRENCYCODE {
    sql: ${TABLE}.LOCALCURRENCYCODE ;;
    }
    dimension:  UPDATEDATE {
    sql: ${TABLE}.UPDATEDATE ;;
    }
    dimension:  REPORTID {
    sql: ${TABLE}.REPORTID ;;
    }
    dimension:  SOURCESYSTEMCUSTOMERKEY {
    sql: ${TABLE}.SOURCESYSTEMCUSTOMERKEY ;;
    }
    dimension:  RESENDFLAG {
    sql: ${TABLE}.RESENDFLAG ;;
    }
    dimension:  EVENTHEADERID {
    sql: ${TABLE}.EVENTHEADERID ;;
    }
    dimension:  POSTEDUSER {
    sql: ${TABLE}.POSTEDUSER ;;
    }
    dimension:  EVENTBRAND {
    sql: ${TABLE}.EVENTBRAND ;;
    }
    dimension:  EVENTCHAIN {
    sql: ${TABLE}.EVENTCHAIN ;;
    }
  #----------------------------------------------------------------------
  #---measures---
  #----------------------------------------------------------------------

    measure: record_cnt {
      label: "Count(*)"
      description: "Count of records"
      type: number
    sql: count(*) ;;
    }
    measure:  EVENTAMOUNT {
      label: "Revenue Amount"
      description: "Event Revenue Amount"
      type: sum
    sql: ${TABLE}.EVENTAMOUNT ;;
    }
    measure:  QUANTITY {
      label: "Quantity"
      description: "Quantity"
      type: sum
    sql: ${TABLE}.QUANTITY ;;
    }
}
