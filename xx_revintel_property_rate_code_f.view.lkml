view: xx_revintel_property_rate_code_f {
  sql_table_name: pedw.fact.xx_revintel_property_rate_code_f  ;;

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

  dimension: rate_cd {
    sql: ${TABLE}.rate_cd ;;
    view_label: "Rate Code Detail"
    label: "Rate Code"
    description: "Rate Code Number"
    type: string
  }

  dimension: rate_code_name {
    sql: ${TABLE}.rate_code_name ;;
    view_label: "Rate Code Detail"
    label: "Rate Code Name"
    description: "Rate Code Name"
    type: string
  }

  #dimension: lkp_rate_code_nm {
  dimension: standard_rate_code_name {
    sql: ${TABLE}.standard_rate_code_nm ;;
    view_label: "Rate Code Detail"
    label: "Standard Rate Code Name"
    description: "Standard Rate Code Name"
    type: string
  }

  dimension: account_type_name {
    sql: ${TABLE}.account_type_name ;;
    view_label: "Rate Code Detail"
    label: "Account Type Name"
    description: "Account Type Name (e.g. Consortia, Wholesale)"
    type: string
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  measure:  cy_room_cnt{
    sql: ${TABLE}.cy_room_cnt ;;
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd"
    description: "Room Booked"
    type: sum
  }

  measure:  cy_room_rev_amt{
    sql: ${TABLE}.cy_room_rev_amt ;;
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Rms $"
    description: "Room Revenue"
    type: sum
  }

  measure:  cy_room_adr{
    sql: utl..udf_divide(${cy_room_rev_amt},${cy_room_cnt}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "ADR"
    description: "Average Daily Rate"
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures STLY
  #-------------------------------------------------------------------------------------------

  measure:  stly_room_cnt{
    sql: ${TABLE}.stly_room_cnt ;;
    value_format_name: decimal_0
    view_label: "  STLY"
    label: "Rms Bkd"
    description: "STLY Room Booked"
    type: sum
  }

  measure:  stly_room_rev_amt{
    sql: ${TABLE}.stly_room_rev_amt ;;
    value_format_name: usd_0
    view_label: "  STLY"
    label: "Rev Rms $"
    description: "STLY Room Revenue"
    type: sum
  }

  measure:  stly_room_adr{
    sql: utl..udf_divide(${stly_room_rev_amt},${stly_room_cnt}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  STLY"
    label: "ADR"
    description: "Average Daily Rate"
  }

#-------------------------------------------------------------------------------------------
  #-- Measures LY
  #-------------------------------------------------------------------------------------------

  measure:  ly_room_cnt{
    sql: ${TABLE}.ly_room_cnt ;;
    value_format_name: decimal_0
    view_label: "  LY"
    label: "Rms Bkd"
    description: "LY Room Booked"
    type: sum
  }

  measure:  ly_room_rev_amt{
    sql: ${TABLE}.ly_room_rev_amt ;;
    value_format_name: usd_0
    view_label: "  LY"
    label: "Rev Rms $"
    description: "LY Room Revenue"
    type: sum
  }


  measure:  ly_room_adr{
    sql: utl..udf_divide(${ly_room_rev_amt},${ly_room_cnt}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  LY"
    label: "ADR"
    description: "Average Daily Rate"
  }


  #-------------------------------------------------------------------------------------------
  #-- Measures compare to py
  #-------------------------------------------------------------------------------------------

  measure:  room_cnt_var_perc{
    sql: utl..udf_percent_var((${cy_room_cnt}),(${stly_room_cnt})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rms Bkd Act:STLY - % var"
    description: "(TY - STLY)/TY"
  }

  measure:  room_cnt_var{
    sql: (${cy_room_cnt})-(${stly_room_cnt}) ;;
    type: number
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd Act:STLY - var"
    description: "(TY - STLY)"
  }

  measure:  room_rev_amt_var_perc{
    sql: utl..udf_percent_var((${cy_room_rev_amt}),(${stly_room_rev_amt})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rev Rms $ Act:STLY - % var"
    description: "(TY - STLY)/TY"
  }

  measure:  room_rev_amt_var{
    sql: (${cy_room_rev_amt})-(${stly_room_rev_amt}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Rms $ Act:STLY - var"
    description: "(TY - STLY)"
  }


  measure:  room_adr_var_perc{
    sql: utl..udf_percent_var((${cy_room_adr}),(${stly_room_adr})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "ADR Act:STLY - % var"
    description: "(TY - STLY)/TY"
  }

  measure:  room_adr_var{
    sql: (${cy_room_adr})-(${stly_room_adr}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "ADR Act:STLY - var"
    description: "(TY - STLY)"
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures stly pickup
  #-------------------------------------------------------------------------------------------

  measure:  room_cnt_stly_pickup{
    sql: (${ly_room_cnt})-(${stly_room_cnt}) ;;
    type: number
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd LY:STLY - Pickup"
    description: "(LY - STLY)"
  }

  measure:  room_rev_amt_stly_pickup{
    sql: (${ly_room_rev_amt})-(${stly_room_rev_amt}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Rms $ LY:STLY - Pickup"
    description: "(LY - STLY)"
  }

  measure:  room_adr_stly_pickup{
    sql: utl..udf_percent_var((${room_rev_amt_stly_pickup}),(${room_cnt_stly_pickup})) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "ADR LY:STLY - Pickup"
    description: "(LY - STLY)"
  }

#-------------------------------------------------------------------------------------------
#-- Measures reach to ly
#-------------------------------------------------------------------------------------------

  measure:  room_cnt_stly_reach{
    sql: (${room_cnt_stly_pickup}( + (${room_cnt_var}) ;;
    type: number
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd CY:STLY - Reach"
    description: "(STLY pickup + Act:LY - var)"
  }

  measure:  room_rev_amt_stly_reach{
    sql: (${room_rev_amt_stly_pickup}) + (${room_rev_amt_var}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Rms $ LY:STLY - Reach"
    description: "(STLY pickup + Act:LY - var)"
  }

  measure:  room_adr_stly_reach{
    sql: utl..udf_percent_var((${room_rev_amt_stly_reach}),(${room_cnt_stly_reach})) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "ADR LY:STLY - Reach"
    description: "(STLY pickup + Act:LY - var)"
  }



}
