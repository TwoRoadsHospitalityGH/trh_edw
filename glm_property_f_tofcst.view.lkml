view: glm_property_f_tofcst {

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
  #-- actual to LY: rev, AGOP, rooms_revenue, RB&E
  #--------------------------------------------------------------------------------

  #-- Rev

  measure: rev_amt_tofcst_v {
    label: "Rev Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rev_amt} - ${glm_property_f_fcst.rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rev_abs_amt_tofcst_v {
  #  label: "Rev Abs Act:Fcst - var"
  #  description: "Abs(Actual - Fcst)"
  #  type: number
  #  sql: abs(${glm_property_f_ty.rev_amt} - ${glm_property_f_fcst.rev_amt}) ;;
  #  value_format_name: decimal_0
  #}

  measure: agop_amt_tofcst_v {
    label: "AGOP Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.agop_amt} - ${glm_property_f_fcst.agop_amt} ;;
    value_format_name: decimal_0
  }

  #measure: agop_abs_amt_tofcst_v {
  #  label: "AGOP Abs Act:Fcst - var"
  #  description: "Actual - Fcst"
  #  type: number
  #  sql: abs(${glm_property_f_ty.agop_amt} - ${glm_property_f_fcst.agop_amt}) ;;
  #  value_format_name: decimal_0
  #}

  measure: gop_amt_tofcst_v {
    label: "GOP Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.gop_amt} - ${glm_property_f_fcst.gop_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_rev_amt_tofcst_v {
    label: "Rev Rms Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_rev_amt} - ${glm_property_f_fcst.room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_rev_amt_tofcst_v {
    label: "Rev Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.other_rev_amt} - ${glm_property_f_fcst.other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_rev_amt_tofcst_v {
    label: "Rev RB&E Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_rev_amt} - ${glm_property_f_fcst.rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_rev_amt_tofcst_v {
    label: "Rev RB&E Banquet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_rev_amt} - ${glm_property_f_fcst.rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_rev_amt_tofcst_v {
    label: "Rev RB&E Catering Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_rev_amt} - ${glm_property_f_fcst.rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_rev_amt_tofcst_v {
    label: "Rev RB&E Conference Services Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_conference_services_rev_amt} - ${glm_property_f_fcst.rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_banquet_catering_conference_services_rev_amt_tofcst_v {
  #  label: "Rev RB&E Banquet Catering Conference Services Act:Fcst - var"
  #  description: "Actual - Fcst"
  #  type: number
  #  sql: ${glm_property_f_ty.rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_f_fcst.rbe_banquet_catering_conference_services_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: rbe_outlet_rev_amt_tofcst_v {
    label: "Rev RB&E Outlet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_rev_amt} - ${glm_property_f_fcst.rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_rev_amt_tofcst_v {
    label: "Rev RB&E Room Service Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_other_rev_amt} - ${glm_property_f_fcst.rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_rev_amt_tofcst_v {
    label: "Rev RB&E Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_other_rev_amt} - ${glm_property_f_fcst.rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_outlet_other_rev_amt_tofcst_v {
  #  label: "Rev RB&E Outlet Other Act:Fcst - var"
  #  description: "Actual - Fcst"
  #  type: number
  #  sql: ${glm_property_f_ty.rbe_outlet_other_rev_amt} - ${glm_property_f_fcst.rbe_outlet_other_rev_amt} ;;
  #  value_format_name: decimal_0
  #}


  measure: food_rbe_rev_amt_tofcst_v {
    label: "Rev Food RB&E Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.food_rbe_rev_amt} - ${glm_property_f_fcst.food_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_banquet_rev_amt_tofcst_v {
    label: "Rev Food RB&E Banquet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.food_rbe_banquet_rev_amt} - ${glm_property_f_fcst.food_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_catering_rev_amt_tofcst_v {
    label: "Rev Food RB&E Catering Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.food_rbe_catering_rev_amt} - ${glm_property_f_fcst.food_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_conference_services_rev_amt_tofcst_v {
    label: "Rev Food RB&E Conference Services Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.food_rbe_conference_services_rev_amt} - ${glm_property_f_fcst.food_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: food_rbe_banquet_catering_conference_services_rev_amt_tofcst_v {
  #  label: "Rev Food RB&E Banquet Catering Conference Services Act:Fcst - var"
  #  description: "Actual - Fcst"
  #  type: number
  #  sql: ${glm_property_f_ty.food_rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_f_fcst.food_rbe_banquet_catering_conference_services_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: food_rbe_outlet_rev_amt_tofcst_v {
    label: "Rev Food RB&E Outlet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.food_rbe_outlet_rev_amt} - ${glm_property_f_fcst.food_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_room_service_rev_amt_tofcst_v {
    label: "Rev Food RB&E Room Service Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.food_rbe_other_rev_amt} - ${glm_property_f_fcst.food_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_other_rev_amt_tofcst_v {
    label: "Rev Food RB&E Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.food_rbe_other_rev_amt} - ${glm_property_f_fcst.food_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }


  measure: beverage_rbe_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_rev_amt} - ${glm_property_f_fcst.beverage_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_banquet_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Banquet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_banquet_rev_amt} - ${glm_property_f_fcst.beverage_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_catering_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Catering Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_catering_rev_amt} - ${glm_property_f_fcst.beverage_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_conference_services_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Conference Services Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_conference_services_rev_amt} - ${glm_property_f_fcst.beverage_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: beverage_rbe_banquet_catering_conference_services_rev_amt_tofcst_v {
  #  label: "Rev Beverage RB&E Banquet Catering Conference Services Act:Fcst - var"
  #  description: "Actual - Fcst"
  #  type: number
  #  sql: ${glm_property_f_ty.beverage_rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_f_fcst.beverage_rbe_banquet_catering_conference_services_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: beverage_rbe_outlet_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Outlet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_outlet_rev_amt} - ${glm_property_f_fcst.beverage_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_room_service_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Room Service Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_other_rev_amt} - ${glm_property_f_fcst.beverage_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_other_rev_amt_tofcst_v {
    label: "Rev Beverage RB&E Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_other_rev_amt} - ${glm_property_f_fcst.beverage_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_rev_amt_tofcst_v {
    label: "Rev Spa Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.spa_rev_amt} - ${glm_property_f_fcst.spa_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_rev_amt_tofcst_v {
    label: "Rev Golf Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.golf_rev_amt} - ${glm_property_f_fcst.golf_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_rev_amt_tofcst_v {
    label: "Rev Fitness & Rec Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_rev_amt} - ${glm_property_f_fcst.fitness_recreation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_rev_amt_tofcst_v {
    label: "Rev Parking & Trans Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_rev_amt} - ${glm_property_f_fcst.parking_transportation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_rev_amt_tofcst_v {
    label: "Rev Telecom Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.telecom_rev_amt} - ${glm_property_f_fcst.telecom_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_rev_amt_tofcst_v {
    label: "Rev Retail Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.retail_rev_amt} - ${glm_property_f_fcst.retail_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: spa_fitness_recreation_rev_amt_tofcst_v {
  #  label: "Rev Spa Fitness & Rec Act:Fcst - var"
  #  description: "Actual - Fcst"
  #  type: number
  #  sql: ${glm_property_f_ty.spa_fitness_recreation_rev_amt} - ${glm_property_f_fcst.spa_fitness_recreation_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: other_operated_rev_amt_tofcst_v {
    label: "Rev Other Op. Dept. Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.other_operated_rev_amt} - ${glm_property_f_fcst.other_operated_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_rev_amt_tofcst_v {
    label: "Rev Mgmt Srvcs Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_rev_amt} - ${glm_property_f_fcst.property_mgmt_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_rev_amt_tofcst_v {
    label: "Rev Rentals & Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.misc_rev_amt} - ${glm_property_f_fcst.misc_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_rev_amt_tofcst_v {
    label: "Rev Nonoperating Realty Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_rev_amt} - ${glm_property_f_fcst.nonoperating_realty_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_rev_amt_tofcst_v {
    label: "Rev Nonoperating Airport Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_rev_amt} - ${glm_property_f_fcst.nonoperating_airport_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_rev_amt_tofcst_v {
    label: "Rev Nonoperating Utility Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_rev_amt} - ${glm_property_f_fcst.nonoperating_util_rev_amt} ;;
    value_format_name: decimal_0
  }

#-- Rev % var


  measure: rev_amt_tofcst {
    label: "Rev Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_amt}, ${glm_property_f_fcst.rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: agop_amt_tofcst {
    label: "AGOP Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.agop_amt}, ${glm_property_f_fcst.agop_amt}) ;;
    value_format_name: percent_1
  }

  measure: gop_amt_tofcst {
    label: "GOP Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.gop_amt}, ${glm_property_f_fcst.gop_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_rev_amt_tofcst {
    label: "Rev Rms Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_rev_amt}, ${glm_property_f_fcst.room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_rev_amt_tofcst {
    label: "Rev Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_rev_amt}, ${glm_property_f_fcst.other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_rev_amt_tofcst {
    label: "Rev RB&E Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_rev_amt}, ${glm_property_f_fcst.rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_rev_amt_tofcst {
    label: "Rev RB&E Banquet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_rev_amt}, ${glm_property_f_fcst.rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_rev_amt_tofcst {
    label: "Rev RB&E Catering Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_rev_amt}, ${glm_property_f_fcst.rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_rev_amt_tofcst {
    label: "Rev RB&E Conference Services Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_conference_services_rev_amt}, ${glm_property_f_fcst.rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_rev_amt_tofcst {
    label: "Rev RB&E Outlet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_rev_amt}, ${glm_property_f_fcst.rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_rev_amt_tofcst {
    label: "Rev RB&E Room Service Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_rev_amt}, ${glm_property_f_fcst.rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_rev_amt_tofcst {
    label: "Rev RB&E Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_rev_amt}, ${glm_property_f_fcst.rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  #measure: rbe_outlet_other_rev_amt_tofcst {
  #  label: "Rev RB&E Outlet Other Act:Fcst - var %"
  #  description: "(Actual - Fcst) / Fcst"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_other_rev_amt}, ${glm_property_f_fcst.rbe_outlet_other_rev_amt}) ;;
  #  value_format_name: percent_1
  #}


  measure: food_rbe_rev_amt_tofcst {
    label: "Rev Food RB&E Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_rev_amt}, ${glm_property_f_fcst.food_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_banquet_rev_amt_tofcst {
    label: "Rev Food RB&E Banquet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_banquet_rev_amt}, ${glm_property_f_fcst.food_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_catering_rev_amt_tofcst {
    label: "Rev Food RB&E Catering Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_catering_rev_amt}, ${glm_property_f_fcst.food_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_conference_services_rev_amt_tofcst {
    label: "Rev Food RB&E Conference Services Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_conference_services_rev_amt}, ${glm_property_f_fcst.food_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_outlet_rev_amt_tofcst {
    label: "Rev Food RB&E Outlet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_outlet_rev_amt}, ${glm_property_f_fcst.food_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_room_service_rev_amt_tofcst {
    label: "Rev Food RB&E Room Service Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_other_rev_amt}, ${glm_property_f_fcst.food_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_other_rev_amt_tofcst {
    label: "Rev Food RB&E Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_other_rev_amt}, ${glm_property_f_fcst.food_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }


  measure: beverage_rbe_rev_amt_tofcst {
    label: "Rev Beverage RB&E Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_rev_amt}, ${glm_property_f_fcst.beverage_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_banquet_rev_amt_tofcst {
    label: "Rev Beverage RB&E Banquet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_banquet_rev_amt}, ${glm_property_f_fcst.beverage_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_catering_rev_amt_tofcst {
    label: "Rev Beverage RB&E Catering Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_catering_rev_amt}, ${glm_property_f_fcst.beverage_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_conference_services_rev_amt_tofcst {
    label: "Rev Beverage RB&E Conference Services Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_conference_services_rev_amt}, ${glm_property_f_fcst.beverage_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_outlet_rev_amt_tofcst {
    label: "Rev Beverage RB&E Outlet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_outlet_rev_amt}, ${glm_property_f_fcst.beverage_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_room_service_rev_amt_tofcst {
    label: "Rev Beverage RB&E Room Service Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_other_rev_amt}, ${glm_property_f_fcst.beverage_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_other_rev_amt_tofcst {
    label: "Rev Beverage RB&E Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_other_rev_amt}, ${glm_property_f_fcst.beverage_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_rev_amt_tofcst {
    label: "Rev Spa Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_rev_amt}, ${glm_property_f_fcst.spa_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_amt_tofcst {
    label: "Rev Golf Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_rev_amt}, ${glm_property_f_fcst.golf_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_rev_amt_tofcst {
    label: "Rev Fitness & Rec Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_rev_amt}, ${glm_property_f_fcst.fitness_recreation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_rev_amt_tofcst {
    label: "Rev Parking & Trans Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_rev_amt}, ${glm_property_f_fcst.parking_transportation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_rev_amt_tofcst {
    label: "Rev Telecom Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_rev_amt}, ${glm_property_f_fcst.telecom_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_rev_amt_tofcst {
    label: "Rev Retail Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_rev_amt}, ${glm_property_f_fcst.retail_rev_amt}) ;;
    value_format_name: percent_1
  }

  #measure: spa_fitness_recreation_rev_amt_tofcst {
  #  label: "Rev Spa Fitness & Rec Act:Fcst - var %"
  #  description: "(Actual - Fcst) / Fcst"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_f_ty.spa_fitness_recreation_rev_amt}, ${glm_property_f_fcst.spa_fitness_recreation_rev_amt}) ;;
  #  value_format_name: percent_1
  #}

  measure: other_operated_rev_amt_tofcst {
    label: "Rev Other Op. Dept. Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_rev_amt}, ${glm_property_f_fcst.other_operated_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_rev_amt_tofcst {
    label: "Rev Mgmt Srvcs Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_rev_amt}, ${glm_property_f_fcst.property_mgmt_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_rev_amt_tofcst {
    label: "Rev Rentals & Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_rev_amt}, ${glm_property_f_fcst.misc_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_rev_amt_tofcst {
    label: "Rev Nonoperating Realty Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_rev_amt}, ${glm_property_f_fcst.nonoperating_realty_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_rev_amt_tofcst {
    label: "Rev Nonoperating Airport Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_rev_amt}, ${glm_property_f_fcst.nonoperating_airport_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_rev_amt_tofcst {
    label: "Rev Nonoperating Utility Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_rev_amt}, ${glm_property_f_fcst.nonoperating_util_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Expenses

  measure: exp_amt_tofcst_v {
    label: "Exp Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.exp_amt} - ${glm_property_f_fcst.exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_exp_amt_tofcst_v {
    label: "Exp Rms Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_exp_amt} - ${glm_property_f_fcst.room_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_exp_amt_tofcst_v {
    label: "Exp RB&E Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_exp_amt} - ${glm_property_f_fcst.rbe_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_exp_amt_tofcst_v {
    label: "Exp Spa Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.spa_exp_amt} - ${glm_property_f_fcst.spa_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_exp_amt_tofcst_v {
    label: "Exp Golf Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.golf_exp_amt} - ${glm_property_f_fcst.golf_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_exp_amt_tofcst_v {
    label: "Exp Fitness & Rec Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_exp_amt} - ${glm_property_f_fcst.fitness_recreation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_exp_amt_tofcst_v {
    label: "Exp Parking & Trans Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_exp_amt} - ${glm_property_f_fcst.parking_transportation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_exp_amt_tofcst_v {
    label: "Exp Telecom Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.telecom_exp_amt} - ${glm_property_f_fcst.telecom_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_exp_amt_tofcst_v {
    label: "Exp Retail Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.retail_exp_amt} - ${glm_property_f_fcst.retail_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_exp_amt_tofcst_v {
    label: "Exp Other Op. Dept. Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.other_operated_exp_amt} - ${glm_property_f_fcst.other_operated_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_exp_amt_tofcst_v {
    label: "Exp Mgmt Srvcs Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_exp_amt} - ${glm_property_f_fcst.property_mgmt_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_exp_amt_tofcst_v {
    label: "Exp A&G Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.administrative_general_exp_amt} - ${glm_property_f_fcst.administrative_general_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_exp_amt_tofcst_v {
    label: "Exp IT Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.information_technology_exp_amt} - ${glm_property_f_fcst.information_technology_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_exp_amt_tofcst_v {
    label: "Exp S&M Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.sales_marketing_exp_amt} - ${glm_property_f_fcst.sales_marketing_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_exp_amt_tofcst_v {
    label: "Exp R&M Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_operations_maintenance_exp_amt} - ${glm_property_f_fcst.property_operations_maintenance_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_exp_amt_tofcst_v {
    label: "Exp Rentals & Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.misc_exp_amt} - ${glm_property_f_fcst.misc_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_exp_amt_tofcst_v {
    label: "Exp Nonoperating Realty Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_exp_amt} - ${glm_property_f_fcst.nonoperating_realty_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_exp_amt_tofcst_v {
    label: "Exp Nonoperating Airport Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_exp_amt} - ${glm_property_f_fcst.nonoperating_airport_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_exp_amt_tofcst_v {
    label: "Exp Nonoperating Utility Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_exp_amt} - ${glm_property_f_fcst.nonoperating_util_exp_amt} ;;
    value_format_name: decimal_0
  }


  #-- Expenses % var

  measure: exp_amt_tofcst {
    label: "Exp Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.exp_amt}, ${glm_property_f_fcst.exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_exp_amt_tofcst {
    label: "Exp Rms Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_exp_amt}, ${glm_property_f_fcst.room_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_exp_amt_tofcst {
    label: "Exp RB&E Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_exp_amt}, ${glm_property_f_fcst.rbe_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_exp_amt_tofcst {
    label: "Exp Spa Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_exp_amt}, ${glm_property_f_fcst.spa_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_exp_amt_tofcst {
    label: "Exp Golf Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_exp_amt}, ${glm_property_f_fcst.golf_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_exp_amt_tofcst {
    label: "Exp Fitness & Rec Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_exp_amt}, ${glm_property_f_fcst.fitness_recreation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_exp_amt_tofcst {
    label: "Exp Parking & Trans Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_exp_amt}, ${glm_property_f_fcst.parking_transportation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_exp_amt_tofcst {
    label: "Exp Telecom Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_exp_amt}, ${glm_property_f_fcst.telecom_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_exp_amt_tofcst {
    label: "Exp Retail Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_exp_amt}, ${glm_property_f_fcst.retail_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_exp_amt_tofcst {
    label: "Exp Other Op. Dept. Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_exp_amt}, ${glm_property_f_fcst.other_operated_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_exp_amt_tofcst {
    label: "Exp Mgmt Srvcs Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_exp_amt}, ${glm_property_f_fcst.property_mgmt_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_exp_amt_tofcst {
    label: "Exp A&G Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.administrative_general_exp_amt}, ${glm_property_f_fcst.administrative_general_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_exp_amt_tofcst {
    label: "Exp IT Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.information_technology_exp_amt}, ${glm_property_f_fcst.information_technology_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_exp_amt_tofcst {
    label: "Exp S&M Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.sales_marketing_exp_amt}, ${glm_property_f_fcst.sales_marketing_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_exp_amt_tofcst {
    label: "Exp R&M Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_operations_maintenance_exp_amt}, ${glm_property_f_fcst.property_operations_maintenance_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_exp_amt_tofcst {
    label: "Exp Rentals & Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_exp_amt}, ${glm_property_f_fcst.misc_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_exp_amt_tofcst {
    label: "Exp Nonoperating Realty Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_exp_amt}, ${glm_property_f_fcst.nonoperating_realty_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_exp_amt_tofcst {
    label: "Exp Nonoperating Airport Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_exp_amt}, ${glm_property_f_fcst.nonoperating_airport_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_exp_amt_tofcst {
    label: "Exp Nonoperating Utility Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_exp_amt}, ${glm_property_f_fcst.nonoperating_util_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Other Expenses

  measure: other_exp_amt_tofcst_v {
    label: "Exp Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.other_exp_amt} - ${glm_property_f_fcst.other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_other_exp_amt_tofcst_v {
    label: "Exp Other Rms Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_other_exp_amt} - ${glm_property_f_fcst.room_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_exp_amt_tofcst_v {
    label: "Exp Other RB&E Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_other_exp_amt} - ${glm_property_f_fcst.rbe_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_other_exp_amt_tofcst_v {
    label: "Exp Other Spa Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.spa_other_exp_amt} - ${glm_property_f_fcst.spa_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_other_exp_amt_tofcst_v {
    label: "Exp Other Golf Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.golf_other_exp_amt} - ${glm_property_f_fcst.golf_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_other_exp_amt_tofcst_v {
    label: "Exp Other Fitness & Rec Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_other_exp_amt} - ${glm_property_f_fcst.fitness_recreation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_other_exp_amt_tofcst_v {
    label: "Exp Other Parking & Trans Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_other_exp_amt} - ${glm_property_f_fcst.parking_transportation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_other_exp_amt_tofcst_v {
    label: "Exp Other Telecom Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.telecom_other_exp_amt} - ${glm_property_f_fcst.telecom_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_other_exp_amt_tofcst_v {
    label: "Exp Other Retail Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.retail_other_exp_amt} - ${glm_property_f_fcst.retail_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_other_exp_amt_tofcst_v {
    label: "Exp Other Other Op. Dept. Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.other_operated_other_exp_amt} - ${glm_property_f_fcst.other_operated_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_other_exp_amt_tofcst_v {
    label: "Exp Other Mgmt Srvcs Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_other_exp_amt} - ${glm_property_f_fcst.property_mgmt_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_other_exp_amt_tofcst_v {
    label: "Exp Other A&G Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.administrative_general_other_exp_amt} - ${glm_property_f_fcst.administrative_general_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_other_exp_amt_tofcst_v {
    label: "Exp Other IT Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.information_technology_other_exp_amt} - ${glm_property_f_fcst.information_technology_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_other_exp_amt_tofcst_v {
    label: "Exp Other S&M Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.sales_marketing_other_exp_amt} - ${glm_property_f_fcst.sales_marketing_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_other_exp_amt_tofcst_v {
    label: "Exp Other R&M Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_operations_maintenance_other_exp_amt} - ${glm_property_f_fcst.property_operations_maintenance_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_other_exp_amt_tofcst_v {
    label: "Exp Other Rentals & Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.misc_other_exp_amt} - ${glm_property_f_fcst.misc_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_other_exp_amt_tofcst_v {
    label: "Exp Other Nonoperating Realty Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_other_exp_amt} - ${glm_property_f_fcst.nonoperating_realty_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_other_exp_amt_tofcst_v {
    label: "Exp Other Nonoperating Airport Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_other_exp_amt} - ${glm_property_f_fcst.nonoperating_airport_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_other_exp_amt_tofcst_v {
    label: "Exp Other Nonoperating Utility Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_other_exp_amt} - ${glm_property_f_fcst.nonoperating_util_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Other Expenses % var

  measure: other_exp_amt_tofcst {
    label: "Exp Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_exp_amt}, ${glm_property_f_fcst.other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_other_exp_amt_tofcst {
    label: "Exp Other Rms Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_other_exp_amt}, ${glm_property_f_fcst.room_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_amt_tofcst {
    label: "Exp Other RB&E Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_exp_amt}, ${glm_property_f_fcst.rbe_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_other_exp_amt_tofcst {
    label: "Exp Other Spa Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_other_exp_amt}, ${glm_property_f_fcst.spa_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_other_exp_amt_tofcst {
    label: "Exp Other Golf Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_other_exp_amt}, ${glm_property_f_fcst.golf_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_amt_tofcst {
    label: "Exp Other Fitness & Rec Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_other_exp_amt}, ${glm_property_f_fcst.fitness_recreation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_amt_tofcst {
    label: "Exp Other Parking & Trans Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_other_exp_amt}, ${glm_property_f_fcst.parking_transportation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_amt_tofcst {
    label: "Exp Other Telecom Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_other_exp_amt}, ${glm_property_f_fcst.telecom_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_other_exp_amt_tofcst {
    label: "Exp Other Retail Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_other_exp_amt}, ${glm_property_f_fcst.retail_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_amt_tofcst {
    label: "Exp Other Other Op. Dept. Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_other_exp_amt}, ${glm_property_f_fcst.other_operated_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_amt_tofcst {
    label: "Exp Other Mgmt Srvcs Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_other_exp_amt}, ${glm_property_f_fcst.property_mgmt_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_other_exp_amt_tofcst {
    label: "Exp Other A&G Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.administrative_general_other_exp_amt}, ${glm_property_f_fcst.administrative_general_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_other_exp_amt_tofcst {
    label: "Exp Other IT Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.information_technology_other_exp_amt}, ${glm_property_f_fcst.information_technology_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_other_exp_amt_tofcst {
    label: "Exp Other S&M Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.sales_marketing_other_exp_amt}, ${glm_property_f_fcst.sales_marketing_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_other_exp_amt_tofcst {
    label: "Exp Other R&M Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_operations_maintenance_other_exp_amt}, ${glm_property_f_fcst.property_operations_maintenance_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_other_exp_amt_tofcst {
    label: "Exp Other Rentals & Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_other_exp_amt}, ${glm_property_f_fcst.misc_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_realty_other_exp_amt_tofcst {
    label: "Exp Other Nonoperating Realty Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_other_exp_amt}, ${glm_property_f_fcst.nonoperating_realty_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_airport_other_exp_amt_tofcst {
    label: "Exp Other Nonoperating Airport Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_other_exp_amt}, ${glm_property_f_fcst.nonoperating_airport_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_util_other_exp_amt_tofcst {
    label: "Exp Other Nonoperating Utility Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_other_exp_amt}, ${glm_property_f_fcst.nonoperating_util_other_exp_amt}) ;;
    value_format_name: percent_1
  }
  #-- Payroll

  measure: payroll_amt_tofcst_v {
    label: "Payroll Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.payroll_amt} - ${glm_property_f_fcst.payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_payroll_amt_tofcst_v {
    label: "Payroll Rms Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_payroll_amt} - ${glm_property_f_fcst.room_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_payroll_amt_tofcst_v {
    label: "Payroll RB&E Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_payroll_amt} - ${glm_property_f_fcst.rbe_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_payroll_amt_tofcst_v {
    label: "Payroll Spa Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.spa_payroll_amt} - ${glm_property_f_fcst.spa_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_payroll_amt_tofcst_v {
    label: "Payroll Golf Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.golf_payroll_amt} - ${glm_property_f_fcst.golf_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_payroll_amt_tofcst_v {
    label: "Payroll Fitness & Rec Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_payroll_amt} - ${glm_property_f_fcst.fitness_recreation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_payroll_amt_tofcst_v {
    label: "Payroll Parking & Trans Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_payroll_amt} - ${glm_property_f_fcst.parking_transportation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_payroll_amt_tofcst_v {
    label: "Payroll Telecom Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.telecom_payroll_amt} - ${glm_property_f_fcst.telecom_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_payroll_amt_tofcst_v {
    label: "Payroll Retail Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.retail_payroll_amt} - ${glm_property_f_fcst.retail_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_payroll_amt_tofcst_v {
    label: "Payroll Other Op. Dept. Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.other_operated_payroll_amt} - ${glm_property_f_fcst.other_operated_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_payroll_amt_tofcst_v {
    label: "Payroll Mgmt Srvcs Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_payroll_amt} - ${glm_property_f_fcst.property_mgmt_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_payroll_amt_tofcst_v {
    label: "Payroll A&G Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.administrative_general_payroll_amt} - ${glm_property_f_fcst.administrative_general_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_payroll_amt_tofcst_v {
    label: "Payroll IT Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.information_technology_payroll_amt} - ${glm_property_f_fcst.information_technology_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_payroll_amt_tofcst_v {
    label: "Payroll S&M Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.sales_marketing_payroll_amt} - ${glm_property_f_fcst.sales_marketing_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_payroll_amt_tofcst_v {
    label: "Payroll R&M Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_operations_maintenance_payroll_amt} - ${glm_property_f_fcst.property_operations_maintenance_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_payroll_amt_tofcst_v {
    label: "Payroll Rentals & Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.misc_payroll_amt} - ${glm_property_f_fcst.misc_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_payroll_amt_tofcst_v {
    label: "Payroll Nonoperating Realty Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_payroll_amt} - ${glm_property_f_fcst.nonoperating_realty_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_payroll_amt_tofcst_v {
    label: "Payroll Nonoperating Airport Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_payroll_amt} - ${glm_property_f_fcst.nonoperating_airport_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_payroll_amt_tofcst_v {
    label: "Payroll Nonoperating Utility Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_payroll_amt} - ${glm_property_f_fcst.nonoperating_util_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_payroll_amt_tofcst_v {
    label: "Payroll RB&E Outlet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_payroll_amt} - ${glm_property_f_fcst.rbe_outlet_payroll_amt} ;;
    value_format_name: decimal_0
  }


  #-- Payroll % var

  measure: payroll_amt_tofcst {
    label: "Payroll Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.payroll_amt}, ${glm_property_f_fcst.payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_payroll_amt_tofcst {
    label: "Payroll Rms Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_payroll_amt}, ${glm_property_f_fcst.room_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_payroll_amt_tofcst {
    label: "Payroll RB&E Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_payroll_amt}, ${glm_property_f_fcst.rbe_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_payroll_amt_tofcst {
    label: "Payroll Spa Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_payroll_amt}, ${glm_property_f_fcst.spa_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_payroll_amt_tofcst {
    label: "Payroll Golf Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_payroll_amt}, ${glm_property_f_fcst.golf_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_amt_tofcst {
    label: "Payroll Fitness & Rec Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_payroll_amt}, ${glm_property_f_fcst.fitness_recreation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_amt_tofcst {
    label: "Payroll Parking & Trans Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_payroll_amt}, ${glm_property_f_fcst.parking_transportation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_payroll_amt_tofcst {
    label: "Payroll Telecom Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_payroll_amt}, ${glm_property_f_fcst.telecom_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_payroll_amt_tofcst {
    label: "Payroll Retail Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_payroll_amt}, ${glm_property_f_fcst.retail_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_amt_tofcst {
    label: "Payroll Other Op. Dept. Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_payroll_amt}, ${glm_property_f_fcst.other_operated_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_amt_tofcst {
    label: "Payroll Mgmt Srvcs Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_payroll_amt}, ${glm_property_f_fcst.property_mgmt_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_payroll_amt_tofcst {
    label: "Payroll A&G Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.administrative_general_payroll_amt}, ${glm_property_f_fcst.administrative_general_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_payroll_amt_tofcst {
    label: "Payroll IT Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.information_technology_payroll_amt}, ${glm_property_f_fcst.information_technology_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_payroll_amt_tofcst {
    label: "Payroll S&M Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.sales_marketing_payroll_amt}, ${glm_property_f_fcst.sales_marketing_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_payroll_amt_tofcst {
    label: "Payroll R&M Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_operations_maintenance_payroll_amt}, ${glm_property_f_fcst.property_operations_maintenance_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_payroll_amt_tofcst {
    label: "Payroll Rentals & Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_payroll_amt}, ${glm_property_f_fcst.misc_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_payroll_amt_tofcst {
    label: "Payroll Nonoperating Airport Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_payroll_amt}, ${glm_property_f_fcst.nonoperating_airport_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_payroll_amt_tofcst {
    label: "Payroll Nonoperating Realty Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_payroll_amt}, ${glm_property_f_fcst.nonoperating_realty_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_payroll_amt_tofcst {
    label: "Payroll Nonoperating Utility Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_payroll_amt}, ${glm_property_f_fcst.nonoperating_util_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_payroll_amt_tofcst {
    label: "Payroll RB&E Outlet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_payroll_amt}, ${glm_property_f_fcst.rbe_outlet_payroll_amt}) ;;
    value_format_name: percent_1
  }

  #-- Covers

  measure: rbe_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_cover_cnt} - ${glm_property_f_fcst.rbe_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Banquet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_cover_cnt} - ${glm_property_f_fcst.rbe_banquet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Catering Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_cover_cnt} - ${glm_property_f_fcst.rbe_catering_cover_cnt} ;;
    value_format_name: decimal_0
  }


  measure: rbe_outlet_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Outlet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_cover_cnt} - ${glm_property_f_fcst.rbe_outlet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Room Service Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_other_cover_cnt} - ${glm_property_f_fcst.rbe_room_service_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_cover_cnt_tofcst_v {
    label: "Cvrs RB&E Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_other_cover_cnt} - ${glm_property_f_fcst.rbe_other_cover_cnt} ;;
    value_format_name: decimal_0
  }


  #-- Covers % var

  measure: rbe_cover_cnt_tofcst {
    label: "Cvrs RB&E Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_cover_cnt}, ${glm_property_f_fcst.rbe_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_cover_cnt_tofcst {
    label: "Cvrs RB&E Banquet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_cover_cnt}, ${glm_property_f_fcst.rbe_banquet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_cover_cnt_tofcst {
    label: "Cvrs RB&E Catering Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_cover_cnt}, ${glm_property_f_fcst.rbe_catering_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_cover_cnt_tofcst {
    label: "Cvrs RB&E Outlet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_cover_cnt}, ${glm_property_f_fcst.rbe_outlet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_cover_cnt_tofcst {
    label: "Cvrs RB&E Room Service Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_cover_cnt}, ${glm_property_f_fcst.rbe_room_service_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_cover_cnt_tofcst {
    label: "Cvrs RB&E Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_cover_cnt}, ${glm_property_f_fcst.rbe_other_cover_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Treatments

  measure: spa_treatment_cnt_tofcst_v {
    label: "Trtmnts Spa Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.spa_treatment_cnt} - ${glm_property_f_fcst.spa_treatment_cnt} ;;
    value_format_name: decimal_0
  }

  measure: golf_round_cnt_tofcst_v {
    label: "Rnds Golf Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.golf_round_cnt} - ${glm_property_f_fcst.golf_round_cnt} ;;
    value_format_name: decimal_0
  }


  #-- Treatments % var

  measure: spa_treatment_cnt_tofcst {
    label: "Trtmnts Spa Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_treatment_cnt}, ${glm_property_f_fcst.spa_treatment_cnt}) ;;
    value_format_name: percent_1
  }

  measure: golf_round_cnt_tofcst {
    label: "Rnds Golf Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_round_cnt}, ${glm_property_f_fcst.golf_round_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Rooms

  measure: arrival_cnt_tofcst_v {
    label: "Arrivals Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.arrival_cnt} - ${glm_property_f_fcst.arrival_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_room_cnt_tofcst_v {
    label: "Rms Occ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_room_cnt} - ${glm_property_f_fcst.occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_transient_room_cnt_tofcst_v {
    label: "Rms Occ Transient Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_transient_room_cnt} - ${glm_property_f_fcst.occupied_transient_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_group_room_cnt_tofcst_v {
    label: "Rms Occ Group Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_group_room_cnt} - ${glm_property_f_fcst.occupied_group_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_contract_room_cnt_tofcst_v {
    label: "Rms Occ Contract Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_contract_room_cnt} - ${glm_property_f_fcst.occupied_contract_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avail_room_cnt_tofcst_v {
    label: "Rms Avail Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.avail_room_cnt} - ${glm_property_f_fcst.avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_owner_room_cnt_tofcst_v {
    label: "Rms Occ Owner Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_owner_room_cnt} - ${glm_property_f_fcst.occupied_owner_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: comp_room_cnt_tofcst_v {
    label: "Rms Occ Comp Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.comp_room_cnt - ${glm_property_f_fcst.comp_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: net_avail_room_cnt_tofcst_v {
    label: "Rms Avail Net Act:Fcst - var"
    type: number
    sql: ${glm_property_f_ty.net_avail_room_cnt - ${glm_property_f_fcst.net_avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: transient_room_rev_amt_tofcst_v {
    label: "Rev Rms Transient Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.transient_room_rev_amt} - ${glm_property_f_fcst.transient_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: group_room_rev_amt_tofcst_v {
    label: "Rev Rms Group Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.group_room_rev_amt} - ${glm_property_f_fcst.group_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: contract_room_rev_amt_tofcst_v {
    label: "Rev Rms Contract Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.contract_room_rev_amt} - ${glm_property_f_fcst.contract_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: no_show_room_rev_amt_tofcst_v {
    label: "Rev Rms No show Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.no_show_room_rev_amt} - ${glm_property_f_fcst.no_show_room_rev_amt} ;;
    value_format_name: decimal_0
  }



  #-- Rooms % var

  measure: arrival_cnt_tofcst {
    label: "Arrivals Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.arrival_cnt}, ${glm_property_f_fcst.arrival_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_room_cnt_tofcst {
    label: "Rms Occ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_room_cnt}, ${glm_property_f_fcst.occupied_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_cnt_tofcst {
    label: "Rms Occ Transient Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_transient_room_cnt}, ${glm_property_f_fcst.occupied_transient_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_cnt_tofcst {
    label: "Rms Occ Group Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_group_room_cnt}, ${glm_property_f_fcst.occupied_group_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_cnt_tofcst {
    label: "Rms Occ Contract Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_contract_room_cnt}, ${glm_property_f_fcst.occupied_contract_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: avail_room_cnt_tofcst {
    label: "Rms Avail Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.avail_room_cnt}, ${glm_property_f_fcst.avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_owner_room_cnt_tofcst {
    label: "Rms Occ Owner Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_owner_room_cnt}, ${glm_property_f_fcst.occupied_owner_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: comp_room_cnt_tofcst {
    label: "Rms Occ Comp Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.comp_room_cnt - ${glm_property_f_fcst.comp_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: net_avail_room_cnt_tofcst {
    label: "Rms Avail Net Act:Fcst - var %"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.net_avail_room_cnt - ${glm_property_f_fcst.net_avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: transient_room_rev_amt_tofcst {
    label: "Rev Rms Transient Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.transient_room_rev_amt}, ${glm_property_f_fcst.transient_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: group_room_rev_amt_tofcst {
    label: "Rev Rms Group Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.group_room_rev_amt}, ${glm_property_f_fcst.group_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: contract_room_rev_amt_tofcst {
    label: "Rev Rms Contract Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.contract_room_rev_amt}, ${glm_property_f_fcst.contract_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Profit

  measure: profit_amt_tofcst_v {
    label: "Profit Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.profit_amt} - ${glm_property_f_fcst.profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_profit_amt_tofcst_v {
    label: "Profit Rms Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_profit_amt} - ${glm_property_f_fcst.room_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_profit_amt_tofcst_v {
    label: "Profit RB&E Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_profit_amt} - ${glm_property_f_fcst.rbe_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_profit_amt_tofcst_v {
    label: "Profit RB&E Banquet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_profit_amt} - ${glm_property_f_fcst.rbe_banquet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_profit_amt_tofcst_v {
    label: "Profit RB&E Catering Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_profit_amt} - ${glm_property_f_fcst.rbe_catering_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_profit_amt_tofcst_v {
    label: "Profit RB&E Conference Services Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_conference_services_profit_amt} - ${glm_property_f_fcst.rbe_conference_services_profit_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_banquet_catering_conference_services_profit_amt_tofcst_v {
  #  label: "Profit RB&E Banquet Catering Conference Services Act:Fcst - var"
  #  description: "Actual - Fcst"
  #  type: number
  #  sql: ${glm_property_f_ty.rbe_banquet_catering_conference_services_profit_amt} - ${glm_property_f_fcst.rbe_banquet_catering_conference_services_profit_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: rbe_outlet_profit_amt_tofcst_v {
    label: "Profit RB&E Outlet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_profit_amt} - ${glm_property_f_fcst.rbe_outlet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_profit_amt_tofcst_v {
    label: "Profit RB&E Room Service Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_other_profit_amt} - ${glm_property_f_fcst.rbe_room_service_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_profit_amt_tofcst_v {
    label: "Profit RB&E Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_other_profit_amt} - ${glm_property_f_fcst.rbe_other_profit_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_outlet_other_profit_amt_tofcst_v {
  #  label: "Profit RB&E Outlet Other Act:Fcst - var"
  #  description: "Actual - Fcst"
  #  type: number
  #  sql: ${glm_property_f_ty.rbe_outlet_other_profit_amt} - ${glm_property_f_fcst.rbe_outlet_other_profit_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: spa_profit_amt_tofcst_v {
    label: "Profit Spa Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.spa_profit_amt} - ${glm_property_f_fcst.spa_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_profit_amt_tofcst_v {
    label: "Profit Golf Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.golf_profit_amt} - ${glm_property_f_fcst.golf_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_profit_amt_tofcst_v {
    label: "Profit Fitness & Rec Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_profit_amt} - ${glm_property_f_fcst.fitness_recreation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_profit_amt_tofcst_v {
    label: "Profit Parking & Trans Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_profit_amt} - ${glm_property_f_fcst.parking_transportation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_profit_amt_tofcst_v {
    label: "Profit Telecom Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.telecom_profit_amt} - ${glm_property_f_fcst.telecom_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_profit_amt_tofcst_v {
    label: "Profit Retail Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.retail_profit_amt} - ${glm_property_f_fcst.retail_profit_amt} ;;
    value_format_name: decimal_0
  }

  #measure: spa_fitness_recreation_profit_amt_tofcst_v {
  #  label: "Profit Spa Fitness & Rec Act:Fcst - var"
  #  description: "Actual - Fcst"
  #  type: number
  #  sql: ${glm_property_f_ty.spa_fitness_recreation_profit_amt} - ${glm_property_f_fcst.spa_fitness_recreation_profit_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: other_operated_profit_amt_tofcst_v {
    label: "Profit Other Op. Dept. Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.other_operated_profit_amt} - ${glm_property_f_fcst.other_operated_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_profit_amt_tofcst_v {
    label: "Profit Mgmt Srvcs Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_profit_amt} - ${glm_property_f_fcst.property_mgmt_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_profit_amt_tofcst_v {
    label: "Profit Rentals & Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.misc_profit_amt} - ${glm_property_f_fcst.misc_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_profit_amt_tofcst_v {
    label: "Profit Nonoperating Realty Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_profit_amt} - ${glm_property_f_fcst.nonoperating_realty_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_profit_amt_tofcst_v {
    label: "Profit Nonoperating Airport Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_profit_amt} - ${glm_property_f_fcst.nonoperating_airport_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_profit_amt_tofcst_v {
    label: "Profit Nonoperating Utility Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_profit_amt} - ${glm_property_f_fcst.nonoperating_util_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_profit_amt_tofcst_v {
    label: "Profit Undistributed Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.undistributed_profit_amt} - ${glm_property_f_fcst.undistributed_profit_amt} ;;
    value_format_name: decimal_0
  }

  #-- Profit % var

  measure: profit_amt_tofcst {
    label: "Profit Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.profit_amt}, ${glm_property_f_fcst.profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_profit_amt_tofcst {
    label: "Profit Rms Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_profit_amt}, ${glm_property_f_fcst.room_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_profit_amt_tofcst {
    label: "Profit RB&E Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_profit_amt}, ${glm_property_f_fcst.rbe_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_profit_amt_tofcst {
    label: "Profit RB&E Banquet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_profit_amt}, ${glm_property_f_fcst.rbe_banquet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_profit_amt_tofcst {
    label: "Profit RB&E Catering Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_profit_amt}, ${glm_property_f_fcst.rbe_catering_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_profit_amt_tofcst {
    label: "Profit RB&E Conference Services Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_conference_services_profit_amt}, ${glm_property_f_fcst.rbe_conference_services_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_profit_amt_tofcst {
    label: "Profit RB&E Outlet Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_profit_amt}, ${glm_property_f_fcst.rbe_outlet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_profit_amt_tofcst {
    label: "Profit RB&E Room Service Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_profit_amt}, ${glm_property_f_fcst.rbe_room_service_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_profit_amt_tofcst {
    label: "Profit RB&E Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_profit_amt}, ${glm_property_f_fcst.rbe_other_profit_amt}) ;;
    value_format_name: percent_1
  }

  #measure: rbe_outlet_other_profit_amt_tofcst {
  #  label: "Profit RB&E Outlet Other Act:Fcst - var %"
  #  description: "(Actual - Fcst) / Fcst"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_other_profit_amt}, ${glm_property_f_fcst.rbe_outlet_other_profit_amt}) ;;
  #  value_format_name: percent_1
  #}

  measure: spa_profit_amt_tofcst {
    label: "Profit Spa Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_profit_amt}, ${glm_property_f_fcst.spa_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_profit_amt_tofcst {
    label: "Profit Golf Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_profit_amt}, ${glm_property_f_fcst.golf_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_profit_amt_tofcst {
    label: "Profit Fitness & Rec Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_profit_amt}, ${glm_property_f_fcst.fitness_recreation_profit_amt}) ;;
    value_format_name: percent_1
  }

  #measure: spa_fitness_recreation_profit_amt_tofcst {
  #  label: "Profit Spa Fitness & Rec Act:Fcst - var %"
  #  description: "(Actual - Fcst) / Fcst"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_f_ty.spa_fitness_recreation_profit_amt}, ${glm_property_f_fcst.spa_fitness_recreation_profit_amt}) ;;
  #  value_format_name: percent_1
  #}

  measure: parking_transportation_profit_amt_tofcst {
    label: "Profit Parking & Trans Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_profit_amt}, ${glm_property_f_fcst.parking_transportation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_profit_amt_tofcst {
    label: "Profit Telecom Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_profit_amt}, ${glm_property_f_fcst.telecom_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_profit_amt_tofcst {
    label: "Profit Retail Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_profit_amt}, ${glm_property_f_fcst.retail_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_profit_amt_tofcst {
    label: "Profit Other Op. Dept. Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_profit_amt}, ${glm_property_f_fcst.other_operated_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_profit_amt_tofcst {
    label: "Profit Mgmt Srvcs Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_profit_amt}, ${glm_property_f_fcst.property_mgmt_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_profit_amt_tofcst {
    label: "Profit Rentals & Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_profit_amt}, ${glm_property_f_fcst.misc_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_profit_amt_tofcst {
    label: "Profit Nonoperating Realty Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_profit_amt}, ${glm_property_f_fcst.nonoperating_realty_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_profit_amt_tofcst {
    label: "Profit Nonoperating Airport Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_profit_amt}, ${glm_property_f_fcst.nonoperating_airport_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_profit_amt_tofcst {
    label: "Profit Nonoperating Utility Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_profit_amt}, ${glm_property_f_fcst.nonoperating_util_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: undistributed_profit_amt_tofcst {
    label: "Profit Undistributed Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.undistributed_profit_amt}, ${glm_property_f_fcst.undistributed_profit_amt}) ;;
    value_format_name: percent_1
  }

  #-- Cost

  measure: cost_of_sales_amt_tofcst_v {
    label: "COS Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.cost_of_sales_amt} - ${glm_property_f_fcst.cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_cost_of_sales_amt_tofcst_v {
    label: "COS Rms Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_cost_of_sales_amt} - ${glm_property_f_fcst.room_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_cost_of_sales_amt_tofcst_v {
    label: "COS RB&E Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_cost_of_sales_amt} - ${glm_property_f_fcst.rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_cost_of_sales_amt_tofcst_v {
    label: "COS Spa Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.spa_cost_of_sales_amt} - ${glm_property_f_fcst.spa_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_cost_of_sales_amt_tofcst_v {
    label: "COS Golf Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.golf_cost_of_sales_amt} - ${glm_property_f_fcst.golf_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_cost_of_sales_amt_tofcst_v {
    label: "COS Fitness & Rec Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_cost_of_sales_amt} - ${glm_property_f_fcst.fitness_recreation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_cost_of_sales_amt_tofcst_v {
    label: "COS Parking & Trans Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_cost_of_sales_amt} - ${glm_property_f_fcst.parking_transportation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_cost_of_sales_amt_tofcst_v {
    label: "COS Telecom Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.telecom_cost_of_sales_amt} - ${glm_property_f_fcst.telecom_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_cost_of_sales_amt_tofcst_v {
    label: "COS Retail Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.retail_cost_of_sales_amt} - ${glm_property_f_fcst.retail_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_cost_of_sales_amt_tofcst_v {
    label: "COS Other Op. Dept. Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.other_operated_cost_of_sales_amt} - ${glm_property_f_fcst.other_operated_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_cost_of_sales_amt_tofcst_v {
    label: "COS Mgmt Srvcs Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_cost_of_sales_amt} - ${glm_property_f_fcst.property_mgmt_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_cost_of_sales_amt_tofcst_v {
    label: "COS Rentals & Other Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.misc_cost_of_sales_amt} - ${glm_property_f_fcst.misc_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_cost_of_sales_amt_tofcst_v {
    label: "COS Nonoperating Realty Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_cost_of_sales_amt} - ${glm_property_f_fcst.nonoperating_realty_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_cost_of_sales_amt_tofcst_v {
    label: "COS Nonoperating Airport Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_cost_of_sales_amt} - ${glm_property_f_fcst.nonoperating_airport_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_cost_of_sales_amt_tofcst_v {
    label: "COS Nonoperating Utility Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_cost_of_sales_amt} - ${glm_property_f_fcst.nonoperating_util_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_cost_of_sales_amt_tofcst_v {
    label: "COS RB&E Food Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.food_rbe_cost_of_sales_amt} - ${glm_property_f_fcst.food_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_cost_of_sales_amt_tofcst_v {
    label: "COS RB&E Beverage Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_cost_of_sales_amt} - ${glm_property_f_fcst.beverage_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cost_of_sales_amt_tofcst_v {
    label: "COS RB&E Outlet Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_cost_of_sales_amt} - ${glm_property_f_ly.rbe_outlet_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_tofcst_v {
    label: "Rev /Trtmnt Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_rev_treatment_avg_amt} - ${glm_property_f_fcst.spa_rev_treatment_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_rev_round_avg_amt_tofcst_v {
    label: "Rev /Rnd Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_rev_round_avg_amt} - ${glm_property_f_fcst.golf_rev_round_avg_amt} ;;
    value_format_name: decimal_2
  }

#-- Cost % var


  measure: cost_of_sales_amt_tofcst {
    label: "COS Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.cost_of_sales_amt}, ${glm_property_f_fcst.cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_cost_of_sales_amt_tofcst {
    label: "COS Rms Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_cost_of_sales_amt}, ${glm_property_f_fcst.room_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_cost_of_sales_amt_tofcst {
    label: "COS RB&E Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_cost_of_sales_amt}, ${glm_property_f_fcst.rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_cost_of_sales_amt_tofcst {
    label: "COS Spa Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_cost_of_sales_amt}, ${glm_property_f_fcst.spa_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_cost_of_sales_amt_tofcst {
    label: "COS Golf Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_cost_of_sales_amt}, ${glm_property_f_fcst.golf_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_cost_of_sales_amt_tofcst {
    label: "COS Fitness & Rec Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_cost_of_sales_amt}, ${glm_property_f_fcst.fitness_recreation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_cost_of_sales_amt_tofcst {
    label: "COS Parking & Trans Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_cost_of_sales_amt}, ${glm_property_f_fcst.parking_transportation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_cost_of_sales_amt_tofcst {
    label: "COS Telecom Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_cost_of_sales_amt}, ${glm_property_f_fcst.telecom_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_cost_of_sales_amt_tofcst {
    label: "COS Retail Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_cost_of_sales_amt}, ${glm_property_f_fcst.retail_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_cost_of_sales_amt_tofcst {
    label: "COS Other Op. Dept. Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_cost_of_sales_amt}, ${glm_property_f_fcst.other_operated_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_cost_of_sales_amt_tofcst {
    label: "COS Mgmt Srvcs Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_cost_of_sales_amt}, ${glm_property_f_fcst.property_mgmt_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_cost_of_sales_amt_tofcst {
    label: "COS Rentals & Other Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_cost_of_sales_amt}, ${glm_property_f_fcst.misc_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_cost_of_sales_amt_tofcst {
    label: "COS Nonoperating Realty Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_cost_of_sales_amt}, ${glm_property_f_fcst.nonoperating_realty_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_cost_of_sales_amt_tofcst {
    label: "COS Nonoperating Airport Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_cost_of_sales_amt}, ${glm_property_f_fcst.nonoperating_airport_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_cost_of_sales_amt_tofcst {
    label: "COS Nonoperating Utility Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_cost_of_sales_amt}, ${glm_property_f_fcst.nonoperating_util_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_tofcst {
    label: "Rev /Trtmnt Spa Act:LY - var %"
    description: "Actual - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_rev_treatment_avg_amt}, ${glm_property_f_fcst.spa_rev_treatment_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_round_avg_amt_tofcst {
    label: "Rev /Rnd Golf Act:LY - var %"
    description: "Actual - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_rev_round_avg_amt}, ${glm_property_f_fcst.golf_rev_round_avg_amt}) ;;
    value_format_name: percent_1
  }


  #-- Occupancy

  measure: occupied_room_pct_tofcst_v {
    label: "Rms Occ % Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_room_pct} - ${glm_property_f_fcst.occupied_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tofcst_v {
    label: "Rms Occ % Group Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_group_room_pct} - ${glm_property_f_fcst.occupied_group_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tofcst_v {
    label: "Rms Occ % Transient Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_transient_room_pct} - ${glm_property_f_fcst.occupied_transient_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tofcst_v {
    label: "Rms Occ % Contract Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_contract_room_pct} - ${glm_property_f_fcst.occupied_contract_room_pct} ;;
    value_format_name: percent_1
  }


  #-- Occupancy % var

  measure: occupied_room_pct_tofcst {
    label: "Rms Occ % Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_room_pct}, ${glm_property_f_fcst.occupied_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tofcst {
    label: "Rms Occ % Group Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_group_room_pct}, ${glm_property_f_fcst.occupied_group_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tofcst {
    label: "Rms Occ % Transient Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_transient_room_pct}, ${glm_property_f_fcst.occupied_transient_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tofcst {
    label: "Rms Occ % Contract Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_contract_room_pct}, ${glm_property_f_fcst.occupied_contract_room_pct}) ;;
    value_format_name: percent_1
  }

  #-- ADR

  measure: adr_amt_tofcst_v {
    label: "ADR $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.adr_amt} - ${glm_property_f_fcst.adr_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_transient_amt_tofcst_v {
    label: "ADR Transient $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.adr_transient_amt} - ${glm_property_f_fcst.adr_transient_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_group_amt_tofcst_v {
    label: "ADR Group $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.adr_group_amt} - ${glm_property_f_fcst.adr_group_amt} ;;
    value_format_name: decimal_2
  }

  #-- ADR % var

  measure: adr_amt_tofcst {
    label: "ADR $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_amt}, ${glm_property_f_fcst.adr_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_transient_amt_tofcst {
    label: "ADR Transient $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_transient_amt}, ${glm_property_f_fcst.adr_transient_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_group_amt_tofcst {
    label: "ADR Group $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_group_amt}, ${glm_property_f_fcst.adr_group_amt}) ;;
    value_format_name: percent_1
  }

  #-- Room nights

  measure: room_night_transient_pct_tofcst_v {
    label: "Rms Night Transient % Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_night_transient_pct} - ${glm_property_f_fcst.room_night_transient_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tofcst_v {
    label: "Rms Night Group % Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_night_group_pct} - ${glm_property_f_fcst.room_night_group_pct} ;;
    value_format_name: percent_1
  }

  #-- Room nights % var

  measure: room_night_transient_pct_tofcst {
    label: "Rms Night Transient % Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_night_transient_pct}, ${glm_property_f_fcst.room_night_transient_pct}) ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tofcst {
    label: "Rms Night Group % Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_night_group_pct}, ${glm_property_f_fcst.room_night_group_pct}) ;;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_amt_tofcst_v {
    label: "Rev PAR $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rev_par_amt} - ${glm_property_f_fcst.rev_par_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_group_amt_tofcst_v {
    label: "Rev PAR $ Group Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rev_par_group_amt} - ${glm_property_f_fcst.rev_par_group_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_transient_amt_tofcst_v {
    label: "Rev PAR $ Transient Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rev_par_transient_amt} - ${glm_property_f_fcst.rev_par_transient_amt} ;;
    value_format_name: usd_0
  }

  #-- Rev PAR % var

  measure: rev_par_amt_tofcst {
    label: "Rev PAR $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_par_amt}, ${glm_property_f_fcst.rev_par_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_group_amt_tofcst {
    label: "Rev PAR $ Group Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_par_group_amt}, ${glm_property_f_fcst.rev_par_group_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_transient_amt_tofcst {
    label: "Rev PAR $ Transient Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_par_transient_amt}, ${glm_property_f_fcst.rev_par_transient_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg check

  measure: rbe_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Avg $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_check_avg_amt} - ${glm_property_f_fcst.rbe_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Banquet Avg $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_check_avg_amt} - ${glm_property_f_fcst.rbe_banquet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Catering Avg $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_check_avg_amt} - ${glm_property_f_fcst.rbe_catering_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Outlet Avg $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_check_avg_amt} - ${glm_property_f_fcst.rbe_outlet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_room_service_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Room Service Avg $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_room_service_check_avg_amt} - ${glm_property_f_fcst.rbe_room_service_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_check_avg_amt_tofcst_v {
    label: "Cvrs RB&E Other Avg $ Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_other_check_avg_amt} - ${glm_property_f_fcst.rbe_other_check_avg_amt} ;;
    value_format_name: decimal_2
  }


  #-- Avg check % var

  measure: rbe_check_avg_amt_tofcst {
    label: "Cvrs RB&E Avg $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_check_avg_amt}, ${glm_property_f_fcst.rbe_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_check_avg_amt_tofcst {
    label: "Cvrs RB&E Banquet Avg $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_check_avg_amt}, ${glm_property_f_fcst.rbe_banquet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_check_avg_amt_tofcst {
    label: "Cvrs RB&E Catering Avg $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_check_avg_amt}, ${glm_property_f_fcst.rbe_catering_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_check_avg_amt_tofcst {
    label: "Cvrs RB&E Outlet Avg $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_check_avg_amt}, ${glm_property_f_fcst.rbe_outlet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_check_avg_amt_tofcst {
    label: "Cvrs RB&E Room Service Avg $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_room_service_check_avg_amt}, ${glm_property_f_fcst.rbe_room_service_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_check_avg_amt_tofcst {
    label: "Cvrs RB&E Other Avg $ Act:Fcst - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_check_avg_amt}, ${glm_property_f_fcst.rbe_other_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev
  measure: payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.payroll_rev_pct} - ${glm_property_f_fcst.payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev % var

  measure: payroll_rev_pct_tofcst {
    label: "Payroll /Rev Act:LY - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.payroll_rev_pct}, ${glm_property_f_fcst.payroll_rev_pct}) ;;
    value_format_name: percent_1
  }


  #-- Avg length of stay

  measure: length_of_stay_avg_amt_tofcst_v {
    label: "Stay Length Avg Night Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.length_of_stay_avg_amt} - ${glm_property_f_fcst.length_of_stay_avg_amt} ;;
    value_format_name: decimal_1
  }

  #-- Avg length of stay % var

  measure: length_of_stay_avg_amt_tofcst {
    label: "Stay Length Avg Night Act:LY - var %"
    description: "(Actual - Fcst) / Fcst"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.length_of_stay_avg_amt}, ${glm_property_f_fcst.length_of_stay_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll Rev %

  measure: room_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Rms Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_payroll_rev_pct} - ${glm_property_f_fcst.room_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: rbe_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev RB&E Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.rbe_payroll_rev_pct} - ${glm_property_f_fcst.rbe_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: spa_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Spa Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.spa_payroll_rev_pct} - ${glm_property_f_fcst.spa_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: golf_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Golf Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.golf_payroll_rev_pct} - ${glm_property_f_fcst.golf_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Fitness & Rec Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_payroll_rev_pct} - ${glm_property_f_fcst.fitness_recreation_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Parking & Trans Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_payroll_rev_pct - ${glm_property_f_fcst.parking_transportation_payroll_rev_pct} ;;
    value_format_name: usd_0
  }

  measure: telecom_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Telecom Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.telecom_payroll_rev_pct} - ${glm_property_f_fcst.telecom_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: retail_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Retail Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.retail_payroll_rev_pct} - ${glm_property_f_fcst.retail_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Other Op. Dept. Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.other_operated_payroll_rev_pct} - ${glm_property_f_fcst.other_operated_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Mgmt Srvcs Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_payroll_rev_pct} - ${glm_property_f_fcst.property_mgmt_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: misc_payroll_rev_pct_tofcst_v {
    label: "Payroll /Rev Rentals & Other % Act:LY - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.misc_payroll_rev_pct} - ${glm_property_f_fcst.misc_payroll_rev_pct} ;;
    value_format_name: percent_1
  }



  #-- Rental property splits

  measure: room_rental_mgmt_2_19_rev_amt_tofcst_v {
    label: "Rev Rms Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.room_rental_mgmt_2_19_rev_amt} - ${glm_property_f_fcst.room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: avail_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Avail Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.avail_room_rental_mgmt_2_19_cnt} - ${glm_property_f_fcst.avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_owner_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Owner Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_owner_room_rental_mgmt_2_19_cnt} - ${glm_property_f_fcst.occupied_owner_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: net_avail_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Avail Net Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.net_avail_room_rental_mgmt_2_19_cnt} - ${glm_property_f_fcst.net_avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_room_rental_mgmt_2_19_cnt} - ${glm_property_f_fcst.occupied_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: transient_room_rental_mgmt_2_19_rev_amt_tofcst_v {
    label: "Rev Rms Transient Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.transient_room_rental_mgmt_2_19_rev_amt} - ${glm_property_f_fcst.transient_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: usd_0
  }
  measure: group_room_rental_mgmt_2_19_rev_amt_tofcst_v {
    label: "Rev Rms Group Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.group_room_rental_mgmt_2_19_rev_amt - ${glm_property_f_fcst.group_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: contract_room_rental_mgmt_2_19_rev_amt_tofcst_v {
    label: "Rev Rms Contract Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.contract_room_rental_mgmt_2_19_rev_amt} - ${glm_property_f_fcst.contract_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_transient_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Transient Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_transient_room_rental_mgmt_2_19_cnt} - ${glm_property_f_fcst.occupied_transient_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_group_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Group Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_group_room_rental_mgmt_2_19_cnt} - ${glm_property_f_fcst.occupied_group_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_contract_room_rental_mgmt_2_19_cnt_tofcst_v {
    label: "Rms Occ Contract Rental Act:Fcst - var"
    description: "Actual - Fcst"
    type: number
    sql: ${glm_property_f_ty.occupied_contract_room_rental_mgmt_2_19_cnt} - ${glm_property_f_fcst.occupied_contract_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }


}
