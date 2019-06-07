view: glm_property_f_toly {
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
  #-- actual to LY: rev, AGOP, rooms_rev_amt, RB&E
  #--------------------------------------------------------------------------------

  #-- Rev var

  measure: rev_amt_toly_v {
    label: "Rev Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rev_amt} - ${glm_property_f_ly.rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: agop_amt_toly_v {
    label: "AGOP Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.agop_amt} - ${glm_property_f_ly.agop_amt} ;;
    value_format_name: decimal_0
  }

  #measure: agop_abs_amt_toly_v {
  #  label: "AGOP Abs Act:LY - var"
  #  description: "Actual - LY"
  #  type: number
  #  sql: ${glm_property_f_ty.agop_abs_amt} - ${glm_property_f_ly.agop_abs_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: gop_amt_toly_v {
    label: "GOP Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.gop_amt} - ${glm_property_f_ly.gop_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_rev_amt_toly_v {
    label: "Rev Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_rev_amt} - ${glm_property_f_ly.room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_rev_amt_toly_v {
    label: "Rev Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.other_rev_amt} - ${glm_property_f_ly.other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_rev_amt_toly_v {
    label: "Rev RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_rev_amt} - ${glm_property_f_ly.rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_rev_amt_toly_v {
    label: "Rev RB&E Banquet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_rev_amt} - ${glm_property_f_ly.rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_rev_toly_v {
    label: "Rev RB&E Catering Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_rev_amt} - ${glm_property_f_ly.rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_rev_toly_v {
    label: "Rev RB&E Conference Services Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_conference_services_rev_amt} - ${glm_property_f_ly.rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_banquet_catering_conference_services_rev_toly_v {
  #  label: "Rev RB&E Banquet Catering Conference Services Act:LY - var"
  #  description: "Actual - LY"
  #  type: number
  #  sql: ${glm_property_f_ty.rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_f_ly.rbe_banquet_catering_conference_services_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: rbe_outlet_rev_amt_toly_v {
    label: "Rev RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_rev_amt} - ${glm_property_f_ly.rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_rev_amt_toly_v {
    label: "Rev RB&E Room Service Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_room_service_rev_amt} - ${glm_property_f_ly.rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_rev_amt_toly_v {
    label: "Rev RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_other_rev_amt} - ${glm_property_f_ly.rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_outlet_other_rev_amt_toly_v {
  #  label: "Rev RB&E Outlet Other Act:LY - var"
  #  description: "Actual - LY"
  #  type: number
  #  sql: ${glm_property_f_ty.rbe_outlet_other_rev_amt} - ${glm_property_f_ly.rbe_outlet_other_rev_amt} ;;
  #  value_format_name: decimal_0
  #}


  measure: food_rbe_rev_amt_toly_v {
    label: "Rev Food RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.food_rbe_rev_amt} - ${glm_property_f_ly.food_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_banquet_rev_amt_toly_v {
    label: "Rev Food RB&E Banquet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.food_rbe_banquet_rev_amt} - ${glm_property_f_ly.food_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_catering_rev_toly_v {
    label: "Rev Food RB&E Catering Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.food_rbe_catering_rev_amt} - ${glm_property_f_ly.food_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_conference_services_rev_toly_v {
    label: "Rev Food RB&E Conference Services Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.food_rbe_conference_services_rev_amt} - ${glm_property_f_ly.food_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: food_rbe_banquet_catering_conference_services_rev_toly_v {
  #  label: "Rev Food RB&E Banquet Catering Conference Services Act:LY - var"
  #  description: "Actual - LY"
  #  type: number
  #  sql: ${glm_property_f_ty.food_rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_f_ly.food_rbe_banquet_catering_conference_services_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: food_rbe_outlet_rev_amt_toly_v {
    label: "Rev Food RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.food_rbe_outlet_rev_amt} - ${glm_property_f_ly.food_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_room_service_rev_amt_toly_v {
    label: "Rev Food RB&E Room Service Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.food_rbe_room_service_rev_amt} - ${glm_property_f_ly.food_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_other_rev_amt_toly_v {
    label: "Rev Food RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.food_rbe_other_rev_amt} - ${glm_property_f_ly.food_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }


  measure: beverage_rbe_rev_amt_toly_v {
    label: "Rev Beverage RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_rev_amt} - ${glm_property_f_ly.beverage_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_banquet_rev_amt_toly_v {
    label: "Rev Beverage RB&E Banquet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_banquet_rev_amt} - ${glm_property_f_ly.beverage_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_catering_rev_toly_v {
    label: "Rev Beverage RB&E Catering Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_catering_rev_amt} - ${glm_property_f_ly.beverage_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_conference_services_rev_toly_v {
    label: "Rev Beverage RB&E Conference Services Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_conference_services_rev_amt} - ${glm_property_f_ly.beverage_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: beverage_rbe_banquet_catering_conference_services_rev_toly_v {
  #  label: "Rev Beverage RB&E Banquet Catering Conference Services Act:LY - var"
  #  description: "Actual - LY"
  #  type: number
  #  sql: ${glm_property_f_ty.beverage_rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_f_ly.beverage_rbe_banquet_catering_conference_services_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: beverage_rbe_outlet_rev_amt_toly_v {
    label: "Rev Beverage RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_outlet_rev_amt} - ${glm_property_f_ly.beverage_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_room_service_rev_amt_toly_v {
    label: "Rev Beverage RB&E Room Service Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_room_service_rev_amt} - ${glm_property_f_ly.beverage_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_other_rev_amt_toly_v {
    label: "Rev Beverage RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_other_rev_amt} - ${glm_property_f_ly.beverage_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_rev_amt_toly_v {
    label: "Rev Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_rev_amt} - ${glm_property_f_ly.spa_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_rev_amt_toly_v {
    label: "Rev Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_rev_amt} - ${glm_property_f_ly.golf_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_rev_amt_toly_v {
    label: "Rev Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_rev_amt} - ${glm_property_f_ly.fitness_recreation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_rev_amt_toly_v {
    label: "Rev Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_rev_amt} - ${glm_property_f_ly.parking_transportation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_rev_amt_toly_v {
    label: "Rev Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.telecom_rev_amt} - ${glm_property_f_ly.telecom_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_rev_amt_toly_v {
    label: "Rev Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.retail_rev_amt} - ${glm_property_f_ly.retail_rev_amt} ;;
    value_format_name: decimal_0
  }

  #measure: spa_fitness_recreation_rev_amt_toly_v {
  #  label: "Rev Spa Fitness & Rec Act:LY - var"
  #  description: "Actual - LY"
  #  type: number
  #  sql: ${glm_property_f_ty.spa_fitness_recreation_rev_amt} - ${glm_property_f_ly.spa_fitness_recreation_rev_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: other_operated_rev_amt_toly_v {
    label: "Rev Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.other_operated_rev_amt} - ${glm_property_f_ly.other_operated_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_rev_amt_toly_v {
    label: "Rev Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_rev_amt} - ${glm_property_f_ly.property_mgmt_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_rev_amt_toly_v {
    label: "Rev Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.misc_rev_amt} - ${glm_property_f_ly.misc_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_rev_amt_toly_v {
    label: "Rev Nonoperating Realty Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_rev_amt} - ${glm_property_f_ly.nonoperating_realty_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_rev_amt_toly_v {
    label: "Rev Nonoperating Airport Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_rev_amt} - ${glm_property_f_ly.nonoperating_airport_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_rev_amt_toly_v {
    label: "Rev Nonoperating Utility Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_rev_amt} - ${glm_property_f_ly.nonoperating_util_rev_amt} ;;
    value_format_name: decimal_0
  }

#-- Rev var %


  measure: rev_amt_toly {
    label: "Rev Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_amt}, ${glm_property_f_ly.rev_amt} );;
    value_format_name: percent_1
  }

  measure: agop_amt_toly {
    label: "AGOP Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.agop_amt}, ${glm_property_f_ly.agop_amt} );;
    value_format_name: percent_1
  }

  measure: gop_amt_toly {
    label: "GOP Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.gop_amt}, ${glm_property_f_ly.gop_amt} );;
    value_format_name: percent_1
  }

  measure: room_rev_amt_toly {
    label: "Rev Rms Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_rev_amt}, ${glm_property_f_ly.room_rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_rev_amt_toly {
    label: "Rev Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_rev_amt}, ${glm_property_f_ly.other_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_rev_amt_toly {
    label: "Rev RB&E Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_rev_amt}, ${glm_property_f_ly.rbe_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_banquet_rev_amt_toly {
    label: "Rev RB&E Banquet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_rev_amt}, ${glm_property_f_ly.rbe_banquet_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_catering_rev_toly {
    label: "Rev RB&E Catering Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_rev_amt}, ${glm_property_f_ly.rbe_catering_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_rev_toly {
    label: "Rev RB&E Conference Services Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_conference_services_rev_amt}, ${glm_property_f_ly.rbe_conference_services_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_outlet_rev_amt_toly {
    label: "Rev RB&E Outlet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_rev_amt}, ${glm_property_f_ly.rbe_outlet_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_room_service_rev_amt_toly {
    label: "Rev RB&E Room Service Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_room_service_rev_amt}, ${glm_property_f_ly.rbe_room_service_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_other_rev_amt_toly {
    label: "Rev RB&E Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_rev_amt}, ${glm_property_f_ly.rbe_other_rev_amt} );;
    value_format_name: percent_1
  }


  measure: food_rbe_rev_amt_toly {
    label: "Rev Food RB&E Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_rev_amt}, ${glm_property_f_ly.food_rbe_rev_amt} );;
    value_format_name: percent_1
  }

  measure: food_rbe_banquet_rev_amt_toly {
    label: "Rev Food RB&E Banquet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_banquet_rev_amt}, ${glm_property_f_ly.food_rbe_banquet_rev_amt} );;
    value_format_name: percent_1
  }

  measure: food_rbe_catering_rev_toly {
    label: "Rev Food RB&E Catering Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_catering_rev_amt}, ${glm_property_f_ly.food_rbe_catering_rev_amt} );;
    value_format_name: percent_1
  }

  measure: food_rbe_conference_services_rev_toly {
    label: "Rev Food RB&E Conference Services Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_conference_services_rev_amt}, ${glm_property_f_ly.food_rbe_conference_services_rev_amt} );;
    value_format_name: percent_1
  }

  measure: food_rbe_outlet_rev_amt_toly {
    label: "Rev Food RB&E Outlet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_outlet_rev_amt}, ${glm_property_f_ly.food_rbe_outlet_rev_amt} );;
    value_format_name: percent_1
  }

  measure: food_rbe_room_service_rev_amt_toly {
    label: "Rev Food RB&E Room Service Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_room_service_rev_amt}, ${glm_property_f_ly.food_rbe_room_service_rev_amt} );;
    value_format_name: percent_1
  }

  measure: food_rbe_other_rev_amt_toly {
    label: "Rev Food RB&E Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_other_rev_amt}, ${glm_property_f_ly.food_rbe_other_rev_amt} );;
    value_format_name: percent_1
  }


  measure: beverage_rbe_rev_amt_toly {
    label: "Rev Beverage RB&E Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_rev_amt}, ${glm_property_f_ly.beverage_rbe_rev_amt} );;
    value_format_name: percent_1
  }

  measure: beverage_rbe_banquet_rev_amt_toly {
    label: "Rev Beverage RB&E Banquet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_banquet_rev_amt}, ${glm_property_f_ly.beverage_rbe_banquet_rev_amt} );;
    value_format_name: percent_1
  }

  measure: beverage_rbe_catering_rev_toly {
    label: "Rev Beverage RB&E Catering Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_catering_rev_amt}, ${glm_property_f_ly.beverage_rbe_catering_rev_amt} );;
    value_format_name: percent_1
  }

  measure: beverage_rbe_conference_services_rev_toly {
    label: "Rev Beverage RB&E Conference Services Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_conference_services_rev_amt}, ${glm_property_f_ly.beverage_rbe_conference_services_rev_amt} );;
    value_format_name: percent_1
  }

  measure: beverage_rbe_outlet_rev_amt_toly {
    label: "Rev Beverage RB&E Outlet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_outlet_rev_amt}, ${glm_property_f_ly.beverage_rbe_outlet_rev_amt} );;
    value_format_name: percent_1
  }

  measure: beverage_rbe_room_service_rev_amt_toly {
    label: "Rev Beverage RB&E Room Service Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_room_service_rev_amt}, ${glm_property_f_ly.beverage_rbe_room_service_rev_amt} );;
    value_format_name: percent_1
  }

  measure: beverage_rbe_other_rev_amt_toly {
    label: "Rev Beverage RB&E Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_other_rev_amt}, ${glm_property_f_ly.beverage_rbe_other_rev_amt} );;
    value_format_name: percent_1
  }

  measure: spa_rev_amt_toly {
    label: "Rev Spa Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_rev_amt}, ${glm_property_f_ly.spa_rev_amt} );;
    value_format_name: percent_1
  }

  measure: golf_rev_amt_toly {
    label: "Rev Golf Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_rev_amt}, ${glm_property_f_ly.golf_rev_amt} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_rev_amt_toly {
    label: "Rev Fitness & Rec Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_rev_amt}, ${glm_property_f_ly.fitness_recreation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_rev_amt_toly {
    label: "Rev Parking & Trans Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_rev_amt}, ${glm_property_f_ly.parking_transportation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: telecom_rev_amt_toly {
    label: "Rev Telecom Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_rev_amt}, ${glm_property_f_ly.telecom_rev_amt} );;
    value_format_name: percent_1
  }

  measure: retail_rev_amt_toly {
    label: "Rev Retail Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_rev_amt}, ${glm_property_f_ly.retail_rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_operated_rev_amt_toly {
    label: "Rev Other Op. Dept. Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_rev_amt}, ${glm_property_f_ly.other_operated_rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_rev_amt_toly {
    label: "Rev Mgmt Srvcs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_rev_amt}, ${glm_property_f_ly.property_mgmt_rev_amt} );;
    value_format_name: percent_1
  }

  measure: misc_rev_amt_toly {
    label: "Rev Rentals & Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_rev_amt}, ${glm_property_f_ly.misc_rev_amt} );;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_rev_amt_toly {
    label: "Rev Nonoperating Realty Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_rev_amt}, ${glm_property_f_ly.nonoperating_realty_rev_amt} );;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_rev_amt_toly {
    label: "Rev Nonoperating Airport Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_rev_amt}, ${glm_property_f_ly.nonoperating_airport_rev_amt} );;
    value_format_name: percent_1
  }

  measure: nonoperating_util_rev_amt_toly {
    label: "Rev Nonoperating Utility Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_rev_amt}, ${glm_property_f_ly.nonoperating_util_rev_amt} );;
    value_format_name: percent_1
  }

  # -- Expenses

  measure: exp_amt_toly_v {
    label: "Exp Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.exp_amt} - ${glm_property_f_ly.exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_exp_amt_toly_v {
    label: "Exp Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_exp_amt} - ${glm_property_f_ly.room_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_exp_amt_toly_v {
    label: "Exp RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_exp_amt} - ${glm_property_f_ly.rbe_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_exp_amt_toly_v {
    label: "Exp Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_exp_amt} - ${glm_property_f_ly.spa_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_exp_amt_toly_v {
    label: "Exp Golf Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_exp_amt} - ${glm_property_f_ly.golf_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_exp_amt_toly_v {
    label: "Exp Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_exp_amt} - ${glm_property_f_ly.fitness_recreation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_exp_amt_toly_v {
    label: "Exp Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_exp_amt} - ${glm_property_f_ly.parking_transportation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_exp_amt_toly_v {
    label: "Exp Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.telecom_exp_amt} - ${glm_property_f_ly.telecom_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_exp_amt_toly_v {
    label: "Exp Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.retail_exp_amt} - ${glm_property_f_ly.retail_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_exp_amt_toly_v {
    label: "Exp Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.other_operated_exp_amt} - ${glm_property_f_ly.other_operated_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_exp_amt_toly_v {
    label: "Exp Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_exp_amt} - ${glm_property_f_ly.property_mgmt_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_exp_amt_toly_v {
    label: "Exp A&G Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.administrative_general_exp_amt} - ${glm_property_f_ly.administrative_general_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_exp_amt_toly_v {
    label: "Exp IT Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.information_technology_exp_amt} - ${glm_property_f_ly.information_technology_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_exp_amt_toly_v {
    label: "Exp S&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.sales_marketing_exp_amt} - ${glm_property_f_ly.sales_marketing_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_exp_amt_toly_v {
    label: "Exp R&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.property_operations_maintenance_exp_amt} - ${glm_property_f_ly.property_operations_maintenance_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_exp_amt_toly_v {
    label: "Exp Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.misc_exp_amt} - ${glm_property_f_ly.misc_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_exp_amt_toly_v {
    label: "Exp Nonoperating Realty Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_exp_amt} - ${glm_property_f_ly.nonoperating_realty_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_exp_amt_toly_v {
    label: "Exp Nonoperating Airport Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_exp_amt} - ${glm_property_f_ly.nonoperating_airport_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_exp_amt_toly_v {
    label: "Exp Nonoperating Utility Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_exp_amt} - ${glm_property_f_ly.nonoperating_util_exp_amt} ;;
    value_format_name: decimal_0
  }

# -- Expenses % var


  measure: exp_amt_toly {
    label: "Exp Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.exp_amt}, ${glm_property_f_ly.exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_exp_amt_toly {
    label: "Exp Rms Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_exp_amt}, ${glm_property_f_ly.room_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_exp_amt_toly {
    label: "Exp RB&E Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_exp_amt}, ${glm_property_f_ly.rbe_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_exp_amt_toly {
    label: "Exp Spa Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_exp_amt}, ${glm_property_f_ly.spa_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_exp_amt_toly {
    label: "Exp Golf Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_exp_amt}, ${glm_property_f_ly.golf_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_exp_amt_toly {
    label: "Exp Fitness & Rec Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_exp_amt}, ${glm_property_f_ly.fitness_recreation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_exp_amt_toly {
    label: "Exp Parking & Trans Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_exp_amt}, ${glm_property_f_ly.parking_transportation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_exp_amt_toly {
    label: "Exp Telecom Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_exp_amt}, ${glm_property_f_ly.telecom_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_exp_amt_toly {
    label: "Exp Retail Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_exp_amt}, ${glm_property_f_ly.retail_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_exp_amt_toly {
    label: "Exp Other Op. Dept. Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_exp_amt}, ${glm_property_f_ly.other_operated_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_exp_amt_toly {
    label: "Exp Mgmt Srvcs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_exp_amt}, ${glm_property_f_ly.property_mgmt_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_exp_amt_toly {
    label: "Exp A&G Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.administrative_general_exp_amt}, ${glm_property_f_ly.administrative_general_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_exp_amt_toly {
    label: "Exp IT Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.information_technology_exp_amt}, ${glm_property_f_ly.information_technology_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_exp_amt_toly {
    label: "Exp S&M Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.sales_marketing_exp_amt}, ${glm_property_f_ly.sales_marketing_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_exp_amt_toly {
    label: "Exp R&M Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_operations_maintenance_exp_amt}, ${glm_property_f_ly.property_operations_maintenance_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_exp_amt_toly {
    label: "Exp Rentals & Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_exp_amt}, ${glm_property_f_ly.misc_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_exp_amt_toly {
    label: "Exp Nonoperating Realty Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_exp_amt}, ${glm_property_f_ly.nonoperating_realty_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_exp_amt_toly {
    label: "Exp Nonoperating Airport Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_exp_amt}, ${glm_property_f_ly.nonoperating_airport_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_exp_amt_toly {
    label: "Exp Nonoperating Utility Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_exp_amt}, ${glm_property_f_ly.nonoperating_util_exp_amt}) ;;
    value_format_name: percent_1
  }

  # -- Other Expenses

  measure: other_exp_amt_toly_v {
    label: "Exp Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.other_exp_amt} - ${glm_property_f_ly.other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_other_exp_amt_toly_v {
    label: "Exp Other Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_other_exp_amt} - ${glm_property_f_ly.room_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_exp_amt_toly_v {
    label: "Exp Other RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_other_exp_amt} - ${glm_property_f_ly.rbe_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_other_exp_amt_toly_v {
    label: "Exp Other Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_other_exp_amt} - ${glm_property_f_ly.spa_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_other_exp_amt_toly_v {
    label: "Exp Other Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_other_exp_amt} - ${glm_property_f_ly.golf_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_other_exp_amt_toly_v {
    label: "Exp Other Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_other_exp_amt} - ${glm_property_f_ly.fitness_recreation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_other_exp_amt_toly_v {
    label: "Exp Other Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_other_exp_amt} - ${glm_property_f_ly.parking_transportation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_other_exp_amt_toly_v {
    label: "Exp Other Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.telecom_other_exp_amt} - ${glm_property_f_ly.telecom_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_other_exp_amt_toly_v {
    label: "Exp Other Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.retail_other_exp_amt} - ${glm_property_f_ly.retail_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_other_exp_amt_toly_v {
    label: "Exp Other Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.other_operated_other_exp_amt} - ${glm_property_f_ly.other_operated_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_other_exp_amt_toly_v {
    label: "Exp Other Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_other_exp_amt} - ${glm_property_f_ly.property_mgmt_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_other_exp_amt_toly_v {
    label: "Exp Other A&G Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.administrative_general_other_exp_amt} - ${glm_property_f_ly.administrative_general_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_other_exp_amt_toly_v {
    label: "Exp Other IT Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.information_technology_other_exp_amt} - ${glm_property_f_ly.information_technology_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_other_exp_amt_toly_v {
    label: "Exp Other S&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.sales_marketing_other_exp_amt} - ${glm_property_f_ly.sales_marketing_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_other_exp_amt_toly_v {
    label: "Exp Other R&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.property_operations_maintenance_other_exp_amt} - ${glm_property_f_ly.property_operations_maintenance_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_other_exp_amt_toly_v {
    label: "Exp Other Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.misc_other_exp_amt} - ${glm_property_f_ly.misc_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_other_exp_amt_toly_v {
    label: "Exp Other Nonoperating Realty Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_other_exp_amt} - ${glm_property_f_ly.nonoperating_realty_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_other_exp_amt_toly_v {
    label: "Exp Other Nonoperating Airport Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_other_exp_amt} - ${glm_property_f_ly.nonoperating_airport_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_other_exp_amt_toly_v {
    label: "Exp Other Nonoperating Utility Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_other_exp_amt} - ${glm_property_f_ly.nonoperating_util_other_exp_amt} ;;
    value_format_name: decimal_0
  }

# -- Other Expenses % var

  measure: other_exp_amt_toly {
    label: "Exp Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_exp_amt}, ${glm_property_f_ly.other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_other_exp_amt_toly {
    label: "Exp Other Rms Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_other_exp_amt}, ${glm_property_f_ly.room_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_amt_toly {
    label: "Exp Other RB&E Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_exp_amt}, ${glm_property_f_ly.rbe_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_other_exp_amt_toly {
    label: "Exp Other Spa Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_other_exp_amt}, ${glm_property_f_ly.spa_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_other_exp_amt_toly {
    label: "Exp Other Golf Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_other_exp_amt}, ${glm_property_f_ly.golf_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_amt_toly {
    label: "Exp Other Fitness & Rec Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_other_exp_amt}, ${glm_property_f_ly.fitness_recreation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_amt_toly {
    label: "Exp Other Parking & Trans Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_other_exp_amt}, ${glm_property_f_ly.parking_transportation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_amt_toly {
    label: "Exp Other Telecom Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_other_exp_amt}, ${glm_property_f_ly.telecom_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_other_exp_amt_toly {
    label: "Exp Other Retail Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_other_exp_amt}, ${glm_property_f_ly.retail_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_amt_toly {
    label: "Exp Other Other Op. Dept. Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_other_exp_amt}, ${glm_property_f_ly.other_operated_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_amt_toly {
    label: "Exp Other Mgmt Srvcs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_other_exp_amt}, ${glm_property_f_ly.property_mgmt_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_other_exp_amt_toly {
    label: "Exp Other A&G Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.administrative_general_other_exp_amt}, ${glm_property_f_ly.administrative_general_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_other_exp_amt_toly {
    label: "Exp Other IT Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.information_technology_other_exp_amt}, ${glm_property_f_ly.information_technology_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_other_exp_amt_toly {
    label: "Exp Other S&M Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.sales_marketing_other_exp_amt}, ${glm_property_f_ly.sales_marketing_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_other_exp_amt_toly {
    label: "Exp Other R&M Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_operations_maintenance_other_exp_amt}, ${glm_property_f_ly.property_operations_maintenance_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_other_exp_amt_toly {
    label: "Exp Other Rentals & Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_other_exp_amt}, ${glm_property_f_ly.misc_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_other_exp_amt_toly {
    label: "Exp Nonoperating Realty Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_other_exp_amt}, ${glm_property_f_ly.nonoperating_realty_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_other_exp_amt_toly {
    label: "Exp Nonoperating Airport Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_other_exp_amt}, ${glm_property_f_ly.nonoperating_airport_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_other_exp_amt_toly {
    label: "Exp Nonoperating Utility Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_other_exp_amt}, ${glm_property_f_ly.nonoperating_util_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll

  measure: payroll_amt_toly_v {
    label: "Payroll Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.payroll_amt} - ${glm_property_f_ly.payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_payroll_amt_toly_v {
    label: "Payroll Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_payroll_amt} - ${glm_property_f_ly.room_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_payroll_amt_toly_v {
    label: "Payroll RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_payroll_amt} - ${glm_property_f_ly.rbe_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_payroll_amt_toly_v {
    label: "Payroll Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_payroll_amt} - ${glm_property_f_ly.spa_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_payroll_amt_toly_v {
    label: "Payroll RB&E Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_payroll_amt} - ${glm_property_f_ly.golf_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_payroll_amt_toly_v {
    label: "Payroll Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_payroll_amt} - ${glm_property_f_ly.fitness_recreation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_payroll_amt_toly_v {
    label: "Payroll Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_payroll_amt} - ${glm_property_f_ly.parking_transportation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_payroll_amt_toly_v {
    label: "Payroll Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.telecom_payroll_amt} - ${glm_property_f_ly.telecom_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_payroll_amt_toly_v {
    label: "Payroll Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.retail_payroll_amt} - ${glm_property_f_ly.retail_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_payroll_amt_toly_v {
    label: "Payroll Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.other_operated_payroll_amt} - ${glm_property_f_ly.other_operated_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_payroll_amt_toly_v {
    label: "Payroll Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_payroll_amt} - ${glm_property_f_ly.property_mgmt_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_payroll_amt_toly_v {
    label: "Payroll A&G Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.administrative_general_payroll_amt} - ${glm_property_f_ly.administrative_general_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_payroll_amt_toly_v {
    label: "Payroll IT Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.information_technology_payroll_amt} - ${glm_property_f_ly.information_technology_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_payroll_amt_toly_v {
    label: "Payroll S&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.sales_marketing_payroll_amt} - ${glm_property_f_ly.sales_marketing_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_payroll_amt_toly_v {
    label: "Payroll R&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.property_operations_maintenance_payroll_amt} - ${glm_property_f_ly.property_operations_maintenance_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_payroll_amt_toly_v {
    label: "Payroll Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.misc_payroll_amt} - ${glm_property_f_ly.misc_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_payroll_amt_toly_v {
    label: "Payroll Nonoperating Realty Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_payroll_amt} - ${glm_property_f_ly.nonoperating_realty_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_payroll_amt_toly_v {
    label: "Payroll Nonoperating Airport Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_payroll_amt} - ${glm_property_f_ly.nonoperating_airport_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_payroll_amt_toly_v {
    label: "Payroll Nonoperating Utility Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_payroll_amt} - ${glm_property_f_ly.nonoperating_util_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_payroll_amt_toly_v {
    label: "Payroll RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_payroll_amt} - ${glm_property_f_ly.rbe_outlet_payroll_amt} ;;
    value_format_name: decimal_0
  }

#-- Payroll % var

  measure: payroll_amt_toly {
    label: "Payroll Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.payroll_amt}, ${glm_property_f_ly.payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_payroll_amt_toly {
    label: "Payroll Rms Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_payroll_amt}, ${glm_property_f_ly.room_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_payroll_amt_toly {
    label: "Payroll RB&E Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_payroll_amt}, ${glm_property_f_ly.rbe_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_payroll_amt_toly {
    label: "Payroll Spa Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_payroll_amt}, ${glm_property_f_ly.spa_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_payroll_amt_toly {
    label: "Payroll RB&E Golf Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_payroll_amt}, ${glm_property_f_ly.golf_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_amt_toly {
    label: "Payroll Fitness & Rec Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_payroll_amt}, ${glm_property_f_ly.fitness_recreation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_amt_toly {
    label: "Payroll Parking & Trans Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_payroll_amt}, ${glm_property_f_ly.parking_transportation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_payroll_amt_toly {
    label: "Payroll Telecom Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_payroll_amt}, ${glm_property_f_ly.telecom_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_payroll_amt_toly {
    label: "Payroll Retail Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_payroll_amt}, ${glm_property_f_ly.retail_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_amt_toly {
    label: "Payroll Other Op. Dept. Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_payroll_amt}, ${glm_property_f_ly.other_operated_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_amt_toly {
    label: "Payroll Mgmt Srvcs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_payroll_amt}, ${glm_property_f_ly.property_mgmt_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_payroll_amt_toly {
    label: "Payroll A&G Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.administrative_general_payroll_amt}, ${glm_property_f_ly.administrative_general_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_payroll_amt_toly {
    label: "Payroll IT Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.information_technology_payroll_amt}, ${glm_property_f_ly.information_technology_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_payroll_amt_toly {
    label: "Payroll S&M Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.sales_marketing_payroll_amt}, ${glm_property_f_ly.sales_marketing_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_payroll_amt_toly {
    label: "Payroll R&M Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_operations_maintenance_payroll_amt}, ${glm_property_f_ly.property_operations_maintenance_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_payroll_amt_toly {
    label: "Payroll Rentals & Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_payroll_amt}, ${glm_property_f_ly.misc_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_payroll_amt_toly {
    label: "Payroll Nonoperating Realty Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_payroll_amt}, ${glm_property_f_ly.nonoperating_realty_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_payroll_amt_toly {
    label: "Payroll Nonoperating Airport Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_payroll_amt}, ${glm_property_f_ly.nonoperating_airport_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_payroll_amt_toly {
    label: "Payroll Nonoperating Utility Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_payroll_amt}, ${glm_property_f_ly.nonoperating_util_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_payroll_amt_toly {
    label: "Payroll RB&E Outlet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_payroll_amt}, ${glm_property_f_ly.rbe_outlet_payroll_amt}) ;;
    value_format_name: percent_1
  }

  #-- Covers

  measure: rbe_cover_cnt_toly_v {
    label: "Cvrs RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_cover_cnt} - ${glm_property_f_ly.rbe_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_cover_cnt_toly_v {
    label: "Cvrs RB&E Banquet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_cover_cnt} - ${glm_property_f_ly.rbe_banquet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_cover_toly_v {
    label: "Cvrs RB&E Catering Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_cover_cnt} - ${glm_property_f_ly.rbe_catering_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cover_cnt_toly_v {
    label: "Cvrs RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_cover_cnt} - ${glm_property_f_ly.rbe_outlet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_cover_cnt_toly_v {
    label: "Cvrs RB&E Room Service Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_room_service_cover_cnt} - ${glm_property_f_ly.rbe_room_service_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_cover_cnt_toly_v {
    label: "Cvrs RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_other_cover_cnt} - ${glm_property_f_ly.rbe_other_cover_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Treatments

  measure: spa_treatment_cnt_toly_v {
    label: "Trtmnts Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_treatment_cnt} - ${glm_property_f_ly.spa_treatment_cnt} ;;
    value_format_name: decimal_0
  }

  measure: golf_round_cnt_toly_v {
    label: "Rnds Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_round_cnt} - ${glm_property_f_ly.golf_round_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Rooms

  measure: arrival_cnt_toly_v {
    label: "Arrivals Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.arrival_cnt} - ${glm_property_f_ly.arrival_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_room_cnt_toly_v {
    label: "Rms Occ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_room_cnt} - ${glm_property_f_ly.occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_transient_room_cnt_toly_v {
    label: "Rms Occ Transient Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_transient_room_cnt} - ${glm_property_f_ly.occupied_transient_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_group_room_cnt_toly_v {
    label: "Rms Occ Group Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_group_room_cnt} - ${glm_property_f_ly.occupied_group_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_contract_room_cnt_toly_v {
    label: "Rms Occ Contract Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_contract_room_cnt} - ${glm_property_f_ly.occupied_contract_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avail_room_cnt_toly_v {
    label: "Rms Avail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.avail_room_cnt} - ${glm_property_f_ly.avail_room_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_owner_room_cnt_toly_v {
    label: "Rms Occ Owner Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_owner_room_cnt} - ${glm_property_f_ly.occupied_owner_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: comp_room_cnt_toly_v {
    label: "Rms Occ Comp Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.comp_room_cnt} - ${glm_property_f_ly.comp_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: net_avail_room_cnt_toly_v {
    label: "Rms Avail Net Act:LY - var"
    type: number
    sql: ${glm_property_f_ty.net_avail_room_cnt} - ${glm_property_f_ly.net_avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: transient_room_rev_amt_toly_v {
    label: "Rev Rms Transient Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.transient_room_rev_amt} - ${glm_property_f_ly.transient_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: group_room_rev_amt_toly_v {
    label: "Rev Rms Group Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.group_room_rev_amt} - ${glm_property_f_ly.group_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: contract_room_rev_amt_toly_v {
    label: "Rev Rms Contract Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.contract_room_rev_amt} - ${glm_property_f_ly.contract_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: no_show_room_rev_amt_toly_v {
    label: "Rev Rms No Show Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.no_show_room_rev_amt} - ${glm_property_f_ly.no_show_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: service_charge_incl_room_rev_amt_toly_v {
    label: "Rev Rms Srvc Charge Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.service_charge_incl_room_rev_amt} - ${glm_property_f_ly.service_charge_incl_room_rev_amt} ;;
    value_format_name: decimal_0
  }

#-- Covers % var


  measure: rbe_cover_cnt_toly {
    label: "Cvrs RB&E Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_cover_cnt}, ${glm_property_f_ly.rbe_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_cover_cnt_toly {
    label: "Cvrs RB&E Banquet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_cover_cnt}, ${glm_property_f_ly.rbe_banquet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_cover_toly {
    label: "Cvrs RB&E Catering Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_cover_cnt}, ${glm_property_f_ly.rbe_catering_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_cover_cnt_toly {
    label: "Cvrs RB&E Outlet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_cover_cnt}, ${glm_property_f_ly.rbe_outlet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_cover_cnt_toly {
    label: "Cvrs RB&E Room Service Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_room_service_cover_cnt}, ${glm_property_f_ly.rbe_room_service_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_cover_cnt_toly {
    label: "Cvrs RB&E Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_cover_cnt}, ${glm_property_f_ly.rbe_other_cover_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Treatments

  measure: spa_treatment_cnt_toly {
    label: "Trtmnts Spa Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_treatment_cnt}, ${glm_property_f_ly.spa_treatment_cnt}) ;;
    value_format_name: percent_1
  }

  measure: golf_round_cnt_toly {
    label: "Rnds Golf Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_round_cnt}, ${glm_property_f_ly.golf_round_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Rooms

  measure: arrival_cnt_toly {
    label: "Arrivals Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.arrival_cnt}, ${glm_property_f_ly.arrival_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_room_cnt_toly {
    label: "Rms Occ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_room_cnt}, ${glm_property_f_ly.occupied_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_cnt_toly {
    label: "Rms Occ Transient Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_transient_room_cnt}, ${glm_property_f_ly.occupied_transient_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_cnt_toly {
    label: "Rms Occ Group Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_group_room_cnt}, ${glm_property_f_ly.occupied_group_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_cnt_toly {
    label: "Rms Occ Contract Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_contract_room_cnt}, ${glm_property_f_ly.occupied_contract_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: avail_room_cnt_toly {
    label: "Rms Avail Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.avail_room_cnt}, ${glm_property_f_ly.avail_room_cnt}) ;;
    value_format_name: percent_1
  }
  measure: occupied_owner_room_cnt_toly {
    label: "Rms Occ Owner Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_owner_room_cnt}, ${glm_property_f_ly.occupied_owner_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: comp_room_cnt_toly {
    label: "Rms Occ Comp Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.comp_room_cnt} - ${glm_property_f_ly.comp_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: net_avail_room_cnt_toly {
    label: "Rms Avail Net Act:LY - var %"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.net_avail_room_cnt} - ${glm_property_f_ly.net_avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: transient_room_rev_amt_toly {
    label: "Rev Rms Transient Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.transient_room_rev_amt} - ${glm_property_f_ly.transient_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: group_room_rev_amt_toly {
    label: "Rev Rms Group Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.group_room_rev_amt} - ${glm_property_f_ly.group_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: contract_room_rev_amt_toly {
    label: "Rev Rms Contract Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.contract_room_rev_amt} - ${glm_property_f_ly.contract_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Profit

  measure: profit_amt_toly_v {
    label: "Profit Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.profit_amt} - ${glm_property_f_ly.profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_profit_amt_toly_v {
    label: "Profit Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_profit_amt} - ${glm_property_f_ly.room_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_profit_amt_toly_v {
    label: "Profit RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_profit_amt} - ${glm_property_f_ly.rbe_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_profit_amt_toly_v {
    label: "Profit RB&E Banquet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_profit_amt} - ${glm_property_f_ly.rbe_banquet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_profit_amt_toly_v {
    label: "Profit RB&E Catering Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_profit_amt} - ${glm_property_f_ly.rbe_catering_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_profit_amt_toly_v {
    label: "Profit RB&E Conference Services Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_conference_services_profit_amt} - ${glm_property_f_ly.rbe_conference_services_profit_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_banquet_catering_conference_services_profit_amt_toly_v {
  #  label: "Profit RB&E Banquet Catering Conference Services Act:LY - var"
  #  description: "Actual - LY"
  #  type: number
  #  sql: ${glm_property_f_ty.rbe_banquet_catering_conference_services_profit_amt} - ${glm_property_f_ly.rbe_banquet_catering_conference_services_profit_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: rbe_outlet_profit_amt_toly_v {
    label: "Profit RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_profit_amt} - ${glm_property_f_ly.rbe_outlet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_profit_amt_toly_v {
    label: "Profit RB&E Room Service Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_room_service_profit_amt} - ${glm_property_f_ly.rbe_room_service_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_profit_amt_toly_v {
    label: "Profit RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_other_profit_amt} - ${glm_property_f_ly.rbe_other_profit_amt} ;;
    value_format_name: decimal_0
  }

  #measure: rbe_outlet_other_profit_amt_toly_v {
  #  label: "Profit RB&E Outlet Other Act:LY - var"
  #  description: "Actual - LY"
  #  type: number
  #  sql: ${glm_property_f_ty.rbe_outlet_other_profit_amt} - ${glm_property_f_ly.rbe_outlet_other_profit_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: spa_profit_amt_toly_v {
    label: "Profit Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_profit_amt} - ${glm_property_f_ly.spa_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_profit_amt_toly_v {
    label: "Profit Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_profit_amt} - ${glm_property_f_ly.golf_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_profit_amt_toly_v {
    label: "Profit Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_profit_amt} - ${glm_property_f_ly.fitness_recreation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_profit_amt_toly_v {
    label: "Profit Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_profit_amt} - ${glm_property_f_ly.parking_transportation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_profit_amt_toly_v {
    label: "Profit Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.telecom_profit_amt} - ${glm_property_f_ly.telecom_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_profit_amt_toly_v {
    label: "Profit Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.retail_profit_amt} - ${glm_property_f_ly.retail_profit_amt} ;;
    value_format_name: decimal_0
  }

  #measure: spa_fitness_recreation_profit_amt_toly_v {
  #  label: "Profit Spa Fitness & Rec Act:LY - var"
  #  description: "Actual - LY"
  #  type: number
  #  sql: ${glm_property_f_ty.spa_fitness_recreation_profit_amt} - ${glm_property_f_ly.spa_fitness_recreation_profit_amt} ;;
  #  value_format_name: decimal_0
  #}

  measure: other_operated_profit_amt_toly_v {
    label: "Profit Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.other_operated_profit_amt} - ${glm_property_f_ly.other_operated_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_profit_amt_toly_v {
    label: "Profit Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_profit_amt} - ${glm_property_f_ly.property_mgmt_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_profit_amt_toly_v {
    label: "Profit Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.misc_profit_amt} - ${glm_property_f_ly.misc_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_profit_amt_toly_v {
    label: "Profit Nonoperating Realty Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_profit_amt} - ${glm_property_f_ly.nonoperating_realty_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_profit_amt_toly_v {
    label: "Profit Nonoperating Airport Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_profit_amt} - ${glm_property_f_ly.nonoperating_airport_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_profit_amt_toly_v {
    label: "Profit Nonoperating Utility Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_profit_amt} - ${glm_property_f_ly.nonoperating_util_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_profit_amt_toly_v {
    label: "Profit Undistributed Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.undistributed_profit_amt} - ${glm_property_f_ly.undistributed_profit_amt} ;;
    value_format_name: decimal_0
  }

#-- Profit % var


  measure: profit_amt_toly {
    label: "Profit Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.profit_amt}, ${glm_property_f_ly.profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_profit_amt_toly {
    label: "Profit Rms Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_profit_amt}, ${glm_property_f_ly.room_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_profit_amt_toly {
    label: "Profit RB&E Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_profit_amt}, ${glm_property_f_ly.rbe_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_profit_amt_toly {
    label: "Profit RB&E Banquet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_profit_amt}, ${glm_property_f_ly.rbe_banquet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_profit_amt_toly {
    label: "Profit RB&E Catering Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_profit_amt}, ${glm_property_f_ly.rbe_catering_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_profit_amt_toly {
    label: "Profit RB&E Conference Services Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_conference_services_profit_amt}, ${glm_property_f_ly.rbe_conference_services_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_profit_amt_toly {
    label: "Profit RB&E Outlet Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_profit_amt}, ${glm_property_f_ly.rbe_outlet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_profit_amt_toly {
    label: "Profit RB&E Room Service Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_room_service_profit_amt}, ${glm_property_f_ly.rbe_room_service_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_profit_amt_toly {
    label: "Profit RB&E Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_profit_amt}, ${glm_property_f_ly.rbe_other_profit_amt}) ;;
    value_format_name: percent_1
  }

  #measure: rbe_outlet_other_profit_amt_toly {
  #  label: "Profit RB&E Outlet Other Act:LY - var %"
  #  description: "(Actual - LY) / LY"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_other_profit_amt}, ${glm_property_f_ly.rbe_outlet_other_profit_amt}) ;;
  #  value_format_name: percent_1
  #}

  measure: spa_profit_amt_toly {
    label: "Profit Spa Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_profit_amt}, ${glm_property_f_ly.spa_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_profit_amt_toly {
    label: "Profit Golf Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_profit_amt}, ${glm_property_f_ly.golf_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_profit_amt_toly {
    label: "Profit Fitness & Rec Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_profit_amt}, ${glm_property_f_ly.fitness_recreation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_profit_amt_toly {
    label: "Profit Parking & Trans Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_profit_amt}, ${glm_property_f_ly.parking_transportation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_profit_amt_toly {
    label: "Profit Telecom Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_profit_amt}, ${glm_property_f_ly.telecom_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_profit_amt_toly {
    label: "Profit Retail Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_profit_amt}, ${glm_property_f_ly.retail_profit_amt}) ;;
    value_format_name: percent_1
  }

  #measure: spa_fitness_recreation_profit_amt_toly {
  #  label: "Profit Spa Fitness & Rec Act:LY - var %"
  #  description: "(Actual - LY) / LY"
  #  type: number
  #  sql: utl..udf_percent_var( ${glm_property_f_ty.spa_fitness_recreation_profit_amt}, ${glm_property_f_ly.spa_fitness_recreation_profit_amt}) ;;
  #  value_format_name: percent_1
  #}

  measure: other_operated_profit_amt_toly {
    label: "Profit Other Op. Dept. Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_profit_amt}, ${glm_property_f_ly.other_operated_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_profit_amt_toly {
    label: "Profit Mgmt Srvcs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_profit_amt}, ${glm_property_f_ly.property_mgmt_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_profit_amt_toly {
    label: "Profit Rentals & Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_profit_amt}, ${glm_property_f_ly.misc_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_profit_amt_toly {
    label: "Profit Nonoperating Realty Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_profit_amt}, ${glm_property_f_ly.nonoperating_realty_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_profit_amt_toly {
    label: "Profit Nonoperating Airport Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_profit_amt}, ${glm_property_f_ly.nonoperating_airport_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_profit_amt_toly {
    label: "Profit Nonoperating Utility Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_profit_amt}, ${glm_property_f_ly.nonoperating_util_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: undistributed_profit_amt_toly {
    label: "Profit Undistributed Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.undistributed_profit_amt}, ${glm_property_f_ly.undistributed_profit_amt}) ;;
    value_format_name: percent_1
  }

  #-- Cost

  measure: cost_of_sales_amt_toly_v {
    label: "COS Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.cost_of_sales_amt} - ${glm_property_f_ly.cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_cost_of_sales_amt_toly_v {
    label: "COS Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_cost_of_sales_amt} - ${glm_property_f_ly.room_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_cost_of_sales_amt_toly_v {
    label: "COS RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_cost_of_sales_amt} - ${glm_property_f_ly.rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_cost_of_sales_amt_toly_v {
    label: "COS Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_cost_of_sales_amt} - ${glm_property_f_ly.spa_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_cost_of_sales_amt_toly_v {
    label: "COS Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_cost_of_sales_amt} - ${glm_property_f_ly.golf_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_cost_of_sales_amt_toly_v {
    label: "COS Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_cost_of_sales_amt} - ${glm_property_f_ly.fitness_recreation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_cost_amt_toly_v {
    label: "COS Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_cost_of_sales_amt} - ${glm_property_f_ly.parking_transportation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_cost_of_sales_amt_toly_v {
    label: "COS Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.telecom_cost_of_sales_amt} - ${glm_property_f_ly.telecom_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_cost_of_sales_amt_toly_v {
    label: "COS Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.retail_cost_of_sales_amt} - ${glm_property_f_ly.retail_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_toly_v {
    label: "COS Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.other_operated_cost_of_sales_amt} - ${glm_property_f_ly.other_operated_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_cost_of_sales_amt_toly_v {
    label: "COS Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_cost_of_sales_amt} - ${glm_property_f_ly.property_mgmt_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_cost_of_sales_amt_toly_v {
    label: "COS Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.misc_cost_of_sales_amt} - ${glm_property_f_ly.misc_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_cost_of_sales_amt_toly_v {
    label: "COS Nonoperating Realty Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_cost_of_sales_amt} - ${glm_property_f_ly.nonoperating_realty_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_cost_of_sales_amt_toly_v {
    label: "COS Nonoperating Airport Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_airport_cost_of_sales_amt} - ${glm_property_f_ly.nonoperating_airport_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_cost_of_sales_amt_toly_v {
    label: "COS Nonoperating Utility Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_cost_of_sales_amt} - ${glm_property_f_ly.nonoperating_util_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_cost_of_sales_amt_toly_v {
    label: "COS RB&E Food Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.food_rbe_cost_of_sales_amt} - ${glm_property_f_ly.food_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_cost_of_sales_amt_toly_v {
    label: "COS RB&E Beverage Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_cost_of_sales_amt} - ${glm_property_f_ly.beverage_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cost_of_sales_amt_toly_v {
    label: "COS RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_cost_of_sales_amt} - ${glm_property_f_ly.rbe_outlet_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  #-- Cost % var

  measure: cost_of_sales_amt_toly {
    label: "COS Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.cost_of_sales_amt}, ${glm_property_f_ly.cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_cost_of_sales_amt_toly {
    label: "COS Rms Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_cost_of_sales_amt}, ${glm_property_f_ly.room_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_cost_of_sales_amt_toly {
    label: "COS RB&E Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_cost_of_sales_amt}, ${glm_property_f_ly.rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_cost_of_sales_amt_toly {
    label: "COS Spa Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_cost_of_sales_amt}, ${glm_property_f_ly.spa_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_cost_of_sales_amt_toly {
    label: "COS Golf Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_cost_of_sales_amt}, ${glm_property_f_ly.golf_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_cost_of_sales_amt_toly {
    label: "COS Fitness & Rec Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_cost_of_sales_amt}, ${glm_property_f_ly.fitness_recreation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_cost_amt_toly {
    label: "COS Parking & Trans Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_cost_of_sales_amt}, ${glm_property_f_ly.parking_transportation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_cost_of_sales_amt_toly {
    label: "COS Telecom Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_cost_of_sales_amt}, ${glm_property_f_ly.telecom_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_cost_of_sales_amt_toly {
    label: "COS Retail Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_cost_of_sales_amt}, ${glm_property_f_ly.retail_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_toly {
    label: "COS Other Op. Dept. Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_cost_of_sales_amt}, ${glm_property_f_ly.other_operated_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_cost_of_sales_amt_toly {
    label: "COS Mgmt Srvcs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_cost_of_sales_amt}, ${glm_property_f_ly.property_mgmt_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_cost_of_sales_amt_toly {
    label: "COS Rentals & Other Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_cost_of_sales_amt}, ${glm_property_f_ly.misc_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_cost_of_sales_amt_toly {
    label: "COS Nonoperating Realty Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_cost_of_sales_amt}, ${glm_property_f_ly.nonoperating_realty_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_cost_of_sales_amt_toly {
    label: "COS Nonoperating irport Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_airport_cost_of_sales_amt}, ${glm_property_f_ly.nonoperating_airport_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_cost_of_sales_amt_toly {
    label: "COS Nonoperating Utility Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_cost_of_sales_amt}, ${glm_property_f_ly.nonoperating_util_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_cost_of_sales_amt_toly {
    label: "COS RB&E Food Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.food_rbe_cost_of_sales_amt}, ${glm_property_f_ly.food_rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_cost_of_sales_amt_toly {
    label: "COS RB&E Beverage Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.beverage_rbe_cost_of_sales_amt}, ${glm_property_f_ly.beverage_rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_toly_v {
    label: "Rev /Trtmnt Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_rev_treatment_avg_amt} - ${glm_property_f_ly.spa_rev_treatment_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_rev_round_avg_amt_toly_v {
    label: "Rev /Rnd Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_rev_round_avg_amt} - ${glm_property_f_ly.golf_rev_round_avg_amt} ;;
    value_format_name: decimal_2
  }

  #-- Avg Rev per Spa Treatment / Golf Round % var

  measure: spa_rev_treatment_avg_amt_toly {
    label: "Rev /Trtmnt Spa Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_rev_treatment_avg_amt}, ${glm_property_f_ly.spa_rev_treatment_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_round_avg_amt_toly {
    label: "Rev /Rnd Golf Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_rev_round_avg_amt}, ${glm_property_f_ly.golf_rev_round_avg_amt}) ;;
    value_format_name: percent_1
  }




  #-- Occupancy

  measure: occupied_room_pct_toly_v {
    label: "Rms Occ % Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_room_pct} - ${glm_property_f_ly.occupied_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_toly_v {
    label: "Rms Occ % Group Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_group_room_pct} - ${glm_property_f_ly.occupied_group_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_toly_v {
    label: "Rms Occ % Transient Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_transient_room_pct} - ${glm_property_f_ly.occupied_transient_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_toly_v {
    label: "Rms Occ % Contract Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_contract_room_pct} - ${glm_property_f_ly.occupied_contract_room_pct} ;;
    value_format_name: percent_1
  }

#-- Occupancy % var


  measure: occupied_room_pct_toly {
    label: "Rms Occ % Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_room_pct}, ${glm_property_f_ly.occupied_room_pct} );;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_toly {
    label: "Rms Occ % Group Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_group_room_pct}, ${glm_property_f_ly.occupied_group_room_pct} );;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_toly {
    label: "Rms Occ % Transient Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_transient_room_pct}, ${glm_property_f_ly.occupied_transient_room_pct} );;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_toly {
    label: "Rms Occ % Contract Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_contract_room_pct}, ${glm_property_f_ly.occupied_contract_room_pct} );;
    value_format_name: percent_1
  }

  #-- ADR

  measure: adr_amt_toly_v {
    label: "ADR $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.adr_amt} - ${glm_property_f_ly.adr_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_transient_amt_toly_v {
    label: "ADR Transient $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.adr_transient_amt} - ${glm_property_f_ly.adr_transient_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_group_amt_toly_v {
    label: "ADR Group $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.adr_group_amt} - ${glm_property_f_ly.adr_group_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_contract_amt_toly_v {
    label: "ADR Contract $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.adr_contract_amt} - ${glm_property_f_ly.adr_contract_amt} ;;
    value_format_name: decimal_2
  }

  #-- ADR % var

  measure: adr_amt_toly {
    label: "ADR $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_amt}, ${glm_property_f_ly.adr_amt} );;
    value_format_name: percent_1
  }

  measure: adr_transient_amt_toly {
    label: "ADR Transient $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_transient_amt}, ${glm_property_f_ly.adr_transient_amt} );;
    value_format_name: percent_1
  }

  measure: adr_group_amt_toly {
    label: "ADR Group $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_group_amt}, ${glm_property_f_ly.adr_group_amt} );;
    value_format_name: percent_1
  }

  measure: adr_contract_amt_toly {
    label: "ADR Contract $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_contract_amt}, ${glm_property_f_ly.adr_contract_amt} );;
    value_format_name: percent_1
  }

  #-- Room nights

  measure: room_night_transient_pct_toly_v {
    label: "Rms Night Transient % Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_night_transient_pct} - ${glm_property_f_ly.room_night_transient_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_toly_v {
    label: "Rms Night Group % Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_night_group_pct} - ${glm_property_f_ly.room_night_group_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_contract_pct_toly_v {
    label: "Rms Night Contract % Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_night_contract_pct} - ${glm_property_f_ly.room_night_contract_pct} ;;
    value_format_name: percent_1
  }

  #-- Room nights % var

  measure: room_night_transient_pct_toly {
    label: "Rms Night Transient % Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_night_transient_pct}, ${glm_property_f_ly.room_night_transient_pct} );;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_toly {
    label: "Rms Night Group % Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_night_group_pct}, ${glm_property_f_ly.room_night_group_pct} );;
    value_format_name: percent_1
  }

  measure: room_night_contract_pct_toly {
    label: "Rms Night Contract % Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_night_contract_pct}, ${glm_property_f_ly.room_night_contract_pct} );;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_amt_toly_v {
    label: "Rev PAR $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rev_par_amt} - ${glm_property_f_ly.rev_par_amt} );;
    value_format_name: usd_0
  }

  measure: rev_par_group_amt_toly_v {
    label: "Rev PAR $ Group Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rev_par_group_amt} - ${glm_property_f_ly.rev_par_group_amt} );;
    value_format_name: usd_0
  }

  measure: rev_par_transient_amt_toly_v {
    label: "Rev PAR $ Transient Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rev_par_transient_amt} - ${glm_property_f_ly.rev_par_transient_amt} );;
    value_format_name: usd_0
  }

  #-- Rev PAR % var

  measure: rev_par_amt_toly {
    label: "Rev PAR $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_par_amt}, ${glm_property_f_ly.rev_par_amt} );;
    value_format_name: percent_1
  }

  measure: rev_par_group_amt_toly {
    label: "Rev PAR $ Group Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_par_group_amt}, ${glm_property_f_ly.rev_par_group_amt} );;
    value_format_name: percent_1
  }

  measure: rev_par_transient_amt_toly {
    label: "Rev PAR $ Transient Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_par_transient_amt}, ${glm_property_f_ly.rev_par_transient_amt} );;
    value_format_name: percent_1
  }

  #-- Avg check

  measure: rbe_check_avg_amt_toly_v {
    label: "Cvrs RB&E Avg $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rbe_check_avg_amt} - ${glm_property_f_ly.rbe_check_avg_amt} );;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_check_avg_amt_toly_v {
    label: "Cvrs RB&E Banquet Avg $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rbe_banquet_check_avg_amt} - ${glm_property_f_ly.rbe_banquet_check_avg_amt} );;
    value_format_name: decimal_2
  }

  measure: rbe_catering_check_avg_amt_toly_v {
    label: "Cvrs RB&E Catering Avg $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rbe_catering_check_avg_amt} - ${glm_property_f_ly.rbe_catering_check_avg_amt} );;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_check_avg_amt_toly_v {
    label: "Cvrs RB&E Outlet Avg $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rbe_outlet_check_avg_amt} - ${glm_property_f_ly.rbe_outlet_check_avg_amt} );;
    value_format_name: decimal_2
  }

  measure: rbe_room_service_check_avg_amt_toly_v {
    label: "Cvrs RB&E Room Service Avg $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rbe_room_service_check_avg_amt} - ${glm_property_f_ly.rbe_room_service_check_avg_amt} );;
    value_format_name: decimal_2
  }

  measure: rbe_other_check_avg_amt_toly_v {
    label: "Cvrs RB&E Other Avg $ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rbe_other_check_avg_amt} - ${glm_property_f_ly.rbe_other_check_avg_amt} );;
    value_format_name: decimal_2
  }


  #-- Avg check % var

  measure: rbe_check_avg_amt_toly {
    label: "Cvrs RB&E Avg $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_check_avg_amt}, ${glm_property_f_ly.rbe_check_avg_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_banquet_check_avg_amt_toly {
    label: "Cvrs RB&E Banquet Avg $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_check_avg_amt}, ${glm_property_f_ly.rbe_banquet_check_avg_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_catering_check_avg_amt_toly {
    label: "Cvrs RB&E Catering Avg $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_check_avg_amt}, ${glm_property_f_ly.rbe_catering_check_avg_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_outlet_check_avg_amt_toly {
    label: "Cvrs RB&E Outlet Avg $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_check_avg_amt}, ${glm_property_f_ly.rbe_outlet_check_avg_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_room_service_check_avg_amt_toly {
    label: "Cvrs RB&E Room Service Avg $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_room_service_check_avg_amt}, ${glm_property_f_ly.rbe_room_service_check_avg_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_other_check_avg_amt_toly {
    label: "Cvrs RB&E Other Avg $ Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_check_avg_amt}, ${glm_property_f_ly.rbe_other_check_avg_amt} );;
    value_format_name: percent_1
  }

  #-- Avg length of stay
  measure: length_of_stay_avg_amt_toly_v {
    label: "Stay Length Avg Night Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.length_of_stay_avg_amt} - ${glm_property_f_ly.length_of_stay_avg_amt} );;
    value_format_name: decimal_1
  }

  #-- Avg length of stay % var

  measure: length_of_stay_avg_amt_toly {
    label: "Stay Length Avg Night Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.length_of_stay_avg_amt}, ${glm_property_f_ly.length_of_stay_avg_amt} );;
    value_format_name: percent_1
  }

  #-- Payroll /Rev
  measure: payroll_rev_pct_toly_v {
    label: "Payroll /Rev Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.payroll_rev_pct} - ${glm_property_f_ly.payroll_rev_pct} );;
    value_format_name: percent_1
  }


  #-- Payroll Rev %

  measure: room_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.room_payroll_rev_pct} - ${glm_property_f_ly.room_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  measure: rbe_payroll_rev_pct_toly_v {
    label: "Payroll /Rev RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.rbe_payroll_rev_pct} - ${glm_property_f_ly.rbe_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  measure: spa_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.spa_payroll_rev_pct} - ${glm_property_f_ly.spa_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  measure: golf_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.golf_payroll_rev_pct} - ${glm_property_f_ly.golf_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.fitness_recreation_payroll_rev_pct} - ${glm_property_f_ly.fitness_recreation_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.parking_transportation_payroll_rev_pct - ${glm_property_f_ly.parking_transportation_payroll_rev_pct} );;
    value_format_name: usd_0
  }

  measure: telecom_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.telecom_payroll_rev_pct} - ${glm_property_f_ly.telecom_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  measure: retail_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.retail_payroll_rev_pct} - ${glm_property_f_ly.retail_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.other_operated_payroll_rev_pct} - ${glm_property_f_ly.other_operated_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.property_mgmt_payroll_rev_pct} - ${glm_property_f_ly.property_mgmt_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  measure: misc_payroll_rev_pct_toly_v {
    label: "Payroll /Rev Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: utl..udf_divide( ${glm_property_f_ty.misc_payroll_rev_pct} - ${glm_property_f_ly.misc_payroll_rev_pct} );;
    value_format_name: percent_1
  }

  #-- Rental property splits

  measure: room_rental_mgmt_2_19_rev_amt_toly_v {
    label: "Rev Rms Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.room_rental_mgmt_2_19_rev_amt} - ${glm_property_f_ly.room_rental_mgmt_2_19_rev_amt};;
    value_format_name: decimal_0
  }
  measure: avail_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Avail Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.avail_room_rental_mgmt_2_19_cnt} - ${glm_property_f_ly.avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_owner_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Owner Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_owner_room_rental_mgmt_2_19_cnt} - ${glm_property_f_ly.occupied_owner_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: net_avail_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Avail Net Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.net_avail_room_rental_mgmt_2_19_cnt} - ${glm_property_f_ly.net_avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_room_rental_mgmt_2_19_cnt} - ${glm_property_f_ly.occupied_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: transient_room_rental_mgmt_2_19_rev_amt_toly_v {
    label: "Rev Rms Transient Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.transient_room_rental_mgmt_2_19_rev_amt} - ${glm_property_f_ly.transient_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: usd_0
  }
  measure: group_room_rental_mgmt_2_19_rev_amt_toly_v {
    label: "Rev Rms Group Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.group_room_rental_mgmt_2_19_rev_amt} - ${glm_property_f_ly.group_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: contract_room_rental_mgmt_2_19_rev_amt_toly_v {
    label: "Rev Rms Contract Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.contract_room_rental_mgmt_2_19_rev_amt} - ${glm_property_f_ly.contract_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_transient_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Transient Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_transient_room_rental_mgmt_2_19_cnt} - ${glm_property_f_ly.occupied_transient_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_group_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Group Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_group_room_rental_mgmt_2_19_cnt} - ${glm_property_f_ly.occupied_group_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_contract_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Contract Rental Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.occupied_contract_room_rental_mgmt_2_19_cnt} - ${glm_property_f_ly.occupied_contract_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }


}
