view: revintel_property_f {
  sql_table_name: pedw.fact.revintel_property_f  ;;

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: property_key {
    primary_key: yes
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: date_sid {
    sql: ${TABLE}.date_sid ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Dimensions
  #-------------------------------------------------------------------------------------------

  dimension: major_market_nm {
    sql: ${TABLE}.major_market_nm ;;
    view_label: "Reservation Detail"
    label: "Major Market Segemnt"
    description: "Major Market Segment Name"
    type: string
  }

  dimension: minor_market_nm {
    sql: ${TABLE}.minor_market_nm ;;
    view_label: "Reservation Detail"
    label: "Minor Market Segemnt"
    description: "Minor Market Segment Name"
    type: string
  }

  dimension: contribution_channel_nm {
    sql: ${TABLE}.major_market_nm ;;
    view_label: "Reservation Detail"
    label: "Contribution Channel"
    description: "Contribution Channel Name"
    type: string
  }

  dimension: major_channel_nm {
    sql: ${TABLE}.major_Channel_nm ;;
    view_label: "Reservation Detail"
    label: "Major Channel"
    description: "Major Channel Name"
    type: string
  }

  dimension: minor_channel_nm {
    sql: ${TABLE}.minor_channel_nm ;;
    view_label: "Reservation Detail"
    label: "Minor Channel"
    description: "Minor Channel Name"
    type: string
  }

  dimension: major_room_product_nm {
    sql: ${TABLE}.major_room_product_nm ;;
    view_label: "Reservation Detail"
    label: "Major Room Product"
    description: "Major Room Product Name"
    type: string
  }

  dimension: minor_room_product_nm {
    sql: ${TABLE}.minor_room_product_nm ;;
    view_label: "Reservation Detail"
    label: "Minor Room Product"
    description: "Minor Room Product Name"
    type: string
  }

  dimension: room_type_nm {
    sql: ${TABLE}.room_type_nm ;;
    view_label: "Reservation Detail"
    label: "Room Type"
    description: "Room Type Name"
    type: string
  }

  dimension: company_nm {
    sql: ${TABLE}.company_nm ;;
    view_label: "Reservation Detail"
    label: "Company"
    description: "Company Name"
    type: string
  }

  dimension: business_unit_nm {
    sql: ${TABLE}.company_nm ;;
    view_label: "Reservation Detail"
    label: "Business Unit"
    description: "Busines Unit Name"
    type: string
  }

  dimension: rate_code {
    sql: ${TABLE}.company_nm ;;
    view_label: "Reservation Detail"
    label: "Rate Code"
    description: "Rate Code Number"
    type: string
  }

  dimension: rate_code_nm {
    sql: ${TABLE}.company_nm ;;
    view_label: "Reservation Detail"
    label: "Rate Code"
    description: "Rate Code Name"
    type: string
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  measure:  cy_rooms{
    sql: ${TABLE}.cy_rooms ;;
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd"
    description: "Room Booked"
    type: sum
  }

  measure:  cy_room_rev{
    sql: ${TABLE}.cy_room_rev ;;
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Rms $"
    description: "Room Revenue"
    type: sum
  }

  measure:  cy_food_rev{
    sql: ${TABLE}.cy_food_rev ;;
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Food $"
    description: "Food Revenue"
    type: sum
  }

  measure:  cy_other_rev{
    sql: ${TABLE}.cy_other_rev ;;
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Other $"
    description: "Other Revenue"
    type: sum
  }

  measure:  cy_room_adr{
    sql: utl..udf_divide(${cy_room_rev},${cy_rooms}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "ADR"
    description: "Average Daily Rate"
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures LY
  #-------------------------------------------------------------------------------------------

  measure:  py_rooms{
    sql: ${TABLE}.py_rooms ;;
    value_format_name: decimal_0
    view_label: "  STLY"
    label: "Rms Bkd"
    description: "STLY Room Booked"
    type: sum
  }

  measure:  py_room_rev{
    sql: ${TABLE}.py_room_rev ;;
    value_format_name: usd_0
    view_label: "  STLY"
    label: "Rev Rms $"
    description: "STLY Room Revenue"
    type: sum
  }

  measure:  py_food_rev{
    sql: ${TABLE}.py_food_rev ;;
    value_format_name: usd_0
    view_label: "  STLY"
    label: "Rev Food $"
    description: "STLY Food Revenue"
    type: sum
  }

  measure:  py_other_rev{
    sql: ${TABLE}.py_other_rev ;;
    value_format_name: usd_0
    view_label: "  STLY"
    label: "Rev Other $"
    description: "STLY Other Revenue"
    type: sum
  }

  measure:  py_room_adr{
    sql: utl..udf_divide(${py_room_rev},${py_rooms}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  STLY"
    label: "ADR"
    description: "Average Daily Rate"
  }


  #-------------------------------------------------------------------------------------------
  #-- Measures compare to py
  #-------------------------------------------------------------------------------------------

  measure:  rooms_var_perc{
    sql: utl..udf_percent_var((${cy_rooms}),(${py_rooms})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rms Bkd Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  rooms_var{
    sql: (${cy_rooms})-(${py_rooms}) ;;
    type: number
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  room_rev_var_perc{
    sql: utl..udf_percent_var((${cy_room_rev}),(${py_room_rev})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rev Rms $ Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  room_rev_var{
    sql: (${cy_room_rev})-(${py_room_rev}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Rms $ Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  food_rev_var_perc{
    sql: utl..udf_percent_var((${cy_food_rev}),(${py_food_rev})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rev Food $ Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  food_rev_var{
    sql: (${cy_food_rev})-(${py_food_rev}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Food $ Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  other_rev_var_perc{
    sql: utl..udf_percent_var((${cy_other_rev}),(${py_other_rev})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rev Other $ Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  other_rev_var{
    sql: (${cy_other_rev})-(${py_other_rev}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Other $ Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  room_adr_var_perc{
    sql: utl..udf_percent_var((${cy_room_adr}),(${py_room_adr})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "ADR Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  room_adr_var{
    sql: (${cy_room_adr})-(${py_room_adr}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "ADR Act:LY - var"
    description: "(TY - LY)"
  }

  }
