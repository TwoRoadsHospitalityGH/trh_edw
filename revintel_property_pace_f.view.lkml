view: revintel_property_pace_f {
  sql_table_name: pedw.dev.revintel_property_pace_f  ;;

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: property_key {
    primary_key: yes
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: stay_date_sid {
    sql: ${TABLE}.stay_date_sid ;;
    hidden: yes
  }

  dimension: asof_date_sid {
    sql: ${TABLE}.asof_date_sid ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Dimensions
  #-------------------------------------------------------------------------------------------

  dimension: major_market_nm {
    sql: ${TABLE}.major_market_nm ;;
    view_label: "Reservation Detail"
    label: "Major Market Segment"
    description: "Major Market Segment Name"
    type: string
  }

  dimension: minor_market_nm {
    sql: ${TABLE}.minor_market_nm ;;
    view_label: "Reservation Detail"
    label: "Minor Market Segment"
    description: "Minor Market Segment Name"
    type: string
  }

  dimension: contribution_channel_nm {
    sql: ${TABLE}.contribution_channel_nm ;;
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

  dimension: region_nm {
    sql: ${TABLE}.region_nm ;;
    view_label: "Reservation Detail"
    label: "Region"
    description: "Region Name"
    type: string
  }

  dimension: subregion_nm {
    sql: ${TABLE}.subregion_nm ;;
    view_label: "Reservation Detail"
    label: "Subregion"
    description: "Subregion Name"
    type: string
  }

  dimension: country_nm {
    sql: ${TABLE}.country_nm ;;
    view_label: "Reservation Detail"
    label: "Country"
    description: "Country Name"
    type: string
  }

  dimension: state_nm {
    sql: ${TABLE}.state_nm ;;
    view_label: "Reservation Detail"
    label: "State"
    description: "State Name"
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

  dimension: agent_nm {
    sql: ${TABLE}.agent_nm ;;
    view_label: "Reservation Detail"
    label: "Agent"
    description: "Agent Name"
    type: string
  }

  dimension: iata_cd {
    sql: ${TABLE}.iata_cd ;;
    view_label: "Reservation Detail"
    label: "IATA Code"
    description: "IATA Code"
    type: string
  }

  dimension: business_unit_nm {
    sql: ${TABLE}.business_unit_nm ;;
    view_label: "Reservation Detail"
    label: "Business Unit"
    description: "Busines Unit Name"
    type: string
  }

  dimension: rate_code {
    sql: ${TABLE}.rate_code;;
    view_label: "Reservation Detail"
    label: "Rate Code"
    description: "Rate Code Number"
    type: string
  }

  dimension: rate_code_nm {
    sql: ${TABLE}.rate_code_nm ;;
    view_label: "Reservation Detail"
    label: "Rate Code Name"
    description: "Rate Code Name"
    type: string
  }

  dimension: cy_record_fl {
    sql: iff( ${TABLE}.cy_rooms + ${TABLE}.cy_room_rev != 0, 1, 0 ) = 1;;
    view_label: "Reservation Detail"
    label: "CY Record"
    description: "CY Rms Bkd and Rev Rms != 0"
    type: yesno
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures - Reservation Detail Stats
  #-------------------------------------------------------------------------------------------

  dimension: country_iso2_cd {
    sql: ${TABLE}.country_iso2_cd ;;
    view_label: "Reservation Detail Stats"
    label: "Country ISO2"
    description: "Country ISO Alpha-2 Code"
    type: string
    map_layer_name: countries
  }

  measure: m_agent_cnt {
    view_label: "Reservation Detail Stats"
    label: "Ttl Agent Count"
    description: "Total Agent Count"
    type: count_distinct
    sql: ${TABLE}.agent_nm ;;
    hidden: no
  }

  measure: m_company_cnt {
    view_label: "Reservation Detail Stats"
    label: "Ttl Company Count"
    description: "Total Company Count"
    type: count_distinct
    sql: ${TABLE}.company_nm ;;
    hidden: no
  }

  measure: m_rate_code_cnt {
    view_label: "Reservation Detail Stats"
    label: "Ttl Rate Code Count"
    description: "Total Rate Code Count"
    type: count_distinct
    sql: ${TABLE}.rate_code ;;
    hidden: no
  }

  measure: m_room_type_cnt {
    view_label: "Reservation Detail Stats"
    label: "Ttl Room Type Count"
    description: "Total Room Type Name Count"
    type: count_distinct
    sql: ${TABLE}.room_type_nm ;;
    hidden: no
  }

  measure: m_country_name_cnt {
    view_label: "Reservation Detail Stats"
    label: "Ttl Country Count"
    description: "Total Country Name Count"
    type: count_distinct
    sql: ${TABLE}.country_nm ;;
    hidden: no
  }

  measure: m_minor_channel_name_cnt {
    view_label: "Reservation Detail Stats"
    label: "Ttl Minor Channel Count"
    description: "Total Minor Channel Name Count"
    type: count_distinct
    sql: ${TABLE}.minor_channel_nm ;;
    hidden: no
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

  measure:  cy_ttl_rev{
    sql: ${TABLE}.cy_room_rev + ${TABLE}.cy_food_rev + ${TABLE}.cy_other_rev ;;
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev $"
    description: "Room Rev + Food Rev + Other Rev"
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

  measure: cy_room_ttl_perc {
    view_label: "  CY"
    label: "Rms Bkd - % Mix"
    description: "Percent of total value."
    type: percent_of_total
    sql: ${cy_rooms} ;;
    value_format: "0.0\%"
    hidden: no
  }

  measure: cy_rev_ttl_perc {
    view_label: "  CY"
    label: "Rev Rms $ - % Mix"
    description: "Percent of total value."
    type: percent_of_total
    sql: ${cy_room_rev} ;;
    value_format: "0.0\%"
    hidden: no
  }

  measure: cy_adr_ttl_perc {
    view_label: "  CY"
    label: "ADR - % Mix"
    description: "Percent of total value."
    type: percent_of_total
    sql: utl..udf_divide(${cy_room_rev},${cy_rooms}) ;;
    hidden: no
  }


  measure:  cy_rooms_prior_day {
    sql: ${TABLE}.cy_rooms_prior_day_pu ;;
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd Prior Day"
    description: "Rms OTB in Prior Day"
    type: sum
  }

  measure:  cy_rooms_prior_day_var {
    sql: ${TABLE}.cy_rooms - ${TABLE}.cy_rooms_prior_day_pu ;;
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd Act:Prior Day"
    description: "Rms Bkd - Prior Day"
    type: sum
  }

  measure:  cy_rooms_prior_7_day {
    sql: ${TABLE}.cy_rooms_prior_7_day_pu ;;
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd Prior 7 Days"
    description: "Rms OTB Prior 7 Days"
    type: sum
  }

  measure:  cy_rooms_prior_7_day_var {
    sql: ${TABLE}.cy_rooms - ${TABLE}.cy_rooms_prior_7_day_pu ;;
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd Act:Prior 7 Days "
    description: "Rooms Bkd - Prior 7 Days"
    type: sum
  }

  measure:  cy_rooms_mtd {
    sql: ${TABLE}.cy_rooms_mtd_pu ;;
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd MTD"
    description: "Rms OTB MTD Start"
    type: sum
  }

  measure:  cy_rooms_mtd_var {
    sql: ${TABLE}.cy_rooms - ${TABLE}.cy_rooms_mtd_pu ;;
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd Act:MTD"
    description: "Rooms Bkd - Prior 7 Days"
    type: sum
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures STLY
  #-------------------------------------------------------------------------------------------

  measure:  stly_rooms{
    sql: ${TABLE}.stly_rooms ;;
    value_format_name: decimal_0
    view_label: "  STLY"
    label: "Rms Bkd"
    description: "STLY Room Booked"
    type: sum
  }

  measure:  stly_room_rev{
    sql: ${TABLE}.stly_room_rev ;;
    value_format_name: usd_0
    view_label: "  STLY"
    label: "Rev Rms $"
    description: "STLY Room Revenue"
    type: sum
  }

  measure:  stly_food_rev{
    sql: ${TABLE}.stly_food_rev ;;
    value_format_name: usd_0
    view_label: "  STLY"
    label: "Rev Food $"
    description: "STLY Food Revenue"
    type: sum
  }

  measure:  stly_other_rev{
    sql: ${TABLE}.stly_other_rev ;;
    value_format_name: usd_0
    view_label: "  STLY"
    label: "Rev Other $"
    description: "STLY Other Revenue"
    type: sum
  }

  measure:  stly_ttl_rev{
    sql: ${TABLE}.stly_room_rev + ${TABLE}.stly_food_rev + ${TABLE}.stly_other_rev ;;
    value_format_name: usd_0
    view_label: "  STLY"
    label: "Rev $"
    description: "STLY Total Revenue"
    type: sum
  }

  measure:  stly_room_adr{
    sql: utl..udf_divide(${stly_room_rev},${stly_rooms}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  STLY"
    label: "ADR"
    description: "Average Daily Rate"
  }

  measure: stly_room_ttl_perc {
    view_label: "  STLY"
    label: "Rms Bkd - % Mix"
    description: "Percent of total value."
    type: percent_of_total
    sql: ${stly_rooms} ;;
    value_format: "0.0\%"
    hidden: no
  }

  measure: stly_rev_ttl_perc {
    view_label: "  STLY"
    label: "Rev Rms $ - % Mix"
    description: "Percent of total value."
    type: percent_of_total
    sql: ${stly_room_rev} ;;
    value_format: "0.0\%"
    hidden: no
  }

  measure: stly_adr_ttl_perc {
    view_label: "  STLY"
    label: "ADR - % Mix"
    description: "Percent of total value."
    type: percent_of_total
    sql: utl..udf_divide(${stly_room_rev},${stly_rooms}) ;;
    value_format: "0.0\%"
    hidden: no
  }
#-------------------------------------------------------------------------------------------
  #-- Measures LY
  #-------------------------------------------------------------------------------------------

  measure:  ly_rooms{
    sql: ${TABLE}.ly_rooms ;;
    value_format_name: decimal_0
    view_label: "  LY"
    label: "Rms Bkd"
    description: "LY Room Booked"
    type: sum
  }

  measure:  ly_room_rev{
    sql: ${TABLE}.ly_room_rev ;;
    value_format_name: usd_0
    view_label: "  LY"
    label: "Rev Rms $"
    description: "LY Room Revenue"
    type: sum
  }

  measure:  ly_food_rev{
    sql: ${TABLE}.ly_food_rev ;;
    value_format_name: usd_0
    view_label: "  LY"
    label: "Rev Food $"
    description: "LY Food Revenue"
    type: sum
  }

  measure:  ly_other_rev{
    sql: ${TABLE}.ly_other_rev ;;
    value_format_name: usd_0
    view_label: "  LY"
    label: "Rev Other $"
    description: "LY Other Revenue"
    type: sum
  }

  measure:  ly_ttl_rev{
    sql: ${TABLE}.ly_room_rev + ${TABLE}.ly_food_rev + ${TABLE}.ly_other_rev ;;
    value_format_name: usd_0
    view_label: "  LY"
    label: "Rev $"
    description: "LY Total Revenue"
    type: sum
  }

  measure:  ly_room_adr{
    sql: utl..udf_divide(${ly_room_rev},${ly_rooms}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  LY"
    label: "ADR"
    description: "Average Daily Rate"
  }

  measure: ly_room_ttl_perc {
    view_label: "  LY"
    label: "Rms Bkd - % Mix"
    description: "Percent of total value."
    type: percent_of_total
    sql: ${ly_rooms} ;;
    value_format: "0.0\%"
    hidden: no
  }

  measure: ly_rev_ttl_perc {
    view_label: "  LY"
    label: "Rev Rms $ - % Mix"
    description: "Percent of total value."
    type: percent_of_total
    sql: ${ly_room_rev} ;;
    value_format: "0.0\%"
    hidden: no
  }

  measure: ly_adr_ttl_perc {
    view_label: "  LY"
    label: "ADR - % Mix"
    description: "Percent of total value."
    type: percent_of_total
    sql: utl..udf_divide(${ly_room_rev},${ly_rooms}) ;;
    value_format: "0.0\%"
    hidden: no
  }


  #-------------------------------------------------------------------------------------------
  #-- Measures compare to py
  #-------------------------------------------------------------------------------------------

  measure:  rooms_var_perc{
    sql: utl..udf_percent_var((${cy_rooms}),(${stly_rooms})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rms Bkd Act:STLY - % var"
    description: "(TY - STLY)/STLY"
  }

  measure:  rooms_var{
    sql: (${cy_rooms})-(${stly_rooms}) ;;
    type: number
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd Act:STLY - var"
    description: "(TY - STLY)"
  }

  measure:  room_rev_var_perc{
    sql: utl..udf_percent_var((${cy_room_rev}),(${stly_room_rev})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rev Rms $ Act:STLY - % var"
    description: "(TY - STLY)/STLY"
  }

  measure:  room_rev_var{
    sql: (${cy_room_rev})-(${stly_room_rev}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Rms $ Act:STLY - var"
    description: "(TY - STLY)"
  }

  measure:  food_rev_var_perc{
    sql: utl..udf_percent_var((${cy_food_rev}),(${stly_food_rev})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rev Food $ Act:STLY - % var"
    description: "(TY - STLY)/STLY"
  }

  measure:  food_rev_var{
    sql: (${cy_food_rev})-(${stly_food_rev}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Food $ Act:STLY - var"
    description: "(TY - STLY)"
  }

  measure:  other_rev_var_perc{
    sql: utl..udf_percent_var((${cy_other_rev}),(${stly_other_rev})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rev Other $ Act:STLY - % var"
    description: "(TY - STLY)/STLY"
  }

  measure:  other_rev_var{
    sql: (${cy_other_rev})-(${stly_other_rev}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Other $ Act:STLY - var"
    description: "(TY - STLY)"
  }

  measure:  ttl_rev_var_perc{
    sql: utl..udf_percent_var((${cy_ttl_rev}),(${stly_ttl_rev})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "Rev $ Act:STLY - % var"
    description: "(TY - STLY)/STLY"
  }

  measure:  ttl_rev_var{
    sql: (${cy_ttl_rev})-(${stly_ttl_rev}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev $ Act:STLY - var"
    description: "(TY - STLY)"
  }

  measure:  room_adr_var_perc{
    sql: utl..udf_percent_var((${cy_room_adr}),(${stly_room_adr})) ;;
    type: number
    value_format_name: percent_1
    view_label: "  CY"
    label: "ADR Act:STLY - % var"
    description: "(TY - STLY)/STLY"
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

  measure:  rooms_stly_pickup{
    sql: (${ly_rooms})-(${stly_rooms}) ;;
    type: number
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd LY:STLY - Pickup"
    description: "(LY - STLY)"
  }

  measure:  room_rev_stly_pickup{
    sql: (${ly_room_rev})-(${stly_room_rev}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Rms $ LY:STLY - Pickup"
    description: "(LY - STLY)"
  }

  measure:  room_adr_stly_pickup{
    sql: utl..udf_percent_var((${room_rev_stly_pickup}),(${rooms_stly_pickup})) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "ADR LY:STLY - Pickup"
    description: "(LY - STLY)"
  }

#-------------------------------------------------------------------------------------------
#-- Measures reach to ly
#-------------------------------------------------------------------------------------------

  measure:  rooms_stly_reach{
    sql: (${rooms_stly_pickup}( + (${rooms_var}) ;;
    type: number
    value_format_name: decimal_0
    view_label: "  CY"
    label: "Rms Bkd CY:STLY - Reach"
    description: "(STLY pickup + Act:LY - var)"
  }

  measure:  room_rev_stly_reach{
    sql: (${room_rev_stly_pickup}) + (${room_rev_var}) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "Rev Rms $ LY:STLY - Reach"
    description: "(STLY pickup + Act:LY - var)"
  }

  measure:  room_adr_stly_reach{
    sql: utl..udf_percent_var((${room_rev_stly_reach}),(${rooms_stly_reach})) ;;
    type: number
    value_format_name: usd_0
    view_label: "  CY"
    label: "ADR LY:STLY - Reach"
    description: "(STLY pickup + Act:LY - var)"
  }



}
