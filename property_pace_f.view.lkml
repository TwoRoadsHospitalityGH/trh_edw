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
    label: "Rev Rms $"
    description: "Room Revenue"
    type: sum
  }

  measure:  room_rev_stly{
    sql: ${TABLE}.room_rev_stly ;;
    value_format_name: usd_0
    label: "Rev Rms $ LY"
    description: "Room Revenue (Same Time Last Year)"
    type: sum
  }

  measure:  roomsold{
    sql: ${TABLE}.roomsold ;;
    value_format_name: decimal_0
    label: "Rms Bkd"
    description: "Room Booked"
    type: sum
  }

  measure:  roomsold_stly{
    sql: ${TABLE}.roomsold_stly ;;
    value_format_name: decimal_0
    label: "Rms Bkd LY"
    description: "Room Booked (Same Time Last Year)"
    type: sum
  }

  measure:  room_adr{
    sql: ${room_rev}/${roomsold} ;;
    value_format_name: usd_0
    label: "ADR"
    description: "Average Daily Rate"
  }

  measure:  room_adr_stly{
    sql: ${room_rev_stly}/${roomsold_stly} ;;
    value_format_name: usd_0
    label: "ADR LY"
    description: "ADR (Same Time Last Year)"
  }

  measure:  budg_roomrev{
    sql: ${TABLE}.budg_roomrev ;;
    value_format_name: usd_0
    label: "Rev Rms $ Bdgt"
    description: "Budget Room Revenue"
    type: sum
  }

  measure:  budg_roomsold{
    sql: ${TABLE}.budg_roomsold ;;
    value_format_name: decimal_0
    label: "Rms Bkd Bdgt"
    description: "Budget Room Sold"
    type: sum
  }

  measure:  budg_adr{
    sql: ${budg_roomrev}/${budg_roomsold};;
    value_format_name: usd_0
    label: "ADR Bdgt"
    description: "Budget ADR"
  }

  measure:  act_fcst_roomrev{
    sql: ${TABLE}.act_fcst_roomrev ;;
    value_format_name: usd_0
    label: "Rms Bkd Fcst"
    description: "Act/Fcst Room Sold"
    type: sum

  }

  measure:  act_fcst_roomsold{
    sql: ${TABLE}.act_fcst_roomsold ;;
    value_format_name: decimal_0
    label: "Rev Rms $ Fcst"
    description: "Act/Fcst Room Revenue"
    type: sum
  }

  measure:  act_fcst_adr{
    sql: ${act_fcst_roomrev}/${act_fcst_roomsold} ;;
    value_format_name: usd_0
    label: "ADR Fcst"
    description: "Act/Fcst ADR"
  }

  #-------------------------------------------------------------------------------------------
  #-- Prospect
  #-------------------------------------------------------------------------------------------

  measure:  prosp_roomrev{
    sql: ${TABLE}.prosp_roomrev ;;
    value_format_name: usd_0
    label: "Rev Rms $ Prospect"
    description: "Prospect Room Revenue"
    type: sum
  }

  measure:  prosp_roomrev_stly{
    sql: ${TABLE}.prosp_roomrev_stly ;;
    value_format_name: usd_0
    label: "Rev Rms $ Prospect LY"
    description: "Prospect Room Revenue (Same Time Last Year)"
    type: sum
  }

  measure:  prosp_roomrev_var_perc{
    sql: utl..udf_percent_var((${prosp_roomrev}),(${prosp_roomrev_stly})) ;;
    value_format_name: percent_1
    label: "Rev Rms $ Prospect Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  prosp_roomrev_var{
    sql: (${prosp_roomrev})-(${prosp_roomrev_stly}) ;;
    value_format_name: usd_0
    label: "Rev Rms $ Prospect Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  prosp_roomsold{
    sql: ${TABLE}.prosp_roomsold ;;
    value_format_name: decimal_0
    label: "Rms Bkd Prospect"
    description: "Prospect Room Booked"
    type: sum
  }

  measure:  prosp_roomsold_stly{
    sql: ${TABLE}.prosp_roomsold_stly ;;
    value_format_name: decimal_0
    label: "Rms Bkd Prospect LY"
    description: "Prospect Room Booked (Same Time Last Year)"
    type: sum
  }

  measure:  prosp_roomsold_var_perc{
    sql: utl..udf_percent_var((${prosp_roomsold}),(${prosp_roomsold_stly})) ;;
    value_format_name: percent_1
    label: "Rms Bkd Prospect Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  prosp_roomsold_var{
    sql: (${prosp_roomsold})-(${prosp_roomsold_stly}) ;;
    value_format_name: decimal_0
    label: "Rms Bkd Prospect Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  prosp_adr{
    sql: ${prosp_roomrev}/${prosp_roomsold} ;;
    value_format_name: usd_0
    label: "ADR Prospect"
    description: "Prospect Average Daily Rate"
  }

  measure:  prosp_adr_stly{
    sql: ${prosp_roomrev_stly}/${prosp_roomsold_stly} ;;
    value_format_name: usd_0
    label: "ADR Prospect LY"
    description: "Prospect Average Daily Rate (Same Time Last Year)"
  }

  measure:  prosp_adr_var_perc{
    sql: utl..udf_percent_var((${prosp_roomrev}/${prosp_roomsold}),(${prosp_roomrev_stly}/${prosp_roomsold_stly})) ;;
    value_format_name: percent_1
    label: "ADR Prospect Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  prosp_adr_var{
    sql: (${prosp_roomrev}/${prosp_roomsold})-(${prosp_roomrev_stly}/${prosp_roomsold_stly}) ;;
    value_format_name: usd_0
    label: "ADR Prospect Act:LY - var"
    description: "(TY - LY)"
  }

  #-------------------------------------------------------------------------------------------
  #-- Tentative
  #-------------------------------------------------------------------------------------------

  measure:  tent_roomrev{
    sql: ${TABLE}.tent_roomrev ;;
    value_format_name: usd_0
    label: "Rev Rms $ Tentative"
    description: "Tentative Room Revenue "
    type: sum
  }

  measure:  tent_roomrev_stly{
    sql: ${TABLE}.tent_roomrev_stly ;;
    value_format_name: usd_0
    label: "Rev Rms $ Tentative LY"
    description: "Tentative Room (Same Time Last Year)"
    type: sum
  }

  measure:  tent_roomrev_var_perc{
    sql: utl..udf_percent_var((${tent_roomrev}),(${tent_roomrev_stly})) ;;
    value_format_name: percent_1
    label: "Rev Rms $ Tentative Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  tent_roomrev_var{
    sql: (${tent_roomrev})-(${tent_roomrev_stly}) ;;
    value_format_name: usd_0
    label: "Rev Rms $ Tentative Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  tent_roomsold{
    sql: ${TABLE}.tent_roomsold ;;
    value_format_name: decimal_0
    label: "Rms Bkd Tentative"
    description: "Tentative Room Sold"
    type: sum
  }

  measure:  tent_roomsold_stly{
    sql: ${TABLE}.tent_roomsold_stly ;;
    value_format_name: decimal_0
    label: "Rms Bkd Tentative LY"
    description: "Tentative Room Sold (Same Time Last Year)"
    type: sum
  }

  measure:  tent_roomsold_var_perc{
    sql: utl..udf_percent_var((${tent_roomsold}),(${tent_roomsold_stly})) ;;
    value_format_name: percent_1
    label: "Rms Bkd Tentative Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  tent_roomsold_var{
    sql: (${tent_roomsold})-(${tent_roomsold_stly}) ;;
    value_format_name: decimal_0
    label: "Rms Bkd Tentative Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  tent_adr{
    sql: ${tent_roomrev}/${tent_roomsold} ;;
    value_format_name: usd_0
    label: "ADR Tentative"
    description: "Tentative ADR"
  }

  measure:  tent_adr_stly{
    sql: ${tent_roomrev_stly}/${tent_roomsold_stly} ;;
    value_format_name: usd_0
    label: "ADR Tentative LY"
    description: "Tentative Average Daily Rate (Same Time Last Year)"
  }

  measure:  tent_adr_var_perc{
    sql: utl..udf_percent_var((${tent_roomrev}/${tent_roomsold}),(${tent_roomrev_stly}/${tent_roomsold_stly})) ;;
    value_format_name: percent_1
    label: "ADR Tentative Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  tent_adr_var{
    sql: (${tent_roomrev}/${tent_roomsold})-(${tent_roomrev_stly}/${tent_roomsold_stly}) ;;
    value_format_name: usd_0
    label: "ADR Tentative Act:LY - var"
    description: "(TY - LY)"
  }



  #-------------------------------------------------------------------------------------------
  #-- % Vairance
  #-------------------------------------------------------------------------------------------

  measure:  roomrev_var_perc_ly{
    sql: utl..udf_percent_var(${room_rev},${room_rev_stly}) ;;
    value_format_name: percent_1
    label: "Rev Rms $ Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  roomrev_var_perc_budg{
    sql: utl..udf_percent_var(${room_rev},${budg_roomrev}) ;;
    value_format_name: percent_1
    label: "Rev Rms $ Act:Fcst - % var"
    description: "(TY - LY)/TY"
  }

  measure:  roomrev_var_perc_fcst{
    sql: utl..udf_percent_var(${room_rev},${act_fcst_roomrev}) ;;
    value_format_name: percent_1
    label: "Rev Rms $ Act:Bdgt - % var"
    description: "(TY - LY)/TY"
  }

  measure:  roomsold_var_perc_ly{
    sql: utl..udf_percent_var(${roomsold},${roomsold_stly}) ;;
    value_format_name: percent_1
    label: "Rms Bkd Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  roomsold_var_perc_budg{
    sql: utl..udf_percent_var(${roomsold},${budg_roomsold}) ;;
    value_format_name: percent_1
    label: "Rms Bkd Act:Fcst - % var"
    description: "(TY - LY)/TY"
  }

  measure:  roomsold_var_perc_fcst{
    sql: utl..udf_percent_var(${roomsold},${act_fcst_roomsold}) ;;
    value_format_name: percent_1
    label: "Rms Bkd Act:Bdgt - % var"
    description: "(TY - LY)/TY"
  }

  measure:  adr_var_perc_ly{
    sql: utl..udf_percent_var(${room_adr},${room_adr_stly}) ;;
    value_format_name: percent_1
    label: "ADR Act:LY - % var"
    description: "(TY - LY)/TY"
  }

  measure:  adr_var_perc_budg{
    sql: utl..udf_percent_var(${room_adr},${budg_adr}) ;;
    value_format_name: percent_1
    label: "ADR Act:Fcst - % var"
    description: "(TY - LY)/TY"
  }

  measure:  adr_var_perc_fcst{
    sql: utl..udf_percent_var(${room_adr},${act_fcst_adr}) ;;
    value_format_name: percent_1
    label: "ADR Act:Bdgt - % var"
    description: "(TY - LY)/TY"
  }


  #-------------------------------------------------------------------------------------------
  #-- # Vairance
  #-------------------------------------------------------------------------------------------
  measure:  roomrev_var_ly{
    sql: (${room_rev} - ${room_rev_stly}) ;;
    value_format_name: decimal_0
    label: "Rev Rms $ Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  roomrev_var_budg{
    sql: (${room_rev} - ${budg_roomrev}) ;;
    value_format_name: decimal_0
    label: "Rev Rms $ Act:Fcst - var"
    description: "(TY - LY)"
  }

  measure:  roomrev_var_fcst{
    sql: (${room_rev} - ${act_fcst_roomrev}) ;;
    value_format_name: decimal_0
    label: "Rev Rms $ Act:Bdgt - var"
    description: "(TY - LY)"
  }

  measure:  roomsold_var_ly{
    sql: (${roomsold} - ${roomsold_stly}) ;;
    value_format_name: decimal_0
    label: "Rms Bkd Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  roomsold_var_budg{
    sql: (${roomsold} - ${budg_roomsold}) ;;
    value_format_name: decimal_0
    label: "Rms Bkd Act:Fcst - var"
    description: "(TY - LY)"
  }

  measure:  roomsold_var_fcst{
    sql: (${roomsold} - ${act_fcst_roomsold}) ;;
    value_format_name: decimal_0
    label: "Rms Bkd Act:Bdgt - var"
    description: "(TY - LY)"
  }

  measure:  adr_var_ly{
    sql: (${room_adr} - ${room_adr_stly}) ;;
    value_format_name: decimal_0
    label: "ADR Act:LY - var"
    description: "(TY - LY)"
  }

  measure:  adr_var_budg{
    sql: (${room_adr} - ${budg_adr}) ;;
    value_format_name: decimal_0
    label: "ADR Act:Fcst - var"
    description: "(TY - LY)"
  }

  measure:  adr_var_fcst{
    sql: (${room_adr} - ${act_fcst_adr}) ;;
    value_format_name: decimal_0
    label: "ADR Act:Bdgt - var"
    description: "(TY - LY)"
  }

}
