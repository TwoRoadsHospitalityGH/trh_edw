view: inntopia_event_property_f_msr_ty {
  derived_table: {
    sql: select 1 as eventid ;;
  }

  dimension: eventid {
    primary_key: yes
    type: number
    sql: ${TABLE}.eventid ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: tyly_bt {
    sql: ${inntopia_event_property_f.ty_bt} ;;
    hidden: yes
  }

  #----------------------------------------------------------------------
  #---measures---
  #----------------------------------------------------------------------
  measure:  Countall{
    label: "Count(*)"
    description: "count all"
    type: count
    hidden: yes
  }
  measure:  event_cnt {
    label: "Event Count"
    description: "Count of distinct events."
    type: count_distinct
    sql:iff( ${tyly_bt} = 1,  ${inntopia_event_property_f.EVENTID}, to_number( null ) ) ;;
  }
  measure:  rev_amt {
    label: "Rev/TRev"
    description: "Total Portolio Revenue"
    type: sum
    value_format_name: usd_0
    sql: ${inntopia_event_property_f.EVENTAMOUNT} * ${tyly_bt};;
  }
  measure:  room_amt {
    label: "Rm Bkd"
    description: "Room Nights Actual & OTB"
    type: sum
    sql: ${inntopia_event_property_f.QUANTITY} * ${tyly_bt} ;;
  }

  measure: customer_cnt  {
    hidden: yes
    type: count_distinct
    sql:iff( ${tyly_bt} = 1,  ${inntopia_event_property_f.CUSTOMERKEY}, to_number( null ) ) ;;
  }

  measure:  customer_spend{
    label: "Rev/Customer"
    description: "Total Revenue Spent/Customer"
    value_format_name: usd_0
    sql: ${rev_amt}/${customer_cnt} ;;
  }

  measure:  customer_room_night{
    label: "Rm Bkd/Customer"
    description: "Room Booked/Customer"
    value_format_name: decimal_1
    sql: ${room_amt}/${customer_cnt} ;;
  }
  }
