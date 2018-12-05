view: property_pace_f {
  sql_table_name: pedw.fact.property_pace_f ;;

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: property_key {
    primary_key: yes
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: pace_date {
    sql: ${TABLE}.pace_date ;;
    hidden: yes
  }

  dimension: pace_date_sid {
    sql: ${TABLE}.pace_date_sid ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Dimensions
  #-------------------------------------------------------------------------------------------

  dimension: market_nm {
    sql: ${TABLE}.market_nm ;;
    view_label: "Pace Detail"
    label: "Market Segment Name"
    description: "Market Segment Name"
    type: string

  }

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  measure:  room_rev{
    sql: ${TABLE}.room_rev ;;
    value_format_name: usd_0
    label: "Room Revenue"
    description: "Room Revenue"
    type: sum
  }

  measure:  room_rev_stly{
    sql: ${TABLE}.room_rev_stly ;;
    value_format_name: usd_0
    label: "Room Revenue STLY"
    description: "Room Revenue (Same Time Last Year)"
    type: sum
  }

  measure:  roomsold{
    sql: ${TABLE}.roomsold ;;
    value_format_name: decimal_0
    label: "Room Sold"
    description: "Room Sold"
    type: sum
  }

  measure:  roomsold_stly{
    sql: ${TABLE}.roomsold_stly ;;
    value_format_name: decimal_0
    label: "Room Sold STLY"
    description: "Room Sold (Same Time Last Year)"
    type: sum
  }

  measure:  prosp_roomrev{
    sql: ${TABLE}.prosp_roomrev ;;
    value_format_name: usd_0
    label: "Prospect Room Revenue"
    description: "Prospect Room Revenue"
    type: sum
  }

  measure:  prosp_roomrev_stly{
    sql: ${TABLE}.prosp_roomrev_stly ;;
    value_format_name: usd_0
    label: "Prospect Room Revenue STLY"
    description: "Prospect Room Revenue (Same Time Last Year)"
    type: sum
  }

  measure:  prosp_roomsold{
    sql: ${TABLE}.prosp_roomsold ;;
    value_format_name: decimal_0
    label: "Prospect Room Sold"
    description: "Prospect Room Sold"
    type: sum
  }

  measure:  prosp_roomsold_stly{
    sql: ${TABLE}.prosp_roomsold_stly ;;
    value_format_name: decimal_0
    label: "Prospect Room Sold STLY"
    description: "Prospect Room Sold (Same Time Last Year)"
    type: sum
  }

  measure:  tent_roomrev{
    sql: ${TABLE}.tent_roomrev ;;
    value_format_name: usd_0
    label: "Tentative Room Revenue"
    description: "Tentative Room Revenue "
    type: sum
  }

  measure:  tent_roomrev_stly{
    sql: ${TABLE}.tent_roomrev_stly ;;
    value_format_name: usd_0
    label: "Tentative Room Revenue STLY"
    description: "Tentative Room (Same Time Last Year)"
    type: sum
  }

  measure:  tent_roomsold{
    sql: ${TABLE}.tent_roomsold ;;
    value_format_name: decimal_0
    label: "Tentative Room Sold"
    description: "Tentative Room Sold"
    type: sum
  }

  measure:  tent_roomsold_stly{
    sql: ${TABLE}.tent_roomsold_stly ;;
    value_format_name: decimal_0
    label: "Tentative Room Sold STLY"
    description: "Tentative Room Sold (Same Time Last Year)"
    type: sum
  }

  measure:  budg_roomrev{
    sql: ${TABLE}.budg_roomrev ;;
    value_format_name: usd_0
    label: "Budget Room Revenue"
    description: "Budget Room Revenue"
    type: sum
  }

  measure:  budg_roomsold{
    sql: ${TABLE}.budg_roomsold ;;
    value_format_name: decimal_0
    label: "Budget Room Sold"
    description: "Budget Room Sold"
    type: sum
  }

  measure:  act_fcst_roomrev{
    sql: ${TABLE}.act_fcst_roomrev ;;
    value_format_name: usd_0
    label: "Act/Fcst Room Sold"
    description: "Act/Fcst Room Sold"
    type: sum

  }

  measure:  act_fcst_roomsold{
    sql: ${TABLE}.act_fcst_roomsold ;;
    value_format_name: decimal_0
    label: "Act/Fcst Room Revenue"
    description: "Act/Fcst Room Revenue"
    type: sum
  }
  }
