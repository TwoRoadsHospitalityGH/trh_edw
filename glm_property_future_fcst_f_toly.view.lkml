view: glm_property_future_fcst_f_toly {
  derived_table: {
    sql: select 1 as key_no ;;
  }

  dimension: key_no {
    primary_key: yes
    type: number
    sql: ${TABLE}.key_no ;;
    hidden: yes
  }

  #--------------------------------------------------------------------------------
  #-- Fcst to LY: rev, AGOP, rooms_revenue, RB&E
  #--------------------------------------------------------------------------------

  #-- Rev

  measure: rev_amt_tofcst_v {
    label: "Rev Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rev_amt} - ${glm_property_future_fcst_f_ly.rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: agop_amt_tofcst_v {
    label: "AGOP Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.agop_amt} - ${glm_property_future_fcst_f_ly.agop_amt} ;;
    value_format_name: decimal_0
  }

  measure: gop_amt_tofcst_v {
    label: "GOP Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.gop_amt} - ${glm_property_future_fcst_f_ly.gop_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_rev_amt_tofcst_v {
    label: "Rev Rms Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_rev_amt} - ${glm_property_future_fcst_f_ly.room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_rev_amt_tofcst_v {
    label: "Rev Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_rev_amt} - ${glm_property_future_fcst_f_ly.other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_rev_amt_tofcst_v {
    label: "Rev RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_rev_amt_tofcst_v {
    label: "Rev RB&E Banquet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_rev_amt_tofcst_v {
    label: "Rev RB&E Catering Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_catering_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_rev_amt_tofcst_v {
    label: "Rev RB&E Conference Services Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_rev_amt_tofcst_v {
    label: "Rev RB&E Outlet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_rev_amt_tofcst_v {
    label: "Rev RB&E Room Service Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_rev_amt_tofcst_v {
    label: "Rev RB&E Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_rev_amt_tofcst_v {
    label: "Rev Food RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_banquet_rev_amt_tofcst_v {
    label: "Rev Food RB&E Banquet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_catering_rev_amt_tofcst_v {
    label: "Rev Food RB&E Catering Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_catering_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_conference_services_rev_amt_tofcst_v {
    label: "Rev Food RB&E Conference Services Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_outlet_rev_amt_tofcst_v {
    label: "Rev Food RB&E Outlet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_room_service_rev_amt_tofcst_v {
    label: "Rev Food RB&E Room Service Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_other_rev_amt_tofcst_v {
    label: "Rev Food RB&E Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_banquet_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Banquet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_catering_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Catering Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_catering_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_conference_services_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Conference Services Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_outlet_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Outlet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_room_service_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Room Service Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_other_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_rev_amt_tofcst_v {
    label: "Rev Spa Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_rev_amt} - ${glm_property_future_fcst_f_ly.spa_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_rev_amt_tofcst_v {
    label: "Rev Golf Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_rev_amt} - ${glm_property_future_fcst_f_ly.golf_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_rev_amt_tofcst_v {
    label: "Rev Fitness & Rec Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_rev_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_rev_amt_tofcst_v {
    label: "Rev Parking & Trans Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_rev_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_rev_amt_tofcst_v {
    label: "Rev Telecom Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_rev_amt} - ${glm_property_future_fcst_f_ly.telecom_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_rev_amt_tofcst_v {
    label: "Rev Retail Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_rev_amt} - ${glm_property_future_fcst_f_ly.retail_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_rev_amt_tofcst_v {
    label: "Rev Other Op. Dept. Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_rev_amt} - ${glm_property_future_fcst_f_ly.other_operated_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_rev_amt_tofcst_v {
    label: "Rev Mgmt Srvcs Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_rev_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_rev_amt_tofcst_v {
    label: "Rev Rentals & Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_rev_amt} - ${glm_property_future_fcst_f_ly.misc_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_rev_amt_tofcst_v {
    label: "Rev Nonoperating Realty Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_rev_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_rev_amt_tofcst_v {
    label: "Rev Nonoperating Airport Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_rev_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_rev_amt_tofcst_v {
    label: "Rev Nonoperating Utility Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_rev_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_rev_amt} ;;
    value_format_name: decimal_0
  }

  #-- Rev % var

  measure: rev_amt_tofcst {
    label: "Rev Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rev_amt}, ${glm_property_future_fcst_f_ly.rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: agop_amt_tofcst {
    label: "AGOP Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.agop_amt}, ${glm_property_future_fcst_f_ly.agop_amt}) ;;
    value_format_name: percent_1
  }

  measure: gop_amt_tofcst {
    label: "GOP Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.gop_amt}, ${glm_property_future_fcst_f_ly.gop_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_rev_amt_tofcst {
    label: "Rev Rms Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_rev_amt}, ${glm_property_future_fcst_f_ly.room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_rev_amt_tofcst {
    label: "Rev Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_rev_amt}, ${glm_property_future_fcst_f_ly.other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_rev_amt_tofcst {
    label: "Rev RB&E Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_rev_amt_tofcst {
    label: "Rev RB&E Banquet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_rev_amt_tofcst {
    label: "Rev RB&E Catering Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_catering_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_rev_amt_tofcst {
    label: "Rev RB&E Conference Services Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_rev_amt_tofcst {
    label: "Rev RB&E Outlet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_rev_amt_tofcst {
    label: "Rev RB&E Room Service Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_rev_amt_tofcst {
    label: "Rev RB&E Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_rev_amt_tofcst {
    label: "Rev Food RB&E Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_banquet_rev_amt_tofcst {
    label: "Rev Food RB&E Banquet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_catering_rev_amt_tofcst {
    label: "Rev Food RB&E Catering Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_catering_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_conference_services_rev_amt_tofcst {
    label: "Rev Food RB&E Conference Services Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_outlet_rev_amt_tofcst {
    label: "Rev Food RB&E Outlet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_room_service_rev_amt_tofcst {
    label: "Rev Food RB&E Room Service Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_other_rev_amt_tofcst {
    label: "Rev Food RB&E Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_rev_amt_tofcst {
    label: "Rev Beverage RB&E Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_banquet_rev_amt_tofcst {
    label: "Rev Beverage RB&E Banquet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_catering_rev_amt_tofcst {
    label: "Rev Beverage RB&E Catering Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_catering_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_conference_services_rev_amt_tofcst {
    label: "Rev Beverage RB&E Conference Services Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_outlet_rev_amt_tofcst {
    label: "Rev Beverage RB&E Outlet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_room_service_rev_amt_tofcst {
    label: "Rev Beverage RB&E Room Service Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_other_rev_amt_tofcst {
    label: "Rev Beverage RB&E Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_rev_amt_tofcst {
    label: "Rev Spa Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_rev_amt}, ${glm_property_future_fcst_f_ly.spa_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_amt_tofcst {
    label: "Rev Golf Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_rev_amt}, ${glm_property_future_fcst_f_ly.golf_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_rev_amt_tofcst {
    label: "Rev Fitness & Rec Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_rev_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_rev_amt_tofcst {
    label: "Rev Parking & Trans Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_rev_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_rev_amt_tofcst {
    label: "Rev Telecom Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_rev_amt}, ${glm_property_future_fcst_f_ly.telecom_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_rev_amt_tofcst {
    label: "Rev Retail Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_rev_amt}, ${glm_property_future_fcst_f_ly.retail_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_rev_amt_tofcst {
    label: "Rev Other Op. Dept. Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_rev_amt}, ${glm_property_future_fcst_f_ly.other_operated_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_rev_amt_tofcst {
    label: "Rev Mgmt Srvcs Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_rev_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_rev_amt_tofcst {
    label: "Rev Rentals & Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_rev_amt}, ${glm_property_future_fcst_f_ly.misc_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_rev_amt_tofcst {
    label: "Rev Nonoperating Realty Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_rev_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_rev_amt_tofcst {
    label: "Rev Nonoperating Airport Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_rev_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_rev_amt_tofcst {
    label: "Rev Nonoperating Utility Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_rev_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Expenses

  measure: exp_amt_tofcst_v {
    label: "Exp Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.exp_amt} - ${glm_property_future_fcst_f_ly.exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_exp_amt_tofcst_v {
    label: "Exp Rms Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_exp_amt} - ${glm_property_future_fcst_f_ly.room_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_exp_amt_tofcst_v {
    label: "Exp RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_exp_amt} - ${glm_property_future_fcst_f_ly.rbe_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_exp_amt_tofcst_v {
    label: "Exp Spa Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_exp_amt} - ${glm_property_future_fcst_f_ly.spa_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_exp_amt_tofcst_v {
    label: "Exp Golf Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_exp_amt} - ${glm_property_future_fcst_f_ly.golf_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_exp_amt_tofcst_v {
    label: "Exp Fitness & Rec Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_exp_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_exp_amt_tofcst_v {
    label: "Exp Parking & Trans Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_exp_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_exp_amt_tofcst_v {
    label: "Exp Telecom Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_exp_amt} - ${glm_property_future_fcst_f_ly.telecom_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_exp_amt_tofcst_v {
    label: "Exp Retail Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_exp_amt} - ${glm_property_future_fcst_f_ly.retail_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_exp_amt_tofcst_v {
    label: "Exp Other Op. Dept. Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_exp_amt} - ${glm_property_future_fcst_f_ly.other_operated_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_exp_amt_tofcst_v {
    label: "Exp Mgmt Srvcs Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_exp_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_exp_amt_tofcst_v {
    label: "Exp A&G Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.administrative_general_exp_amt} - ${glm_property_future_fcst_f_ly.administrative_general_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_exp_amt_tofcst_v {
    label: "Exp IT Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.information_technology_exp_amt} - ${glm_property_future_fcst_f_ly.information_technology_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_exp_amt_tofcst_v {
    label: "Exp S&M Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.sales_marketing_exp_amt} - ${glm_property_future_fcst_f_ly.sales_marketing_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_exp_amt_tofcst_v {
    label: "Exp R&M Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_exp_amt} - ${glm_property_future_fcst_f_ly.property_operations_maintenance_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_exp_amt_tofcst_v {
    label: "Exp Rentals & Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_exp_amt} - ${glm_property_future_fcst_f_ly.misc_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_exp_amt_tofcst_v {
    label: "Exp Nonoperating Realty Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_exp_amt_tofcst_v {
    label: "Exp Nonoperating Airport Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_exp_amt_tofcst_v {
    label: "Exp Nonoperating Utility Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Expenses % var

  measure: exp_amt_tofcst {
    label: "Exp Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.exp_amt}, ${glm_property_future_fcst_f_ly.exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_exp_amt_tofcst {
    label: "Exp Rms Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_exp_amt}, ${glm_property_future_fcst_f_ly.room_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_exp_amt_tofcst {
    label: "Exp RB&E Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_exp_amt}, ${glm_property_future_fcst_f_ly.rbe_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_exp_amt_tofcst {
    label: "Exp Spa Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_exp_amt}, ${glm_property_future_fcst_f_ly.spa_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_exp_amt_tofcst {
    label: "Exp Golf Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_exp_amt}, ${glm_property_future_fcst_f_ly.golf_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_exp_amt_tofcst {
    label: "Exp Fitness & Rec Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_exp_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_exp_amt_tofcst {
    label: "Exp Parking & Trans Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_exp_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_exp_amt_tofcst {
    label: "Exp Telecom Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_exp_amt}, ${glm_property_future_fcst_f_ly.telecom_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_exp_amt_tofcst {
    label: "Exp Retail Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_exp_amt}, ${glm_property_future_fcst_f_ly.retail_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_exp_amt_tofcst {
    label: "Exp Other Op. Dept. Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_exp_amt}, ${glm_property_future_fcst_f_ly.other_operated_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_exp_amt_tofcst {
    label: "Exp Mgmt Srvcs Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_exp_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_exp_amt_tofcst {
    label: "Exp A&G Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.administrative_general_exp_amt}, ${glm_property_future_fcst_f_ly.administrative_general_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_exp_amt_tofcst {
    label: "Exp IT Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.information_technology_exp_amt}, ${glm_property_future_fcst_f_ly.information_technology_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_exp_amt_tofcst {
    label: "Exp S&M Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.sales_marketing_exp_amt}, ${glm_property_future_fcst_f_ly.sales_marketing_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_exp_amt_tofcst {
    label: "Exp R&M Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_exp_amt}, ${glm_property_future_fcst_f_ly.property_operations_maintenance_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_exp_amt_tofcst {
    label: "Exp Rentals & Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_exp_amt}, ${glm_property_future_fcst_f_ly.misc_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_exp_amt_tofcst {
    label: "Exp Nonoperating Realty Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_exp_amt_tofcst {
    label: "Exp Nonoperating Airport Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_exp_amt_tofcst {
    label: "Exp Nonoperating Utility Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Other Expenses

  measure: other_exp_amt_tofcst_v {
    label: "Exp Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_exp_amt} - ${glm_property_future_fcst_f_ly.other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_other_exp_amt_tofcst_v {
    label: "Exp Other Rms Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_other_exp_amt} - ${glm_property_future_fcst_f_ly.room_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_exp_amt_tofcst_v {
    label: "Exp Other RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_exp_amt} - ${glm_property_future_fcst_f_ly.rbe_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_other_exp_amt_tofcst_v {
    label: "Exp Other Spa Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_other_exp_amt} - ${glm_property_future_fcst_f_ly.spa_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_other_exp_amt_tofcst_v {
    label: "Exp Other Golf Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_other_exp_amt} - ${glm_property_future_fcst_f_ly.golf_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_other_exp_amt_tofcst_v {
    label: "Exp Other Fitness & Rec Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_other_exp_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_other_exp_amt_tofcst_v {
    label: "Exp Other Parking & Trans Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_other_exp_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_other_exp_amt_tofcst_v {
    label: "Exp Other Telecom Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_other_exp_amt} - ${glm_property_future_fcst_f_ly.telecom_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_other_exp_amt_tofcst_v {
    label: "Exp Other Retail Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_other_exp_amt} - ${glm_property_future_fcst_f_ly.retail_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_other_exp_amt_tofcst_v {
    label: "Exp Other Other Op. Dept. Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_other_exp_amt} - ${glm_property_future_fcst_f_ly.other_operated_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_other_exp_amt_tofcst_v {
    label: "Exp Other Mgmt Srvcs Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_other_exp_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_other_exp_amt_tofcst_v {
    label: "Exp Other A&G Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.administrative_general_other_exp_amt} - ${glm_property_future_fcst_f_ly.administrative_general_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_other_exp_amt_tofcst_v {
    label: "Exp Other IT Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.information_technology_other_exp_amt} - ${glm_property_future_fcst_f_ly.information_technology_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_other_exp_amt_tofcst_v {
    label: "Exp Other S&M Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.sales_marketing_other_exp_amt} - ${glm_property_future_fcst_f_ly.sales_marketing_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_other_exp_amt_tofcst_v {
    label: "Exp Other R&M Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_other_exp_amt} - ${glm_property_future_fcst_f_ly.property_operations_maintenance_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_other_exp_amt_tofcst_v {
    label: "Exp Other Rentals & Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_other_exp_amt} - ${glm_property_future_fcst_f_ly.misc_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_other_exp_amt_tofcst_v {
    label: "Exp Other Nonoperating Realty Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_other_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_other_exp_amt_tofcst_v {
    label: "Exp Other Nonoperating Airport Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_other_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_other_exp_amt_tofcst_v {
    label: "Exp Other Nonoperating Utility Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_other_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Other Expenses % var

  measure: other_exp_amt_tofcst {
    label: "Exp Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_exp_amt}, ${glm_property_future_fcst_f_ly.other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_other_exp_amt_tofcst {
    label: "Exp Other Rms Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_other_exp_amt}, ${glm_property_future_fcst_f_ly.room_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_amt_tofcst {
    label: "Exp Other RB&E Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_exp_amt}, ${glm_property_future_fcst_f_ly.rbe_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_other_exp_amt_tofcst {
    label: "Exp Other Spa Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_other_exp_amt}, ${glm_property_future_fcst_f_ly.spa_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_other_exp_amt_tofcst {
    label: "Exp Other Golf Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_other_exp_amt}, ${glm_property_future_fcst_f_ly.golf_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_amt_tofcst {
    label: "Exp Other Fitness & Rec Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_other_exp_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_amt_tofcst {
    label: "Exp Other Parking & Trans Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_other_exp_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_amt_tofcst {
    label: "Exp Other Telecom Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_other_exp_amt}, ${glm_property_future_fcst_f_ly.telecom_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_other_exp_amt_tofcst {
    label: "Exp Other Retail Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_other_exp_amt}, ${glm_property_future_fcst_f_ly.retail_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_amt_tofcst {
    label: "Exp Other Other Op. Dept. Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_other_exp_amt}, ${glm_property_future_fcst_f_ly.other_operated_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_amt_tofcst {
    label: "Exp Other Mgmt Srvcs Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_other_exp_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_other_exp_amt_tofcst {
    label: "Exp Other A&G Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.administrative_general_other_exp_amt}, ${glm_property_future_fcst_f_ly.administrative_general_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_other_exp_amt_tofcst {
    label: "Exp Other IT Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.information_technology_other_exp_amt}, ${glm_property_future_fcst_f_ly.information_technology_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_other_exp_amt_tofcst {
    label: "Exp Other S&M Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.sales_marketing_other_exp_amt}, ${glm_property_future_fcst_f_ly.sales_marketing_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_other_exp_amt_tofcst {
    label: "Exp Other R&M Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_other_exp_amt}, ${glm_property_future_fcst_f_ly.property_operations_maintenance_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_other_exp_amt_tofcst {
    label: "Exp Other Rentals & Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_other_exp_amt}, ${glm_property_future_fcst_f_ly.misc_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_realty_other_exp_amt_tofcst {
    label: "Exp Other Nonoperating Realty Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_other_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_airport_other_exp_amt_tofcst {
    label: "Exp Other Nonoperating Airport Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_other_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_util_other_exp_amt_tofcst {
    label: "Exp Other Nonoperating Utility Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_other_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll

  measure: payroll_amt_tofcst_v {
    label: "Payroll Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.payroll_amt} - ${glm_property_future_fcst_f_ly.payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_payroll_amt_tofcst_v {
    label: "Payroll Rms Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_payroll_amt} - ${glm_property_future_fcst_f_ly.room_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_payroll_amt_tofcst_v {
    label: "Payroll RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_payroll_amt} - ${glm_property_future_fcst_f_ly.rbe_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_payroll_amt_tofcst_v {
    label: "Payroll Spa Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_payroll_amt} - ${glm_property_future_fcst_f_ly.spa_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_payroll_amt_tofcst_v {
    label: "Payroll Golf Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_payroll_amt} - ${glm_property_future_fcst_f_ly.golf_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_payroll_amt_tofcst_v {
    label: "Payroll Fitness & Rec Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_payroll_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_payroll_amt_tofcst_v {
    label: "Payroll Parking & Trans Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_payroll_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_payroll_amt_tofcst_v {
    label: "Payroll Telecom Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_payroll_amt} - ${glm_property_future_fcst_f_ly.telecom_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_payroll_amt_tofcst_v {
    label: "Payroll Retail Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_payroll_amt} - ${glm_property_future_fcst_f_ly.retail_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_payroll_amt_tofcst_v {
    label: "Payroll Other Op. Dept. Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_payroll_amt} - ${glm_property_future_fcst_f_ly.other_operated_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_payroll_amt_tofcst_v {
    label: "Payroll Mgmt Srvcs Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_payroll_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_payroll_amt_tofcst_v {
    label: "Payroll A&G Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.administrative_general_payroll_amt} - ${glm_property_future_fcst_f_ly.administrative_general_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_payroll_amt_tofcst_v {
    label: "Payroll IT Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.information_technology_payroll_amt} - ${glm_property_future_fcst_f_ly.information_technology_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_payroll_amt_tofcst_v {
    label: "Payroll S&M Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.sales_marketing_payroll_amt} - ${glm_property_future_fcst_f_ly.sales_marketing_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_payroll_amt_tofcst_v {
    label: "Payroll R&M Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_payroll_amt} - ${glm_property_future_fcst_f_ly.property_operations_maintenance_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_payroll_amt_tofcst_v {
    label: "Payroll Rentals & Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_payroll_amt} - ${glm_property_future_fcst_f_ly.misc_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_payroll_amt_tofcst_v {
    label: "Payroll Nonoperating Realty Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_payroll_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_payroll_amt_tofcst_v {
    label: "Payroll Nonoperating Airport Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_payroll_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_payroll_amt_tofcst_v {
    label: "Payroll Nonoperating Utility Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_payroll_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_payroll_amt_tofcst_v {
    label: "Payroll RB&E Outlet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_payroll_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_payroll_amt} ;;
    value_format_name: decimal_0
  }

  #-- Payroll % var

  measure: payroll_amt_tofcst {
    label: "Payroll Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.payroll_amt}, ${glm_property_future_fcst_f_ly.payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_payroll_amt_tofcst {
    label: "Payroll Rms Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_payroll_amt}, ${glm_property_future_fcst_f_ly.room_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_payroll_amt_tofcst {
    label: "Payroll RB&E Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_payroll_amt}, ${glm_property_future_fcst_f_ly.rbe_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_payroll_amt_tofcst {
    label: "Payroll Spa Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_payroll_amt}, ${glm_property_future_fcst_f_ly.spa_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_payroll_amt_tofcst {
    label: "Payroll Golf Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_payroll_amt}, ${glm_property_future_fcst_f_ly.golf_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_amt_tofcst {
    label: "Payroll Fitness & Rec Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_payroll_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_amt_tofcst {
    label: "Payroll Parking & Trans Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_payroll_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_payroll_amt_tofcst {
    label: "Payroll Telecom Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_payroll_amt}, ${glm_property_future_fcst_f_ly.telecom_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_payroll_amt_tofcst {
    label: "Payroll Retail Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_payroll_amt}, ${glm_property_future_fcst_f_ly.retail_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_amt_tofcst {
    label: "Payroll Other Op. Dept. Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_payroll_amt}, ${glm_property_future_fcst_f_ly.other_operated_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_amt_tofcst {
    label: "Payroll Mgmt Srvcs Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_payroll_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_payroll_amt_tofcst {
    label: "Payroll A&G Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.administrative_general_payroll_amt}, ${glm_property_future_fcst_f_ly.administrative_general_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_payroll_amt_tofcst {
    label: "Payroll IT Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.information_technology_payroll_amt}, ${glm_property_future_fcst_f_ly.information_technology_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_payroll_amt_tofcst {
    label: "Payroll S&M Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.sales_marketing_payroll_amt}, ${glm_property_future_fcst_f_ly.sales_marketing_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_payroll_amt_tofcst {
    label: "Payroll R&M Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_payroll_amt}, ${glm_property_future_fcst_f_ly.property_operations_maintenance_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_payroll_amt_tofcst {
    label: "Payroll Rentals & Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_payroll_amt}, ${glm_property_future_fcst_f_ly.misc_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_payroll_amt_tofcst {
    label: "Payroll Nonoperating Airport Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_payroll_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_payroll_amt_tofcst {
    label: "Payroll Nonoperating Realty Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_payroll_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_payroll_amt_tofcst {
    label: "Payroll Nonoperating Utility Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_payroll_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_payroll_amt_tofcst {
    label: "Payroll RB&E Outlet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_payroll_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_payroll_amt}) ;;
    value_format_name: percent_1
  }

  #-- Covers

  measure: rbe_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Banquet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_banquet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Catering Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_catering_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_catering_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Outlet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_outlet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Room Service Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_room_service_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_other_cover_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Covers % var

  measure: rbe_cover_cnt_tofcst {
    label: "Cvrs RB&E Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_cover_cnt_tofcst {
    label: "Cvrs RB&E Banquet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_banquet_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_banquet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_cover_cnt_tofcst {
    label: "Cvrs RB&E Catering Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_catering_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_catering_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_cover_cnt_tofcst {
    label: "Cvrs RB&E Outlet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_outlet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_cover_cnt_tofcst {
    label: "Cvrs RB&E Room Service Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_room_service_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_cover_cnt_tofcst {
    label: "Cvrs RB&E Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_other_cover_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Treatments

  measure: spa_treatment_cnt_tofcst_v {
    label: "Trtmnts Spa Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_treatment_cnt} - ${glm_property_future_fcst_f_ly.spa_treatment_cnt} ;;
    value_format_name: decimal_0
  }

  measure: golf_round_cnt_tofcst_v {
    label: "Rnds Golf Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_round_cnt} - ${glm_property_future_fcst_f_ly.golf_round_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Treatments % var

  measure: spa_treatment_cnt_tofcst {
    label: "Trtmnts Spa Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_treatment_cnt}, ${glm_property_future_fcst_f_ly.spa_treatment_cnt}) ;;
    value_format_name: percent_1
  }

  measure: golf_round_cnt_tofcst {
    label: "Rnds Golf Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_round_cnt}, ${glm_property_future_fcst_f_ly.golf_round_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Rooms

  measure: arrival_cnt_tofcst_v {
    label: "Arrivals Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.arrival_cnt} - ${glm_property_future_fcst_f_ly.arrival_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_room_cnt_tofcst_v {
    label: "Rms Occ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_transient_room_cnt_tofcst_v {
    label: "Rms Occ Transient Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_transient_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_transient_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_group_room_cnt_tofcst_v {
    label: "Rms Occ Group Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_group_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_group_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_contract_room_cnt_tofcst_v {
    label: "Rms Occ Contract Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_contract_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_contract_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avail_room_cnt_tofcst_v {
    label: "Rms Avail Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.avail_room_cnt} - ${glm_property_future_fcst_f_ly.avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_owner_room_cnt_tofcst_v {
    label: "Rms Occ Owner Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_owner_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_owner_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: comp_room_cnt_tofcst_v {
    label: "Rms Occ Comp Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.comp_room_cnt} - ${glm_property_future_fcst_f_ly.comp_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: net_avail_room_cnt_tofcst_v {
    label: "Rms Avail Net Fcst:LY - var"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.net_avail_room_cnt} - ${glm_property_future_fcst_f_ly.net_avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: transient_room_rev_amt_tofcst_v {
    label: "Rev Rms Transient Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.transient_room_rev_amt} - ${glm_property_future_fcst_f_ly.transient_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: group_room_rev_amt_tofcst_v {
    label: "Rev Rms Group Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.group_room_rev_amt} - ${glm_property_future_fcst_f_ly.group_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: contract_room_rev_amt_tofcst_v {
    label: "Rev Rms Contract Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.contract_room_rev_amt} - ${glm_property_future_fcst_f_ly.contract_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: no_show_room_rev_amt_tofcst_v {
    label: "Rev Rms No show Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.no_show_room_rev_amt} - ${glm_property_future_fcst_f_ly.no_show_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: service_charge_incl_room_rev_amt_tofcst_v {
    label: "Rev Rms Srvc Charge Act:Fcst - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.service_charge_incl_room_rev_amt} - ${glm_property_future_fcst_f_ly.service_charge_incl_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  #-- Rooms % var

  measure: arrival_cnt_tofcst {
    label: "Arrivals Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.arrival_cnt}, ${glm_property_future_fcst_f_ly.arrival_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_room_cnt_tofcst {
    label: "Rms Occ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_cnt_tofcst {
    label: "Rms Occ Transient Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_transient_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_transient_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_cnt_tofcst {
    label: "Rms Occ Group Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_group_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_group_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_cnt_tofcst {
    label: "Rms Occ Contract Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_contract_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_contract_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: avail_room_cnt_tofcst {
    label: "Rms Avail Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.avail_room_cnt}, ${glm_property_future_fcst_f_ly.avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_owner_room_cnt_tofcst {
    label: "Rms Occ Owner Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_owner_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_owner_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: comp_room_cnt_tofcst {
    label: "Rms Occ Comp Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.comp_room_cnt}, ${glm_property_future_fcst_f_ly.comp_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: net_avail_room_cnt_tofcst {
    label: "Rms Avail Net Fcst:LY - var %"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.net_avail_room_cnt}, ${glm_property_future_fcst_f_ly.net_avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: transient_room_rev_amt_tofcst {
    label: "Rev Rms Transient Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.transient_room_rev_amt}, ${glm_property_future_fcst_f_ly.transient_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: group_room_rev_amt_tofcst {
    label: "Rev Rms Group Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.group_room_rev_amt}, ${glm_property_future_fcst_f_ly.group_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: contract_room_rev_amt_tofcst {
    label: "Rev Rms Contract Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.contract_room_rev_amt}, ${glm_property_future_fcst_f_ly.contract_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Profit

  measure: profit_amt_tofcst_v {
    label: "Profit Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.profit_amt} - ${glm_property_future_fcst_f_ly.profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_profit_amt_tofcst_v {
    label: "Profit Rms Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_profit_amt} - ${glm_property_future_fcst_f_ly.room_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_profit_amt_tofcst_v {
    label: "Profit RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_profit_amt_tofcst_v {
    label: "Profit RB&E Banquet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_banquet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_profit_amt_tofcst_v {
    label: "Profit RB&E Catering Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_catering_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_catering_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_profit_amt_tofcst_v {
    label: "Profit RB&E Conference Services Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_conference_services_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_conference_services_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_profit_amt_tofcst_v {
    label: "Profit RB&E Outlet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_profit_amt_tofcst_v {
    label: "Profit RB&E Room Service Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_room_service_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_profit_amt_tofcst_v {
    label: "Profit RB&E Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_other_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_profit_amt_tofcst_v {
    label: "Profit Spa Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_profit_amt} - ${glm_property_future_fcst_f_ly.spa_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_profit_amt_tofcst_v {
    label: "Profit Golf Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_profit_amt} - ${glm_property_future_fcst_f_ly.golf_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_profit_amt_tofcst_v {
    label: "Profit Fitness & Rec Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_profit_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_profit_amt_tofcst_v {
    label: "Profit Parking & Trans Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_profit_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_profit_amt_tofcst_v {
    label: "Profit Telecom Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_profit_amt} - ${glm_property_future_fcst_f_ly.telecom_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_profit_amt_tofcst_v {
    label: "Profit Retail Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_profit_amt} - ${glm_property_future_fcst_f_ly.retail_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_profit_amt_tofcst_v {
    label: "Profit Other Op. Dept. Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_profit_amt} - ${glm_property_future_fcst_f_ly.other_operated_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_profit_amt_tofcst_v {
    label: "Profit Mgmt Srvcs Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_profit_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_profit_amt_tofcst_v {
    label: "Profit Rentals & Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_profit_amt} - ${glm_property_future_fcst_f_ly.misc_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_profit_amt_tofcst_v {
    label: "Profit Nonoperating Realty Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_profit_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_profit_amt_tofcst_v {
    label: "Profit Nonoperating Airport Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_profit_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_profit_amt_tofcst_v {
    label: "Profit Nonoperating Utility Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_profit_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_profit_amt_tofcst_v {
    label: "Profit Undistributed Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.undistributed_profit_amt} - ${glm_property_future_fcst_f_ly.undistributed_profit_amt} ;;
    value_format_name: decimal_0
  }

  #-- Profit % var

  measure: profit_amt_tofcst {
    label: "Profit Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.profit_amt}, ${glm_property_future_fcst_f_ly.profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_profit_amt_tofcst {
    label: "Profit Rms Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_profit_amt}, ${glm_property_future_fcst_f_ly.room_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_profit_amt_tofcst {
    label: "Profit RB&E Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_profit_amt_tofcst {
    label: "Profit RB&E Banquet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_banquet_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_banquet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_profit_amt_tofcst {
    label: "Profit RB&E Catering Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_catering_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_catering_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_profit_amt_tofcst {
    label: "Profit RB&E Conference Services Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_conference_services_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_conference_services_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_profit_amt_tofcst {
    label: "Profit RB&E Outlet Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_profit_amt_tofcst {
    label: "Profit RB&E Room Service Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_room_service_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_profit_amt_tofcst {
    label: "Profit RB&E Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_other_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_profit_amt_tofcst {
    label: "Profit Spa Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_profit_amt}, ${glm_property_future_fcst_f_ly.spa_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_profit_amt_tofcst {
    label: "Profit Golf Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_profit_amt}, ${glm_property_future_fcst_f_ly.golf_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_profit_amt_tofcst {
    label: "Profit Fitness & Rec Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_profit_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_profit_amt_tofcst {
    label: "Profit Parking & Trans Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_profit_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_profit_amt_tofcst {
    label: "Profit Telecom Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_profit_amt}, ${glm_property_future_fcst_f_ly.telecom_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_profit_amt_tofcst {
    label: "Profit Retail Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_profit_amt}, ${glm_property_future_fcst_f_ly.retail_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_profit_amt_tofcst {
    label: "Profit Other Op. Dept. Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_profit_amt}, ${glm_property_future_fcst_f_ly.other_operated_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_profit_amt_tofcst {
    label: "Profit Mgmt Srvcs Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_profit_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_profit_amt_tofcst {
    label: "Profit Rentals & Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_profit_amt}, ${glm_property_future_fcst_f_ly.misc_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_profit_amt_tofcst {
    label: "Profit Nonoperating Realty Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_profit_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_profit_amt_tofcst {
    label: "Profit Nonoperating Airport Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_profit_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_profit_amt_tofcst {
    label: "Profit Nonoperating Utility Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_profit_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: undistributed_profit_amt_tofcst {
    label: "Profit Undistributed Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.undistributed_profit_amt}, ${glm_property_future_fcst_f_ly.undistributed_profit_amt}) ;;
    value_format_name: percent_1
  }




  #-- Profit % var total rev

  measure: profit_rev_pct_tofcst_v {
    label: "Profit /TRev RB&E % Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.profit_rev_pct} - ${glm_property_future_fcst_f_ly.profit_rev_pct};;
    value_format_name: percent_1
  }

  measure: rbe_profit_rev_pct_tofcst_v {
    label: "Profit /Rev RB&E % Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_profit_rev_pct} - ${glm_property_future_fcst_f_ly.rbe_profit_rev_pct};;
    value_format_name: percent_1
  }

  measure: profit_rev_pct_tofcst{
    label: "Profit /TRev RB&E % Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.profit_rev_pct}, ${glm_property_future_fcst_f_ly.profit_rev_pct});;
    value_format_name: percent_1
  }

  measure: rbe_profit_rev_pct_tofcst {
    label: "Profit /Rev RB&E % Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_profit_rev_pct}, ${glm_property_future_fcst_f_ly.rbe_profit_rev_pct});;
    value_format_name: percent_1
  }

  #-- Cost

  measure: cost_of_sales_amt_tofcst_v {
    label: "COS Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_cost_of_sales_amt_tofcst_v {
    label: "COS Rms Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.room_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_cost_of_sales_amt_tofcst_v {
    label: "COS RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_cost_of_sales_amt_tofcst_v {
    label: "COS Spa Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.spa_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_cost_of_sales_amt_tofcst_v {
    label: "COS Golf Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.golf_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_cost_of_sales_amt_tofcst_v {
    label: "COS Fitness & Rec Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_cost_of_sales_amt_tofcst_v {
    label: "COS Parking & Trans Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_cost_of_sales_amt_tofcst_v {
    label: "COS Telecom Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.telecom_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_cost_of_sales_amt_tofcst_v {
    label: "COS Retail Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.retail_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_cost_of_sales_amt_tofcst_v {
    label: "COS Other Op. Dept. Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.other_operated_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_cost_of_sales_amt_tofcst_v {
    label: "COS Mgmt Srvcs Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_cost_of_sales_amt_tofcst_v {
    label: "COS Rentals & Other Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.misc_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_cost_of_sales_amt_tofcst_v {
    label: "COS Nonoperating Realty Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_cost_of_sales_amt_tofcst_v {
    label: "COS Nonoperating Airport Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_cost_of_sales_amt_tofcst_v {
    label: "COS Nonoperating Utility Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_cost_of_sales_amt_tofcst_v {
    label: "COS RB&E Food Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.food_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_cost_of_sales_amt_tofcst_v {
    label: "COS RB&E Beverage Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cost_of_sales_amt_tofcst_v {
    label: "COS RB&E Outlet Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_tofcst_v {
    label: "Rev /Trtmnt Spa Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_rev_treatment_avg_amt} - ${glm_property_future_fcst_f_ly.spa_rev_treatment_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_rev_round_avg_amt_tofcst_v {
    label: "Rev /Rnd Golf Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_rev_round_avg_amt} - ${glm_property_future_fcst_f_ly.golf_rev_round_avg_amt} ;;
    value_format_name: decimal_2
  }

  #-- Cost % var

  measure: cost_of_sales_amt_tofcst {
    label: "COS Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_cost_of_sales_amt_tofcst {
    label: "COS Rms Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.room_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_cost_of_sales_amt_tofcst {
    label: "COS RB&E Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_cost_of_sales_amt_tofcst {
    label: "COS Spa Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.spa_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_cost_of_sales_amt_tofcst {
    label: "COS Golf Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.golf_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_cost_of_sales_amt_tofcst {
    label: "COS Fitness & Rec Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_cost_of_sales_amt_tofcst {
    label: "COS Parking & Trans Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_cost_of_sales_amt_tofcst {
    label: "COS Telecom Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.telecom_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_cost_of_sales_amt_tofcst {
    label: "COS Retail Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.retail_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_cost_of_sales_amt_tofcst {
    label: "COS Other Op. Dept. Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.other_operated_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_cost_of_sales_amt_tofcst {
    label: "COS Mgmt Srvcs Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_cost_of_sales_amt_tofcst {
    label: "COS Rentals & Other Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.misc_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_cost_of_sales_amt_tofcst {
    label: "COS Nonoperating Realty Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_cost_of_sales_amt_tofcst {
    label: "COS Nonoperating Airport Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_cost_of_sales_amt_tofcst {
    label: "COS Nonoperating Utility Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_cost_of_sales_amt_tofcst {
    label: "COS RB&E Food Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.food_rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_cost_of_sales_amt_tofcst {
    label: "COS RB&E Beverage Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg Rev per Spa Treatment / Golf Round % var

  measure: spa_rev_treatment_avg_amt_tofcst {
    label: "Rev /Trtmnt Spa Fcst:LY - var %"
    description: "Fcst - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_rev_treatment_avg_amt}, ${glm_property_future_fcst_f_ly.spa_rev_treatment_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_round_avg_amt_tofcst {
    label: "Rev /Rnd Golf Fcst:LY - var %"
    description: "Fcst - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_rev_round_avg_amt}, ${glm_property_future_fcst_f_ly.golf_rev_round_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Occupancy

  measure: occupied_room_pct_tofcst_v {
    label: "Rms Occ % Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_room_pct} - ${glm_property_future_fcst_f_ly.occupied_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tofcst_v {
    label: "Rms Occ % Group Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_group_room_pct} - ${glm_property_future_fcst_f_ly.occupied_group_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tofcst_v {
    label: "Rms Occ % Transient Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_transient_room_pct} - ${glm_property_future_fcst_f_ly.occupied_transient_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tofcst_v {
    label: "Rms Occ % Contract Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_contract_room_pct} - ${glm_property_future_fcst_f_ly.occupied_contract_room_pct} ;;
    value_format_name: percent_1
  }

  #-- Occupancy % var

  measure: occupied_room_pct_tofcst {
    label: "Rms Occ % Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_room_pct}, ${glm_property_future_fcst_f_ly.occupied_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tofcst {
    label: "Rms Occ % Group Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_group_room_pct}, ${glm_property_future_fcst_f_ly.occupied_group_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tofcst {
    label: "Rms Occ % Transient Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_transient_room_pct}, ${glm_property_future_fcst_f_ly.occupied_transient_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tofcst {
    label: "Rms Occ % Contract Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_contract_room_pct}, ${glm_property_future_fcst_f_ly.occupied_contract_room_pct}) ;;
    value_format_name: percent_1
  }

  #-- ADR

  measure: adr_amt_tofcst_v {
    label: "ADR $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.adr_amt} - ${glm_property_future_fcst_f_ly.adr_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_transient_amt_tofcst_v {
    label: "ADR Transient $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.adr_transient_amt} - ${glm_property_future_fcst_f_ly.adr_transient_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_group_amt_tofcst_v {
    label: "ADR Group $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.adr_group_amt} - ${glm_property_future_fcst_f_ly.adr_group_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_contract_amt_tofcst_v {
    label: "ADR Contract $ Fcst:LY - var"
    description: "Fcst- LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.adr_contract_amt} - ${glm_property_future_fcst_f_ly.adr_contract_amt} ;;
    value_format_name: decimal_2
  }

  #-- ADR % var

  measure: adr_amt_tofcst {
    label: "ADR $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.adr_amt}, ${glm_property_future_fcst_f_ly.adr_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_transient_amt_tofcst {
    label: "ADR Transient $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.adr_transient_amt}, ${glm_property_future_fcst_f_ly.adr_transient_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_group_amt_tofcst {
    label: "ADR Group $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.adr_group_amt}, ${glm_property_future_fcst_f_ly.adr_group_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_contract_amt_tofcst {
    label: "ADR Contract $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.adr_contract_amt}, ${glm_property_future_fcst_f_ly.adr_contract_amt} );;
    value_format_name: percent_1
  }

  #-- Room nights

  measure: room_night_transient_pct_tofcst_v {
    label: "Rms Night Transient % Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_night_transient_pct} - ${glm_property_future_fcst_f_ly.room_night_transient_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tofcst_v {
    label: "Rms Night Group % Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_night_group_pct} - ${glm_property_future_fcst_f_ly.room_night_group_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_contract_pct_tofcst_v {
    label: "Rms Night Contract % Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_night_contract_pct} - ${glm_property_future_fcst_f_ly.room_night_contract_pct} ;;
    value_format_name: percent_1
  }

  #-- Room nights % var

  measure: room_night_transient_pct_tofcst {
    label: "Rms Night Transient % Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_night_transient_pct}, ${glm_property_future_fcst_f_ly.room_night_transient_pct}) ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tofcst {
    label: "Rms Night Group % Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_night_group_pct}, ${glm_property_future_fcst_f_ly.room_night_group_pct}) ;;
    value_format_name: percent_1
  }

  measure: room_night_contract_pct_tofcst {
    label: "Rms Night Contract % Fcst:LY - var %"
    description: "(Fcst- LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_night_contract_pct}, ${glm_property_future_fcst_f_ly.room_night_contract_pct} );;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_amt_tofcst_v {
    label: "Rev PAR $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rev_par_amt} - ${glm_property_future_fcst_f_ly.rev_par_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_group_amt_tofcst_v {
    label: "Rev PAR $ Group Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rev_par_group_amt} - ${glm_property_future_fcst_f_ly.rev_par_group_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_transient_amt_tofcst_v {
    label: "Rev PAR $ Transient Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rev_par_transient_amt} - ${glm_property_future_fcst_f_ly.rev_par_transient_amt} ;;
    value_format_name: usd_0
  }

  #-- Rev PAR % var

  measure: rev_par_amt_tofcst {
    label: "Rev PAR $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rev_par_amt}, ${glm_property_future_fcst_f_ly.rev_par_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_group_amt_tofcst {
    label: "Rev PAR $ Group Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rev_par_group_amt}, ${glm_property_future_fcst_f_ly.rev_par_group_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_transient_amt_tofcst {
    label: "Rev PAR $ Transient Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rev_par_transient_amt}, ${glm_property_future_fcst_f_ly.rev_par_transient_amt}) ;;
    value_format_name: percent_1
  }

  #-- Rev POR

  measure: rev_por_amt_tofcst_v {
    label: "Rev POR $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rev_por_amt} - ${glm_property_future_fcst_f_ly.rev_por_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_por_amt_tofcst {
    label: "Rev POR $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rev_por_amt}, ${glm_property_future_fcst_f_ly.rev_por_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg check

  measure: rbe_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Avg $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Banquet Avg $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_banquet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Catering Avg $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_catering_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_catering_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Outlet Avg $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_room_service_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Room Service Avg $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_room_service_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_room_service_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Other Avg $ Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_other_check_avg_amt} ;;
    value_format_name: decimal_2
  }


  #-- Avg check % var

  measure: rbe_check_avg_amt_tofcst {
    label: "Cvrs RB&E Avg $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_check_avg_amt_tofcst {
    label: "Cvrs RB&E Banquet Avg $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_banquet_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_banquet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_check_avg_amt_tofcst {
    label: "Cvrs RB&E Catering Avg $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_catering_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_catering_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_check_avg_amt_tofcst {
    label: "Cvrs RB&E Outlet Avg $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_check_avg_amt_tofcst {
    label: "Cvrs RB&E Room Service Avg $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_room_service_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_room_service_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_check_avg_amt_tofcst {
    label: "Cvrs RB&E Other Avg $ Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_other_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg length of stay

  measure: length_of_stay_avg_amt_tofcst_v {
    label: "Stay Length Avg Night Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.length_of_stay_avg_amt} - ${glm_property_future_fcst_f_ly.length_of_stay_avg_amt} ;;
    value_format_name: decimal_1
  }

  #-- Avg length of stay % var

  measure: length_of_stay_avg_amt_tofcst {
    label: "Stay Length Avg Night Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.length_of_stay_avg_amt}, ${glm_property_future_fcst_f_ly.length_of_stay_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev

  measure: payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.payroll_rev_pct} - ${glm_property_future_fcst_f_ly.payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev % var

  measure: payroll_rev_pct_tofcst {
    label: "Payroll /Rev Fcst:LY - var %"
    description: "(Fcst - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.payroll_rev_pct}, ${glm_property_future_fcst_f_ly.payroll_rev_pct}) ;;
    value_format_name: percent_1
  }

  #-- Payroll Rev %

  measure: room_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Rms Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.room_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: rbe_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev RB&E Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.rbe_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: spa_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Spa Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.spa_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: golf_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Golf Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.golf_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Fitness & Rec Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.fitness_recreation_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Parking & Trans Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.parking_transportation_payroll_rev_pct} ;;
    value_format_name: usd_0
  }

  measure: telecom_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Telecom Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.telecom_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: retail_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Retail Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.retail_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Other Op. Dept. Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.other_operated_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Mgmt Srvcs Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.property_mgmt_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: misc_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Rentals & Other % Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.misc_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  #-- Rental property splits

  measure: room_rental_mgmt_2_19_rev_amt_tofcst_v {
    label: "Rev Rms Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_ly.room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: avail_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Avail Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.avail_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_owner_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Owner Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_owner_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_owner_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: net_avail_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Avail Net Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.net_avail_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.net_avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: transient_room_rental_mgmt_2_19_rev_amt_tofcst_v {
    label: "Rev Rms Transient Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.transient_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_ly.transient_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: usd_0
  }
  measure: group_room_rental_mgmt_2_19_rev_amt_tofcst_v {
    label: "Rev Rms Group Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.group_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_ly.group_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: contract_room_rental_mgmt_2_19_rev_amt_tofcst_v {
    label: "Rev Rms Contract Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.contract_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_ly.contract_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_transient_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Transient Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_transient_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_transient_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_group_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Group Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_group_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_group_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_contract_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Contract Rental Fcst:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_contract_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_contract_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }

}
