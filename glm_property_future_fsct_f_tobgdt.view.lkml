view: glm_property_future_fcst_f_tobdgt {

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

  measure: rev_amt_tobdgt_v {
    label: "Rev Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rev_amt} - ${glm_property_future_fcst_f_bdgt.rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rev_abs_amt_tobdgt_v {
  #  label: "Rev Abs Fcst:Bdgt - var"
  #  description: "Abs(Fcst - Bdgt)"
  #  type: number
  #  sql: abs(${glm_property_future_fcst_f_fcstact.rev_amt} - ${glm_property_future_fcst_f_bdgt.rev_amt}) ;;
  #  value_format_name: decimal_0
  #}

  measure: agop_amt_tobdgt_v {
    label: "AGOP Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.agop_amt} - ${glm_property_future_fcst_f_bdgt.agop_amt} ;;
    value_format_name: decimal_0
  }

  #measure: agop_abs_amt_tobdgt_v {
  #  label: "AGOP Abs Fcst:Bdgt - var"
  #  description: "Abs(Fcst - Bdgt)"
  #  type: number
  #  sql: abs(${glm_property_future_fcst_f_fcstact.agop_amt} - ${glm_property_future_fcst_f_bdgt.agop_amt}) ;;
  #  value_format_name: decimal_0
  #}

  measure: gop_amt_tobdgt_v {
    label: "GOP Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.gop_amt} - ${glm_property_future_fcst_f_bdgt.gop_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_rev_amt_tobdgt_v {
    label: "Rev Rms Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_rev_amt} - ${glm_property_future_fcst_f_bdgt.room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_rev_amt_tobdgt_v {
    label: "Rev Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_rev_amt} - ${glm_property_future_fcst_f_bdgt.other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_rev_amt_tobdgt_v {
    label: "Rev RB&E Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_rev_amt_tobdgt_v {
    label: "Rev RB&E Banquet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_rev_amt_tobdgt_v {
    label: "Rev RB&E Catering Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_catering_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_rev_amt_tobdgt_v {
    label: "Rev RB&E Conference Services Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_banquet_catering_conference_services_rev_amt_tobdgt_v {
  #  label: "Rev RB&E Conference Services Fcst:Bdgt - var"
  #  description: "Fcst - Bdgt"
  #  type: number
  #  sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_catering_conference_services_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: rbe_outlet_rev_amt_tobdgt_v {
    label: "Rev RB&E Outlet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_rev_amt_tobdgt_v {
    label: "Rev RB&E Room Service Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_rev_amt_tobdgt_v {
    label: "Rev RB&E Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_outlet_other_rev_amt_tobdgt_v {
  #  label: "Rev RB&E Outlet Other Fcst:Bdgt - var"
  #  description: "Fcst - Bdgt"
  #  type: number
  #  sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_other_rev_amt} ;;
  #  value_format_name: decimal_0
  #}


  measure: food_rbe_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_banquet_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Banquet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_catering_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Catering Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_catering_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_conference_services_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Conference Services Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: food_rbe_banquet_catering_conference_services_rev_amt_tobdgt_v {
  #  label: "Rev Food RB&E Conference Services Fcst:Bdgt - var"
  #  description: "Fcst - Bdgt"
  #  type: number
  #  sql: ${glm_property_future_fcst_f_fcstact.food_rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_banquet_catering_conference_services_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: food_rbe_outlet_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Outlet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_room_service_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Room Service Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_other_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }


  measure: beverage_rbe_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_banquet_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Banquet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_catering_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Catering Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_catering_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_conference_services_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Conference Services Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: beverage_rbe_banquet_catering_conference_services_rev_amt_tobdgt_v {
  #  label: "Rev Beverage RB&E Conference Services Fcst:Bdgt - var"
  #  description: "Fcst - Bdgt"
  #  type: number
  #  sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_banquet_catering_conference_services_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: beverage_rbe_outlet_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Outlet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_room_service_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Room Service Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_other_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_rev_amt_tobdgt_v {
    label: "Rev Spa Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_rev_amt} - ${glm_property_future_fcst_f_bdgt.spa_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_rev_amt_tobdgt_v {
    label: "Rev Golf Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_rev_amt} - ${glm_property_future_fcst_f_bdgt.golf_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_rev_amt_tobdgt_v {
    label: "Rev Fitness & Rec Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_rev_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_rev_amt_tobdgt_v {
    label: "Rev Parking & Trans Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_rev_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_rev_amt_tobdgt_v {
    label: "Rev Telecom Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_rev_amt} - ${glm_property_future_fcst_f_bdgt.telecom_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_rev_amt_tobdgt_v {
    label: "Rev Retail Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_rev_amt} - ${glm_property_future_fcst_f_bdgt.retail_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: spa_fitness_recreation_rev_amt_tobdgt_v {
  #  label: "Rev Spa Fitness & Rec Fcst:Bdgt - var"
  #  description: "Fcst - Bdgt"
  #  type: number
  #  sql: ${glm_property_future_fcst_f_fcstact.spa_fitness_recreation_rev_amt} - ${glm_property_future_fcst_f_bdgt.spa_fitness_recreation_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: other_operated_rev_amt_tobdgt_v {
    label: "Rev Other Op. Dept. Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_rev_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_rev_amt_tobdgt_v {
    label: "Rev Mgmt Srvcs Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_rev_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_rev_amt_tobdgt_v {
    label: "Rev Rentals & Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_rev_amt} - ${glm_property_future_fcst_f_bdgt.misc_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_rev_amt_tobdgt_v {
    label: "Rev Nonoperating Realty Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_rev_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_rev_amt_tobdgt_v {
    label: "Rev Nonoperating Airport Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_rev_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_rev_amt_tobdgt_v {
    label: "Rev Nonoperating Utility Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_rev_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_rev_amt} ;;
    value_format_name: decimal_0
  }


#-- Rev % var


  measure: rev_amt_tobdgt {
    label: "Rev Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rev_amt}, ${glm_property_future_fcst_f_bdgt.rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: agop_amt_tobdgt {
    label: "AGOP Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.agop_amt}, ${glm_property_future_fcst_f_bdgt.agop_amt}) ;;
    value_format_name: percent_1
  }

  measure: gop_amt_tobdgt {
    label: "GOP Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.gop_amt}, ${glm_property_future_fcst_f_bdgt.gop_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_rev_amt_tobdgt {
    label: "Rev Rms Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_rev_amt}, ${glm_property_future_fcst_f_bdgt.room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_rev_amt_tobdgt {
    label: "Rev Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_rev_amt}, ${glm_property_future_fcst_f_bdgt.other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_rev_amt_tobdgt {
    label: "Rev RB&E Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_rev_amt_tobdgt {
    label: "Rev RB&E Banquet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_rev_amt_tobdgt {
    label: "Rev RB&E Catering Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_catering_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_rev_amt_tobdgt {
    label: "Rev RB&E Conference Services Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  #measure: rbe_banquet_catering_conference_services_rev_amt_tobdgt {
  #  label: "Rev RB&E Banquet Catering Conference Services Fcst:Bdgt - var %"
  #  description: "(Fcst - Bdgt) / Bdgt"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_banquet_catering_conference_services_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_catering_conference_services_rev_amt}) ;;
  #  value_format_name: percent_1
  #}

  measure: rbe_outlet_rev_amt_tobdgt {
    label: "Rev RB&E Outlet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_rev_amt_tobdgt {
    label: "Rev RB&E Room Service Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_rev_amt_tobdgt {
    label: "Rev RB&E Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  #measure: rbe_outlet_other_rev_amt_tobdgt {
  #  label: "Rev RB&E Outlet Other Fcst:Bdgt - var %"
  #  description: "(Fcst - Bdgt) / Bdgt"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_other_rev_amt}) ;;
  #  value_format_name: percent_1
  #}



  measure: food_rbe_rev_amt_tobdgt {
    label: "Rev Food RB&E Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_banquet_rev_amt_tobdgt {
    label: "Rev Food RB&E Banquet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_catering_rev_amt_tobdgt {
    label: "Rev Food RB&E Catering Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_catering_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_conference_services_rev_amt_tobdgt {
    label: "Rev Food RB&E Conference Services Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_outlet_rev_amt_tobdgt {
    label: "Rev Food RB&E Outlet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_room_service_rev_amt_tobdgt {
    label: "Rev Food RB&E Room Service Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_other_rev_amt_tobdgt {
    label: "Rev Food RB&E Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.food_rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }


  measure: beverage_rbe_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_banquet_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Banquet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_catering_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Catering Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_catering_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_conference_services_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Conference Services Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_outlet_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Outlet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_room_service_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Room Service Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_other_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.beverage_rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_rev_amt_tobdgt {
    label: "Rev Spa Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_rev_amt}, ${glm_property_future_fcst_f_bdgt.spa_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_amt_tobdgt {
    label: "Rev Golf Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_rev_amt}, ${glm_property_future_fcst_f_bdgt.golf_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_rev_amt_tobdgt {
    label: "Rev Fitness & Rec Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_rev_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_rev_amt_tobdgt {
    label: "Rev Parking & Trans Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_rev_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_rev_amt_tobdgt {
    label: "Rev Telecom Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_rev_amt}, ${glm_property_future_fcst_f_bdgt.telecom_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_rev_amt_tobdgt {
    label: "Rev Retail Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_rev_amt}, ${glm_property_future_fcst_f_bdgt.retail_rev_amt}) ;;
    value_format_name: percent_1
  }

  #measure: spa_fitness_recreation_rev_amt_tobdgt {
  #  label: "Rev Spa Fitness & Rec Fcst:Bdgt - var %"
  #  description: "(Fcst - Bdgt) / Bdgt"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_fitness_recreation_rev_amt}, ${glm_property_future_fcst_f_bdgt.spa_fitness_recreation_rev_amt}) ;;
  #  value_format_name: percent_1
  #}

  measure: other_operated_rev_amt_tobdgt {
    label: "Rev Other Op. Dept. Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_rev_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_rev_amt_tobdgt {
    label: "Rev Mgmt Srvcs Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_rev_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_rev_amt_tobdgt {
    label: "Rev Rentals & Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_rev_amt}, ${glm_property_future_fcst_f_bdgt.misc_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_rev_amt_tobdgt {
    label: "Rev Nonoperating Realty Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_rev_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_rev_amt_tobdgt {
    label: "Rev Nonoperating Airport Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_rev_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_rev_amt_tobdgt {
    label: "Rev Nonoperating Utility Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_rev_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Expenses

  measure: exp_amt_tobdgt_v {
    label: "Exp Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.exp_amt} - ${glm_property_future_fcst_f_bdgt.exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_exp_amt_tobdgt_v {
    label: "Exp Rms Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_exp_amt} - ${glm_property_future_fcst_f_bdgt.room_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_exp_amt_tobdgt_v {
    label: "Exp RB&E Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_exp_amt} - ${glm_property_future_fcst_f_bdgt.rbe_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_exp_amt_tobdgt_v {
    label: "Exp Spa Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_exp_amt} - ${glm_property_future_fcst_f_bdgt.spa_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_exp_amt_tobdgt_v {
    label: "Exp Golf Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_exp_amt} - ${glm_property_future_fcst_f_bdgt.golf_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_exp_amt_tobdgt_v {
    label: "Exp Fitness & Rec Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_exp_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_exp_amt_tobdgt_v {
    label: "Exp Parking & Trans Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_exp_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_exp_amt_tobdgt_v {
    label: "Exp Telecom Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_exp_amt} - ${glm_property_future_fcst_f_bdgt.telecom_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_exp_amt_tobdgt_v {
    label: "Exp Retail Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_exp_amt} - ${glm_property_future_fcst_f_bdgt.retail_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_exp_amt_tobdgt_v {
    label: "Exp Other Op. Dept. Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_exp_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_exp_amt_tobdgt_v {
    label: "Exp Mgmt Srvcs Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_exp_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_exp_amt_tobdgt_v {
    label: "Exp A&G Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.administrative_general_exp_amt} - ${glm_property_future_fcst_f_bdgt.administrative_general_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_exp_amt_tobdgt_v {
    label: "Exp IT Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.information_technology_exp_amt} - ${glm_property_future_fcst_f_bdgt.information_technology_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_exp_amt_tobdgt_v {
    label: "Exp S&M Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.sales_marketing_exp_amt} - ${glm_property_future_fcst_f_bdgt.sales_marketing_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_exp_amt_tobdgt_v {
    label: "Exp R&M Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_exp_amt} - ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_exp_amt_tobdgt_v {
    label: "Exp Rentals & Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_exp_amt} - ${glm_property_future_fcst_f_bdgt.misc_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_exp_amt_tobdgt_v {
    label: "Exp Nonoperating Realty Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_exp_amt_tobdgt_v {
    label: "Exp Nonoperating Airport Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_exp_amt_tobdgt_v {
    label: "Exp Nonoperating Utility Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Expenses % var

  measure: exp_amt_tobdgt {
    label: "Exp Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.exp_amt}, ${glm_property_future_fcst_f_bdgt.exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_exp_amt_tobdgt {
    label: "Exp Rms Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_exp_amt}, ${glm_property_future_fcst_f_bdgt.room_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_exp_amt_tobdgt {
    label: "Exp RB&E Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_exp_amt}, ${glm_property_future_fcst_f_bdgt.rbe_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_exp_amt_tobdgt {
    label: "Exp Spa Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_exp_amt}, ${glm_property_future_fcst_f_bdgt.spa_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_exp_amt_tobdgt {
    label: "Exp Golf Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_exp_amt}, ${glm_property_future_fcst_f_bdgt.golf_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_exp_amt_tobdgt {
    label: "Exp Fitness & Rec Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_exp_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_exp_amt_tobdgt {
    label: "Exp Parking & Trans Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_exp_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_exp_amt_tobdgt {
    label: "Exp Telecom Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_exp_amt}, ${glm_property_future_fcst_f_bdgt.telecom_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_exp_amt_tobdgt {
    label: "Exp Retail Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_exp_amt}, ${glm_property_future_fcst_f_bdgt.retail_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_exp_amt_tobdgt {
    label: "Exp Other Op. Dept. Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_exp_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_exp_amt_tobdgt {
    label: "Exp Mgmt Srvcs Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_exp_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_exp_amt_tobdgt {
    label: "Exp A&G Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.administrative_general_exp_amt}, ${glm_property_future_fcst_f_bdgt.administrative_general_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_exp_amt_tobdgt {
    label: "Exp IT Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.information_technology_exp_amt}, ${glm_property_future_fcst_f_bdgt.information_technology_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_exp_amt_tobdgt {
    label: "Exp S&M Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.sales_marketing_exp_amt}, ${glm_property_future_fcst_f_bdgt.sales_marketing_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_exp_amt_tobdgt {
    label: "Exp R&M Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_exp_amt}, ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_exp_amt_tobdgt {
    label: "Exp Rentals & Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_exp_amt}, ${glm_property_future_fcst_f_bdgt.misc_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_exp_amt_tobdgt {
    label: "Exp Nonoperating Realty Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_exp_amt_tobdgt {
    label: "Exp Nonoperating Airport Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_exp_amt_tobdgt {
    label: "Exp Nonoperating Utility Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Other Expenses

  measure: other_exp_amt_tobdgt_v {
    label: "Exp Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_exp_amt} - ${glm_property_future_fcst_f_bdgt.other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_other_exp_amt_tobdgt_v {
    label: "Exp Other Rms Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.room_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_exp_amt_tobdgt_v {
    label: "Exp Other RB&E Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_other_exp_amt_tobdgt_v {
    label: "Exp Other Spa Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.spa_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_other_exp_amt_tobdgt_v {
    label: "Exp Other Golf Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.golf_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_other_exp_amt_tobdgt_v {
    label: "Exp Other Fitness & Rec Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_other_exp_amt_tobdgt_v {
    label: "Exp Other Parking & Trans Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_other_exp_amt_tobdgt_v {
    label: "Exp Other Telecom Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.telecom_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_other_exp_amt_tobdgt_v {
    label: "Exp Other Retail Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.retail_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_other_exp_amt_tobdgt_v {
    label: "Exp Other Other Op. Dept. Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_other_exp_amt_tobdgt_v {
    label: "Exp Other Mgmt Srvcs Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_other_exp_amt_tobdgt_v {
    label: "Exp Other A&G Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.administrative_general_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.administrative_general_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_other_exp_amt_tobdgt_v {
    label: "Exp Other IT Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.information_technology_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.information_technology_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_other_exp_amt_tobdgt_v {
    label: "Exp Other S&M Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.sales_marketing_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.sales_marketing_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_other_exp_amt_tobdgt_v {
    label: "Exp Other R&M Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_other_exp_amt_tobdgt_v {
    label: "Exp Other Rentals & Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.misc_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_other_exp_amt_tobdgt_v {
    label: "Exp Other Nonoperating Realty Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_other_exp_amt_tobdgt_v {
    label: "Exp Other Nonoperating Airport Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_other_exp_amt_tobdgt_v {
    label: "Exp Other Nonoperating Utility Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Other Expenses % var

  measure: other_exp_amt_tobdgt {
    label: "Exp Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_exp_amt}, ${glm_property_future_fcst_f_bdgt.other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_other_exp_amt_tobdgt {
    label: "Exp Other Rms Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.room_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_amt_tobdgt {
    label: "Exp Other RB&E Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_other_exp_amt_tobdgt {
    label: "Exp Other Spa Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.spa_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_other_exp_amt_tobdgt {
    label: "Exp Other Golf Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.golf_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_amt_tobdgt {
    label: "Exp Other Fitness & Rec Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_amt_tobdgt {
    label: "Exp Other Parking & Trans Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_amt_tobdgt {
    label: "Exp Other Telecom Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.telecom_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_other_exp_amt_tobdgt {
    label: "Exp Other Retail Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.retail_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_amt_tobdgt {
    label: "Exp Other Other Op. Dept. Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_amt_tobdgt {
    label: "Exp Other Mgmt Srvcs Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_other_exp_amt_tobdgt {
    label: "Exp Other A&G Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.administrative_general_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.administrative_general_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_other_exp_amt_tobdgt {
    label: "Exp Other IT Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.information_technology_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.information_technology_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_other_exp_amt_tobdgt {
    label: "Exp Other S&M Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.sales_marketing_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.sales_marketing_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_other_exp_amt_tobdgt {
    label: "Exp Other R&M Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_other_exp_amt_tobdgt {
    label: "Exp Other Rentals & Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.misc_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_other_exp_amt_tobdgt {
    label: "Exp Other Nonoperating Realty Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_other_exp_amt_tobdgt {
    label: "Exp Other Nonoperating Airport Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_other_exp_amt_tobdgt {
    label: "Exp Other Nonoperating Utility Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll

  measure: payroll_amt_tobdgt_v {
    label: "Payroll Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.payroll_amt} - ${glm_property_future_fcst_f_bdgt.payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_payroll_amt_tobdgt_v {
    label: "Payroll Rms Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_payroll_amt} - ${glm_property_future_fcst_f_bdgt.room_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_payroll_amt_tobdgt_v {
    label: "Payroll RB&E Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_payroll_amt} - ${glm_property_future_fcst_f_bdgt.rbe_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_payroll_amt_tobdgt_v {
    label: "Payroll Spa Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_payroll_amt} - ${glm_property_future_fcst_f_bdgt.spa_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_payroll_amt_tobdgt_v {
    label: "Payroll Golf Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_payroll_amt} - ${glm_property_future_fcst_f_bdgt.golf_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_payroll_amt_tobdgt_v {
    label: "Payroll Fitness & Rec Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_payroll_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_payroll_amt_tobdgt_v {
    label: "Payroll Parking & Trans Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_payroll_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_payroll_amt_tobdgt_v {
    label: "Payroll Telecom Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_payroll_amt} - ${glm_property_future_fcst_f_bdgt.telecom_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_payroll_amt_tobdgt_v {
    label: "Payroll Retail Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_payroll_amt} - ${glm_property_future_fcst_f_bdgt.retail_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_payroll_amt_tobdgt_v {
    label: "Payroll Other Op. Dept. Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_payroll_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_payroll_amt_tobdgt_v {
    label: "Payroll Mgmt Srvcs Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_payroll_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_payroll_amt_tobdgt_v {
    label: "Payroll A&G Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.administrative_general_payroll_amt} - ${glm_property_future_fcst_f_bdgt.administrative_general_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_payroll_amt_tobdgt_v {
    label: "Payroll IT Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.information_technology_payroll_amt} - ${glm_property_future_fcst_f_bdgt.information_technology_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_payroll_amt_tobdgt_v {
    label: "Payroll S&M Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.sales_marketing_payroll_amt} - ${glm_property_future_fcst_f_bdgt.sales_marketing_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_payroll_amt_tobdgt_v {
    label: "Payroll R&M Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_payroll_amt} - ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_payroll_amt_tobdgt_v {
    label: "Payroll Rentals & Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_payroll_amt} - ${glm_property_future_fcst_f_bdgt.misc_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_payroll_amt_tobdgt_v {
    label: "Payroll Nonoperating Realty Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_payroll_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_payroll_amt_tobdgt_v {
    label: "Payroll Nonoperating Airport Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_payroll_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_payroll_amt_tobdgt_v {
    label: "Payroll Nonoperating Utility Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_payroll_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_payroll_amt_tobdgt_v {
    label: "Payroll RB&E Outlet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_payroll_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_payroll_amt} ;;
    value_format_name: decimal_0
  }


  #-- Payroll % var

  measure: payroll_amt_tobdgt {
    label: "Payroll Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.payroll_amt}, ${glm_property_future_fcst_f_bdgt.payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_payroll_amt_tobdgt {
    label: "Payroll Rms Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_payroll_amt}, ${glm_property_future_fcst_f_bdgt.room_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_payroll_amt_tobdgt {
    label: "Payroll RB&E Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_payroll_amt}, ${glm_property_future_fcst_f_bdgt.rbe_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_payroll_amt_tobdgt {
    label: "Payroll Spa Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_payroll_amt}, ${glm_property_future_fcst_f_bdgt.spa_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_payroll_amt_tobdgt {
    label: "Payroll Golf Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_payroll_amt}, ${glm_property_future_fcst_f_bdgt.golf_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_amt_tobdgt {
    label: "Payroll Fitness & Rec Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_payroll_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_amt_tobdgt {
    label: "Payroll Parking & Trans Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_payroll_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_payroll_amt_tobdgt {
    label: "Payroll Telecom Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_payroll_amt}, ${glm_property_future_fcst_f_bdgt.telecom_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_payroll_amt_tobdgt {
    label: "Payroll Retail Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_payroll_amt}, ${glm_property_future_fcst_f_bdgt.retail_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_amt_tobdgt {
    label: "Payroll Other Op. Dept. Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_payroll_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_amt_tobdgt {
    label: "Payroll Mgmt Srvcs Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_payroll_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_payroll_amt_tobdgt {
    label: "Payroll A&G Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.administrative_general_payroll_amt}, ${glm_property_future_fcst_f_bdgt.administrative_general_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_payroll_amt_tobdgt {
    label: "Payroll IT Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.information_technology_payroll_amt}, ${glm_property_future_fcst_f_bdgt.information_technology_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_payroll_amt_tobdgt {
    label: "Payroll S&M Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.sales_marketing_payroll_amt}, ${glm_property_future_fcst_f_bdgt.sales_marketing_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_payroll_amt_tobdgt {
    label: "Payroll R&M Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_operations_maintenance_payroll_amt}, ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_payroll_amt_tobdgt {
    label: "Payroll Rentals & Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_payroll_amt}, ${glm_property_future_fcst_f_bdgt.misc_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_payroll_amt_tobdgt {
    label: "Payroll Nonoperating Realty Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_payroll_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_payroll_amt_tobdgt {
    label: "Payroll Nonoperating Airport Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_payroll_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_payroll_amt_tobdgt {
    label: "Payroll Nonoperating Utility Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_payroll_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_payroll_amt}) ;;
    value_format_name: percent_1
  }

  #-- Covers

  measure: rbe_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Banquet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Catering Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_catering_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_cover_cnt} ;;
    value_format_name: decimal_0
  }


  measure: rbe_outlet_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Outlet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Room Service Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_room_service_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_other_cover_cnt} ;;
    value_format_name: decimal_0
  }


  #-- Covers % var

  measure: rbe_cover_cnt_tobdgt {
    label: "Cvrs RB&E Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_cover_cnt_tobdgt {
    label: "Cvrs RB&E Banquet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_banquet_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_cover_cnt_tobdgt {
    label: "Cvrs RB&E Catering Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_catering_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_cover_cnt_tobdgt {
    label: "Cvrs RB&E Outlet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_cover_cnt_tobdgt {
    label: "Cvrs RB&E Room Service Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_room_service_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_cover_cnt_tobdgt {
    label: "Cvrs RB&E Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_other_cover_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Treatments

  measure: spa_treatment_cnt_tobdgt_v {
    label: "Trtmnts Spa Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_treatment_cnt} - ${glm_property_future_fcst_f_bdgt.spa_treatment_cnt} ;;
    value_format_name: decimal_0
  }

  measure: golf_round_cnt_tobdgt_v {
    label: "Rnds Golf Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_round_cnt} - ${glm_property_future_fcst_f_bdgt.golf_round_cnt} ;;
    value_format_name: decimal_0
  }


  #-- Treatments % var

  measure: spa_treatment_cnt_tobdgt {
    label: "Trtmnts Spa Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_treatment_cnt}, ${glm_property_future_fcst_f_bdgt.spa_treatment_cnt}) ;;
    value_format_name: percent_1
  }

  measure: golf_round_cnt_tobdgt {
    label: "Rnds Golf Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_round_cnt}, ${glm_property_future_fcst_f_bdgt.golf_round_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Rooms

  measure: arrival_cnt_tobdgt_v {
    label: "Arrivals Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.arrival_cnt} - ${glm_property_future_fcst_f_bdgt.arrival_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_room_cnt_tobdgt_v {
    label: "Rms Occ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_transient_room_cnt_tobdgt_v {
    label: "Rms Occ Transient Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_transient_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_transient_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_group_room_cnt_tobdgt_v {
    label: "Rms Occ Group Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_group_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_group_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_contract_room_cnt_tobdgt_v {
    label: "Rms Occ Contract Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_contract_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_contract_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avail_room_cnt_tobdgt_v {
    label: "Rms Avail Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.avail_room_cnt} - ${glm_property_future_fcst_f_bdgt.avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_owner_room_cnt_tobdgt_v {
    label: "Rms Occ Owner Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_owner_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_owner_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: comp_room_cnt_tobdgt_v {
    label: "Rms Occ Comp Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.comp_room_cnt - ${glm_property_future_fcst_f_bdgt.comp_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: net_avail_room_cnt_tobdgt_v {
    label: "Rms Avail Net Fcst:Bdgt - var"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.net_avail_room_cnt - ${glm_property_future_fcst_f_bdgt.net_avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: transient_room_rev_amt_tobdgt_v {
    label: "Rev Rms Transient Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.transient_room_rev_amt} - ${glm_property_future_fcst_f_bdgt.transient_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: group_room_rev_amt_tobdgt_v {
    label: "Rev Rms Group Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.group_room_rev_amt} - ${glm_property_future_fcst_f_bdgt.group_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: contract_room_rev_amt_tobdgt_v {
    label: "Rev Rms Contract Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.contract_room_rev_amt} - ${glm_property_future_fcst_f_bdgt.contract_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: no_show_room_rev_amt_tobdgt_v {
    label: "Rev Rms No show Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.no_show_room_rev_amt} - ${glm_property_future_fcst_f_bdgt.no_show_room_rev_amt} ;;
    value_format_name: decimal_0
  }



  #-- Rooms % var

  measure: arrival_cnt_tobdgt {
    label: "Arrivals Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.arrival_cnt}, ${glm_property_future_fcst_f_bdgt.arrival_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_room_cnt_tobdgt {
    label: "Rms Occ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_cnt_tobdgt {
    label: "Rms Occ Transient Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_transient_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_transient_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_cnt_tobdgt {
    label: "Rms Occ Group Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_group_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_group_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_cnt_tobdgt {
    label: "Rms Occ Contract Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_contract_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_contract_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: avail_room_cnt_tobdgt {
    label: "Rms Avail Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.avail_room_cnt}, ${glm_property_future_fcst_f_bdgt.avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_owner_room_cnt_tobdgt {
    label: "Rms Occ Owner Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_owner_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_owner_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: comp_room_cnt_tobdgt {
    label: "Rms Occ Comp Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.comp_room_cnt - ${glm_property_future_fcst_f_bdgt.comp_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: net_avail_room_cnt_tobdgt {
    label: "Rms Avail Net Fcst:Bdgt - var %"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.net_avail_room_cnt - ${glm_property_future_fcst_f_bdgt.net_avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: transient_room_rev_amt_tobdgt {
    label: "Rev Rms Transient Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.transient_room_rev_amt}, ${glm_property_future_fcst_f_bdgt.transient_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: group_room_rev_amt_tobdgt {
    label: "Rev Rms Group Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.group_room_rev_amt}, ${glm_property_future_fcst_f_bdgt.group_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: contract_room_rev_amt_tobdgt {
    label: "Rev Rms Contract Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.contract_room_rev_amt}, ${glm_property_future_fcst_f_bdgt.contract_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Profit

  measure: profit_amt_tobdgt_v {
    label: "Profit Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.profit_amt} - ${glm_property_future_fcst_f_bdgt.profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_profit_amt_tobdgt_v {
    label: "Profit Rms Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_profit_amt} - ${glm_property_future_fcst_f_bdgt.room_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_profit_amt_tobdgt_v {
    label: "Profit RB&E Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_profit_amt_tobdgt_v {
    label: "Profit RB&E Banquet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_profit_amt_tobdgt_v {
    label: "Profit RB&E Catering Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_catering_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_profit_amt_tobdgt_v {
    label: "Profit RB&E Conference Services Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_conference_services_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_conference_services_profit_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_banquet_catering_conference_services_profit_amt_tobdgt_v {
  #  label: "Profit RB&E Banquet Catering Conference Services Fcst:Bdgt - var"
  #  description: "Fcst - Bdgt"
  #  type: number
  #  sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_catering_conference_services_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_catering_conference_services_profit_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: rbe_outlet_profit_amt_tobdgt_v {
    label: "Profit RB&E Outlet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_profit_amt_tobdgt_v {
    label: "Profit RB&E Room Service Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_room_service_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_profit_amt_tobdgt_v {
    label: "Profit RB&E Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_profit_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_outlet_other_profit_amt_tobdgt_v {
  #  label: "Profit RB&E Outlet Other Fcst:Bdgt - var"
  #  description: "Fcst - Bdgt"
  #  type: number
  #  sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_other_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_other_profit_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: spa_profit_amt_tobdgt_v {
    label: "Profit Spa Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_profit_amt} - ${glm_property_future_fcst_f_bdgt.spa_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_profit_amt_tobdgt_v {
    label: "Profit Golf Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_profit_amt} - ${glm_property_future_fcst_f_bdgt.golf_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_profit_amt_tobdgt_v {
    label: "Profit Fitness & Rec Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_profit_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_profit_amt_tobdgt_v {
    label: "Profit Parking & Trans Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_profit_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_profit_amt_tobdgt_v {
    label: "Profit Telecom Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_profit_amt} - ${glm_property_future_fcst_f_bdgt.telecom_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_profit_amt_tobdgt_v {
    label: "Profit Retail Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_profit_amt} - ${glm_property_future_fcst_f_bdgt.retail_profit_amt} ;;
    value_format_name: decimal_0
  }

  #measure: spa_fitness_recreation_profit_amt_tobdgt_v {
  #  label: "Profit Spa Fitness & Rec Fcst:Bdgt - var"
  #  description: "Fcst - Bdgt"
  #  type: number
  #  sql: ${glm_property_future_fcst_f_fcstact.spa_fitness_recreation_profit_amt} - ${glm_property_future_fcst_f_bdgt.spa_fitness_recreation_profit_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: other_operated_profit_amt_tobdgt_v {
    label: "Profit Other Op. Dept. Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_profit_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_profit_amt_tobdgt_v {
    label: "Profit Mgmt Srvcs Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_profit_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_profit_amt_tobdgt_v {
    label: "Profit Rentals & Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_profit_amt} - ${glm_property_future_fcst_f_bdgt.misc_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_profit_amt_tobdgt_v {
    label: "Profit Nonoperating Realty Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_profit_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_profit_amt_tobdgt_v {
    label: "Profit Nonoperating Airport Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_profit_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_profit_amt_tobdgt_v {
    label: "Profit Nonoperating Utility Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_profit_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_profit_amt_tobdgt_v {
    label: "Profit Undistributed Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.undistributed_profit_amt} - ${glm_property_future_fcst_f_bdgt.undistributed_profit_amt} ;;
    value_format_name: decimal_0
  }

  #-- Profit % var

  measure: profit_amt_tobdgt {
    label: "Profit Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.profit_amt}, ${glm_property_future_fcst_f_bdgt.profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_profit_amt_tobdgt {
    label: "Profit Rms Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_profit_amt}, ${glm_property_future_fcst_f_bdgt.room_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_profit_amt_tobdgt {
    label: "Profit RB&E Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_profit_amt_tobdgt {
    label: "Profit RB&E Banquet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_banquet_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_profit_amt_tobdgt {
    label: "Profit RB&E Catering Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_catering_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_profit_amt_tobdgt {
    label: "Profit RB&E Conference Services Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_conference_services_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_conference_services_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_profit_amt_tobdgt {
    label: "Profit RB&E Outlet Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_profit_amt_tobdgt {
    label: "Profit RB&E Room Service Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_room_service_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_profit_amt_tobdgt {
    label: "Profit RB&E Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_profit_amt_tobdgt {
    label: "Profit Spa Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_profit_amt}, ${glm_property_future_fcst_f_bdgt.spa_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_profit_amt_tobdgt {
    label: "Profit Golf Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_profit_amt}, ${glm_property_future_fcst_f_bdgt.golf_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_profit_amt_tobdgt {
    label: "Profit Fitness & Rec Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_profit_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_profit_amt_tobdgt {
    label: "Profit Parking & Trans Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_profit_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_profit_amt_tobdgt {
    label: "Profit Telecom Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_profit_amt}, ${glm_property_future_fcst_f_bdgt.telecom_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_profit_amt_tobdgt {
    label: "Profit Retail Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_profit_amt}, ${glm_property_future_fcst_f_bdgt.retail_profit_amt}) ;;
    value_format_name: percent_1
  }

  #measure: spa_fitness_recreation_profit_amt_tobdgt {
  #  label: "Profit Spa Fitness & Rec Fcst:Bdgt - var %"
  #  description: "(Fcst - Bdgt) / Bdgt"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_fitness_recreation_profit_amt}, ${glm_property_future_fcst_f_bdgt.spa_fitness_recreation_profit_amt}) ;;
  #  value_format_name: percent_1
  #}

  measure: other_operated_profit_amt_tobdgt {
    label: "Profit Other Op. Dept. Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_profit_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_profit_amt_tobdgt {
    label: "Profit Mgmt Srvcs Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_profit_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_profit_amt_tobdgt {
    label: "Profit Rentals & Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_profit_amt}, ${glm_property_future_fcst_f_bdgt.misc_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_profit_amt_tobdgt {
    label: "Profit Nonoperating Realty Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_profit_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_profit_amt_tobdgt {
    label: "Profit Nonoperating Airport Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_profit_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_profit_amt_tobdgt {
    label: "Profit Nonoperating Utility Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_profit_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: undistributed_profit_amt_tobdgt {
    label: "Profit Undistributed Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.undistributed_profit_amt}, ${glm_property_future_fcst_f_bdgt.undistributed_profit_amt}) ;;
    value_format_name: percent_1
  }

  #-- Cost

  measure: cost_of_sales_amt_tobdgt_v {
    label: "COS Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_cost_of_sales_amt_tobdgt_v {
    label: "COS Rms Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.room_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_cost_of_sales_amt_tobdgt_v {
    label: "COS RB&E Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_cost_of_sales_amt_tobdgt_v {
    label: "COS Spa Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.spa_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_cost_of_sales_amt_tobdgt_v {
    label: "COS Golf Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.golf_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_cost_of_sales_amt_tobdgt_v {
    label: "COS Fitness & Rec Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_cost_of_sales_amt_tobdgt_v {
    label: "COS Parking & Trans Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_cost_of_sales_amt_tobdgt_v {
    label: "COS Telecom Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.telecom_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_cost_of_sales_amt_tobdgt_v {
    label: "COS Retail Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.retail_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_cost_of_sales_amt_tobdgt_v {
    label: "COS Other Op. Dept. Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_cost_of_sales_amt_tobdgt_v {
    label: "COS Mgmt Srvcs Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_cost_of_sales_amt_tobdgt_v {
    label: "COS Rentals & Other Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.misc_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_cost_of_sales_amt_tobdgt_v {
    label: "COS Nonoperating Realty Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_realty_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_cost_of_sales_amt_tobdgt_v {
    label: "COS Nonoperating Airport Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_airport_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_cost_of_sales_amt_tobdgt_v {
    label: "COS Nonoperating Utility Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.nonoperating_util_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_cost_of_sales_amt_tobdgt_v {
    label: "COS RB&E Food Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.food_rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_cost_of_sales_amt_tobdgt_v {
    label: "COS RB&E Beverage Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.beverage_rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cost_of_sales_amt_tobdgt_v {
    label: "COS RB&E Outlet Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_tobdgt_v {
    label: "Rev /Trtmnt Spa Act:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_rev_treatment_avg_amt} - ${glm_property_future_fcst_f_bdgt.spa_rev_treatment_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_rev_round_avg_amt_tobdgt_v {
    label: "Rev /Rnd Golf Act:LY - var"
    description: "Fcst - LY"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_rev_round_avg_amt} - ${glm_property_future_fcst_f_bdgt.golf_rev_round_avg_amt} ;;
    value_format_name: decimal_2
  }

#-- Cost % var


  measure: cost_of_sales_amt_tobdgt {
    label: "COS Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_cost_of_sales_amt_tobdgt {
    label: "COS Rms Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.room_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_cost_of_sales_amt_tobdgt {
    label: "COS RB&E Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_cost_of_sales_amt_tobdgt {
    label: "COS Spa Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.spa_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_cost_of_sales_amt_tobdgt {
    label: "COS Golf Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.golf_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_cost_of_sales_amt_tobdgt {
    label: "COS Fitness & Rec Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.fitness_recreation_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_cost_of_sales_amt_tobdgt {
    label: "COS Parking & Trans Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.parking_transportation_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_cost_of_sales_amt_tobdgt {
    label: "COS Telecom Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.telecom_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.telecom_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_cost_of_sales_amt_tobdgt {
    label: "COS Retail Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.retail_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.retail_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_cost_of_sales_amt_tobdgt {
    label: "COS Other Op. Dept. Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.other_operated_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_cost_of_sales_amt_tobdgt {
    label: "COS Mgmt Srvcs Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.property_mgmt_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_cost_of_sales_amt_tobdgt {
    label: "COS Rentals & Other Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.misc_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.misc_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_cost_of_sales_amt_tobdgt {
    label: "COS Nonoperating Realty Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_realty_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_cost_of_sales_amt_tobdgt {
    label: "COS Nonoperating Airport Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_airport_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_cost_of_sales_amt_tobdgt {
    label: "COS Nonoperating Utility Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.nonoperating_util_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_tobdgt {
    label: "Rev /Trtmnt Spa Act:LY - var %"
    description: "Fcst - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.spa_rev_treatment_avg_amt}, ${glm_property_future_fcst_f_bdgt.spa_rev_treatment_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_round_avg_amt_tobdgt {
    label: "Rev /Rnd Golf Act:LY - var %"
    description: "Fcst - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.golf_rev_round_avg_amt}, ${glm_property_future_fcst_f_bdgt.golf_rev_round_avg_amt}) ;;
    value_format_name: percent_1
  }


  #-- Occupancy

  measure: occupied_room_pct_tobdgt_v {
    label: "Rms Occ % Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_room_pct} - ${glm_property_future_fcst_f_bdgt.occupied_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tobdgt_v {
    label: "Rms Occ % Group Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_group_room_pct} - ${glm_property_future_fcst_f_bdgt.occupied_group_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tobdgt_v {
    label: "Rms Occ % Transient Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_transient_room_pct} - ${glm_property_future_fcst_f_bdgt.occupied_transient_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tobdgt_v {
    label: "Rms Occ % Contract Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_contract_room_pct} - ${glm_property_future_fcst_f_bdgt.occupied_contract_room_pct} ;;
    value_format_name: percent_1
  }


  #-- Occupancy % var

  measure: occupied_room_pct_tobdgt {
    label: "Rms Occ % Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_room_pct}, ${glm_property_future_fcst_f_bdgt.occupied_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tobdgt {
    label: "Rms Occ % Group Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_group_room_pct}, ${glm_property_future_fcst_f_bdgt.occupied_group_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tobdgt {
    label: "Rms Occ % Transient Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_transient_room_pct}, ${glm_property_future_fcst_f_bdgt.occupied_transient_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tobdgt {
    label: "Rms Occ % Contract Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.occupied_contract_room_pct}, ${glm_property_future_fcst_f_bdgt.occupied_contract_room_pct}) ;;
    value_format_name: percent_1
  }

  #-- ADR

  measure: adr_amt_tobdgt_v {
    label: "ADR $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.adr_amt} - ${glm_property_future_fcst_f_bdgt.adr_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_transient_amt_tobdgt_v {
    label: "ADR Transient $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.adr_transient_amt} - ${glm_property_future_fcst_f_bdgt.adr_transient_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_group_amt_tobdgt_v {
    label: "ADR Group $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.adr_group_amt} - ${glm_property_future_fcst_f_bdgt.adr_group_amt} ;;
    value_format_name: decimal_2
  }

  #-- ADR % var

  measure: adr_amt_tobdgt {
    label: "ADR $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.adr_amt}, ${glm_property_future_fcst_f_bdgt.adr_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_transient_amt_tobdgt {
    label: "ADR Transient $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.adr_transient_amt}, ${glm_property_future_fcst_f_bdgt.adr_transient_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_group_amt_tobdgt {
    label: "ADR Group $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.adr_group_amt}, ${glm_property_future_fcst_f_bdgt.adr_group_amt}) ;;
    value_format_name: percent_1
  }

  #-- Room nights

  measure: room_night_transient_pct_tobdgt_v {
    label: "Rms Night Transient % Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_night_transient_pct} - ${glm_property_future_fcst_f_bdgt.room_night_transient_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tobdgt_v {
    label: "Rms Night Group % Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_night_group_pct} - ${glm_property_future_fcst_f_bdgt.room_night_group_pct} ;;
    value_format_name: percent_1
  }

  #-- Room nights % var

  measure: room_night_transient_pct_tobdgt {
    label: "Rms Night Transient % Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_night_transient_pct}, ${glm_property_future_fcst_f_bdgt.room_night_transient_pct}) ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tobdgt {
    label: "Rms Night Group % Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.room_night_group_pct}, ${glm_property_future_fcst_f_bdgt.room_night_group_pct}) ;;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_amt_tobdgt_v {
    label: "Rev PAR $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rev_par_amt} - ${glm_property_future_fcst_f_bdgt.rev_par_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_group_amt_tobdgt_v {
    label: "Rev PAR $ Group Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rev_par_group_amt} - ${glm_property_future_fcst_f_bdgt.rev_par_group_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_transient_amt_tobdgt_v {
    label: "Rev PAR $ Transient Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rev_par_transient_amt} - ${glm_property_future_fcst_f_bdgt.rev_par_transient_amt} ;;
    value_format_name: usd_0
  }

  #-- Rev PAR % var

  measure: rev_par_amt_tobdgt {
    label: "Rev PAR $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rev_par_amt}, ${glm_property_future_fcst_f_bdgt.rev_par_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_group_amt_tobdgt {
    label: "Rev PAR $ Group Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rev_par_group_amt}, ${glm_property_future_fcst_f_bdgt.rev_par_group_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_transient_amt_tobdgt {
    label: "Rev PAR $ Transient Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rev_par_transient_amt}, ${glm_property_future_fcst_f_bdgt.rev_par_transient_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg check

  measure: rbe_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Avg $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Banquet Avg $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_banquet_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Catering Avg $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_catering_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Outlet Avg $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_outlet_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_room_service_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Room Service Avg $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_room_service_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_room_service_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Other Avg $ Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_other_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_check_avg_amt} ;;
    value_format_name: decimal_2
  }


  #-- Avg check % var

  measure: rbe_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Avg $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Banquet Avg $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_banquet_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Catering Avg $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_catering_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Outlet Avg $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_outlet_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Room Service Avg $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_room_service_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_room_service_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Other Avg $ Fcst:Bdgt - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.rbe_other_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev
  measure: payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev % var

  measure: payroll_rev_pct_tobdgt {
    label: "Payroll /Rev Act:LY - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.payroll_rev_pct}, ${glm_property_future_fcst_f_bdgt.payroll_rev_pct}) ;;
    value_format_name: percent_1
  }


  #-- Avg length of stay

  measure: length_of_stay_avg_amt_tobdgt_v {
    label: "Stay Length Avg Night Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.length_of_stay_avg_amt} - ${glm_property_future_fcst_f_bdgt.length_of_stay_avg_amt} ;;
    value_format_name: decimal_1
  }

  #-- Avg length of stay % var

  measure: length_of_stay_avg_amt_tobdgt {
    label: "Stay Length Avg Night Act:LY - var %"
    description: "(Fcst - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_fcstact.length_of_stay_avg_amt}, ${glm_property_future_fcst_f_bdgt.length_of_stay_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll Rev %

  measure: room_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Rms Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.room_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: rbe_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev RB&E Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.rbe_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.rbe_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: spa_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Spa Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.spa_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.spa_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: golf_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Golf Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.golf_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.golf_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Fitness & Rec Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.fitness_recreation_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Parking & Trans Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.parking_transportation_payroll_rev_pct - ${glm_property_future_fcst_f_bdgt.parking_transportation_payroll_rev_pct} ;;
    value_format_name: usd_0
  }

  measure: telecom_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Telecom Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.telecom_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.telecom_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: retail_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Retail Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.retail_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.retail_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Other Op. Dept. Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.other_operated_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.other_operated_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Mgmt Srvcs Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.property_mgmt_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.property_mgmt_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: misc_payroll_rev_pct_tobdgt_v {
    label: "Payroll /Rev Rentals & Other % Act:LY - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.misc_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.misc_payroll_rev_pct} ;;
    value_format_name: percent_1
  }



  #-- Rental property splits

  measure: room_rental_mgmt_2_19_rev_amt_tobdgt_v {
    label: "Rev Rms Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_bdgt.room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: avail_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Avail Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.avail_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_owner_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Owner Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_owner_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_owner_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: net_avail_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Avail Net Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.net_avail_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.net_avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: transient_room_rental_mgmt_2_19_rev_amt_tobdgt_v {
    label: "Rev Rms Transient Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.transient_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_bdgt.transient_room_rental_mgmt_2_19_rev_amt} );;
    value_format_name: usd_0
  }
  measure: group_room_rental_mgmt_2_19_rev_amt_tobdgt_v {
    label: "Rev Rms Group Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.group_room_rental_mgmt_2_19_rev_amt - ${glm_property_future_fcst_f_bdgt.group_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: contract_room_rental_mgmt_2_19_rev_amt_tobdgt_v {
    label: "Rev Rms Contract Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.contract_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_bdgt.contract_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_transient_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Transient Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_transient_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_transient_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_group_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Group Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_group_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_group_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_contract_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Contract Rental Fcst:Bdgt - var"
    description: "Fcst - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_fcstact.occupied_contract_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_contract_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }



}
