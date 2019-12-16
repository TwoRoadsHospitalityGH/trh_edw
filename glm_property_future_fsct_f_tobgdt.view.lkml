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
  #-- Fcst to Bdgt: rev, AGOP, rooms_revenue, RB&E
  #--------------------------------------------------------------------------------

  #-- Rev

  measure: rev_amt_tobdgt_v {
    label: "Rev $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_amt} - ${glm_property_future_fcst_f_bdgt.rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: agop_amt_tobdgt_v {
    label: "AGOP $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.agop_amt} - ${glm_property_future_fcst_f_bdgt.agop_amt} ;;
    value_format_name: decimal_0
  }

  measure: gop_amt_tobdgt_v {
    label: "GOP $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.gop_amt} - ${glm_property_future_fcst_f_bdgt.gop_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_rev_amt_tobdgt_v {
    label: "Rev Rms $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_rev_amt} - ${glm_property_future_fcst_f_bdgt.room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_rev_amt_tobdgt_v {
    label: "Rev Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_rev_amt} - ${glm_property_future_fcst_f_bdgt.other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_rev_amt_tobdgt_v {
    label: "Rev RB&E $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_rev_amt_tobdgt_v {
    label: "Rev RB&E Banquet $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_rev_amt_tobdgt_v {
    label: "Rev RB&E Catering $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_rev_amt_tobdgt_v {
    label: "Rev RB&E Conference Services $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_rev_amt_tobdgt_v {
    label: "Rev RB&E Outlet $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_rev_amt_tobdgt_v {
    label: "Rev RB&E Room Service $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_rev_amt_tobdgt_v {
    label: "Rev RB&E Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_rev_amt_tobdgt_v {
    label: "Rev Food RB&E $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_banquet_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Banquet $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_catering_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Catering $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_catering_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_conference_services_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Conference Services $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_outlet_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Outlet $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_room_service_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Room Service $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_other_rev_amt_tobdgt_v {
    label: "Rev Food RB&E Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_banquet_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Banquet $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_catering_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Catering $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_catering_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_conference_services_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Conference Services $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_outlet_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Outlet $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_room_service_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Room Service $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_other_rev_amt_tobdgt_v {
    label: "Rev Beverage RB&E Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_other_rev_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_rev_amt_tobdgt_v {
    label: "Rev Spa $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_rev_amt} - ${glm_property_future_fcst_f_bdgt.spa_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_rev_amt_tobdgt_v {
    label: "Rev Golf $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_rev_amt} - ${glm_property_future_fcst_f_bdgt.golf_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_rev_amt_tobdgt_v {
    label: "Rev Fitness & Rec $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_rev_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_rev_amt_tobdgt_v {
    label: "Rev Parking & Trans $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_rev_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_rev_amt_tobdgt_v {
    label: "Rev Telecom $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_rev_amt} - ${glm_property_future_fcst_f_bdgt.telecom_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_rev_amt_tobdgt_v {
    label: "Rev Retail $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_rev_amt} - ${glm_property_future_fcst_f_bdgt.retail_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_rev_amt_tobdgt_v {
    label: "Rev Other Op. Dept. $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_rev_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_rev_amt_tobdgt_v {
    label: "Rev Mgmt Srvcs $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_rev_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_rev_amt_tobdgt_v {
    label: "Rev Rentals & Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_rev_amt} - ${glm_property_future_fcst_f_bdgt.misc_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_rev_amt_tobdgt_v {
    label: "Rev Nonoperating Realty $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_rev_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_rev_amt_tobdgt_v {
    label: "Rev Nonoperating Airport $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_rev_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_rev_amt_tobdgt_v {
    label: "Rev Nonoperating Utility $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_rev_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_rev_amt} ;;
    value_format_name: decimal_0
  }

  #-- Rev % var

  measure: rev_amt_tobdgt {
    label: "Rev $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_amt}, ${glm_property_future_fcst_f_bdgt.rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: agop_amt_tobdgt {
    label: "AGOP $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.agop_amt}, ${glm_property_future_fcst_f_bdgt.agop_amt}) ;;
    value_format_name: percent_1
  }

  measure: gop_amt_tobdgt {
    label: "GOP $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.gop_amt}, ${glm_property_future_fcst_f_bdgt.gop_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_rev_amt_tobdgt {
    label: "Rev Rms $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_rev_amt}, ${glm_property_future_fcst_f_bdgt.room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_rev_amt_tobdgt {
    label: "Rev Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_rev_amt}, ${glm_property_future_fcst_f_bdgt.other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_rev_amt_tobdgt {
    label: "Rev RB&E $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_rev_amt_tobdgt {
    label: "Rev RB&E Banquet $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_rev_amt_tobdgt {
    label: "Rev RB&E Catering $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_rev_amt_tobdgt {
    label: "Rev RB&E Conference Services $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_rev_amt_tobdgt {
    label: "Rev RB&E Outlet $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_rev_amt_tobdgt {
    label: "Rev RB&E Room Service $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_rev_amt_tobdgt {
    label: "Rev RB&E Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_rev_amt_tobdgt {
    label: "Rev Food RB&E $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_banquet_rev_amt_tobdgt {
    label: "Rev Food RB&E Banquet $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_catering_rev_amt_tobdgt {
    label: "Rev Food RB&E Catering $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_catering_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_conference_services_rev_amt_tobdgt {
    label: "Rev Food RB&E Conference Services $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_outlet_rev_amt_tobdgt {
    label: "Rev Food RB&E Outlet $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_room_service_rev_amt_tobdgt {
    label: "Rev Food RB&E Room Service $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_other_rev_amt_tobdgt {
    label: "Rev Food RB&E Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_rev_amt_tobdgt {
    label: "Rev Beverage RB&E $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_banquet_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Banquet $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_catering_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Catering $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_catering_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_conference_services_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Conference Services $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_outlet_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Outlet $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_room_service_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Room Service $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_other_rev_amt_tobdgt {
    label: "Rev Beverage RB&E Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_other_rev_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_rev_amt_tobdgt {
    label: "Rev Spa $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_rev_amt}, ${glm_property_future_fcst_f_bdgt.spa_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_amt_tobdgt {
    label: "Rev Golf $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_rev_amt}, ${glm_property_future_fcst_f_bdgt.golf_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_rev_amt_tobdgt {
    label: "Rev Fitness & Rec $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_rev_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_rev_amt_tobdgt {
    label: "Rev Parking & Trans $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_rev_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_rev_amt_tobdgt {
    label: "Rev Telecom $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_rev_amt}, ${glm_property_future_fcst_f_bdgt.telecom_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_rev_amt_tobdgt {
    label: "Rev Retail $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_rev_amt}, ${glm_property_future_fcst_f_bdgt.retail_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_rev_amt_tobdgt {
    label: "Rev Other Op. Dept. $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_rev_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_rev_amt_tobdgt {
    label: "Rev Mgmt Srvcs $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_rev_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_rev_amt_tobdgt {
    label: "Rev Rentals & Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_rev_amt}, ${glm_property_future_fcst_f_bdgt.misc_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_rev_amt_tobdgt {
    label: "Rev Nonoperating Realty $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_rev_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_rev_amt_tobdgt {
    label: "Rev Nonoperating Airport $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_rev_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_rev_amt_tobdgt {
    label: "Rev Nonoperating Utility $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_rev_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Expenses

  measure: exp_amt_tobdgt_v {
    label: "Exp $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.exp_amt} - ${glm_property_future_fcst_f_bdgt.exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_exp_amt_tobdgt_v {
    label: "Exp Rms $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_exp_amt} - ${glm_property_future_fcst_f_bdgt.room_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_exp_amt_tobdgt_v {
    label: "Exp RB&E $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_exp_amt} - ${glm_property_future_fcst_f_bdgt.rbe_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_exp_amt_tobdgt_v {
    label: "Exp Spa $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_exp_amt} - ${glm_property_future_fcst_f_bdgt.spa_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_exp_amt_tobdgt_v {
    label: "Exp Golf $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_exp_amt} - ${glm_property_future_fcst_f_bdgt.golf_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_exp_amt_tobdgt_v {
    label: "Exp Fitness & Rec $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_exp_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_exp_amt_tobdgt_v {
    label: "Exp Parking & Trans $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_exp_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_exp_amt_tobdgt_v {
    label: "Exp Telecom $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_exp_amt} - ${glm_property_future_fcst_f_bdgt.telecom_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_exp_amt_tobdgt_v {
    label: "Exp Retail $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_exp_amt} - ${glm_property_future_fcst_f_bdgt.retail_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_exp_amt_tobdgt_v {
    label: "Exp Other Op. Dept. $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_exp_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_exp_amt_tobdgt_v {
    label: "Exp Mgmt Srvcs $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_exp_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_exp_amt_tobdgt_v {
    label: "Exp A&G $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.administrative_general_exp_amt} - ${glm_property_future_fcst_f_bdgt.administrative_general_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_exp_amt_tobdgt_v {
    label: "Exp IT $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.information_technology_exp_amt} - ${glm_property_future_fcst_f_bdgt.information_technology_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_exp_amt_tobdgt_v {
    label: "Exp S&M $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.sales_marketing_exp_amt} - ${glm_property_future_fcst_f_bdgt.sales_marketing_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_exp_amt_tobdgt_v {
    label: "Exp R&M $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_operations_maintenance_exp_amt} - ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: utility_exp_amt_tobdgt_v {
    label: "Exp Utility $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.utility_exp_amt} - ${glm_property_future_fcst_f_bdgt.utility_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_exp_amt_tobdgt_v {
    label: "Exp Rentals & Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_exp_amt} - ${glm_property_future_fcst_f_bdgt.misc_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_exp_amt_tobdgt_v {
    label: "Exp Nonoperating Realty $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_exp_amt_tobdgt_v {
    label: "Exp Nonoperating Airport $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_exp_amt_tobdgt_v {
    label: "Exp Nonoperating Utility $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Expenses % var

  measure: exp_amt_tobdgt {
    label: "Exp $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.exp_amt}, ${glm_property_future_fcst_f_bdgt.exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_exp_amt_tobdgt {
    label: "Exp Rms $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_exp_amt}, ${glm_property_future_fcst_f_bdgt.room_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_exp_amt_tobdgt {
    label: "Exp RB&E $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_exp_amt}, ${glm_property_future_fcst_f_bdgt.rbe_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_exp_amt_tobdgt {
    label: "Exp Spa $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_exp_amt}, ${glm_property_future_fcst_f_bdgt.spa_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_exp_amt_tobdgt {
    label: "Exp Golf $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_exp_amt}, ${glm_property_future_fcst_f_bdgt.golf_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_exp_amt_tobdgt {
    label: "Exp Fitness & Rec $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_exp_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_exp_amt_tobdgt {
    label: "Exp Parking & Trans $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_exp_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_exp_amt_tobdgt {
    label: "Exp Telecom $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_exp_amt}, ${glm_property_future_fcst_f_bdgt.telecom_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_exp_amt_tobdgt {
    label: "Exp Retail $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_exp_amt}, ${glm_property_future_fcst_f_bdgt.retail_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_exp_amt_tobdgt {
    label: "Exp Other Op. Dept. $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_exp_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_exp_amt_tobdgt {
    label: "Exp Mgmt Srvcs $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_exp_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_exp_amt_tobdgt {
    label: "Exp A&G $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.administrative_general_exp_amt}, ${glm_property_future_fcst_f_bdgt.administrative_general_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_exp_amt_tobdgt {
    label: "Exp IT $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.information_technology_exp_amt}, ${glm_property_future_fcst_f_bdgt.information_technology_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_exp_amt_tobdgt {
    label: "Exp S&M $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.sales_marketing_exp_amt}, ${glm_property_future_fcst_f_bdgt.sales_marketing_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_exp_amt_tobdgt {
    label: "Exp R&M $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_operations_maintenance_exp_amt}, ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: utility_exp_amt_tobdgt {
    label: "Exp Utility $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.utility_exp_amt}, ${glm_property_future_fcst_f_bdgt.utility_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_exp_amt_tobdgt {
    label: "Exp Rentals & Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_exp_amt}, ${glm_property_future_fcst_f_bdgt.misc_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_exp_amt_tobdgt {
    label: "Exp Nonoperating Realty $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_exp_amt_tobdgt {
    label: "Exp Nonoperating Airport $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_exp_amt_tobdgt {
    label: "Exp Nonoperating Utility $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Other Expenses

  measure: other_exp_amt_tobdgt_v {
    label: "Exp Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_exp_amt} - ${glm_property_future_fcst_f_bdgt.other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_other_exp_amt_tobdgt_v {
    label: "Exp Other Rms $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.room_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_exp_amt_tobdgt_v {
    label: "Exp Other RB&E $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_other_exp_amt_tobdgt_v {
    label: "Exp Other Spa $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.spa_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_other_exp_amt_tobdgt_v {
    label: "Exp Other Golf $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.golf_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_other_exp_amt_tobdgt_v {
    label: "Exp Other Fitness & Rec $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_other_exp_amt_tobdgt_v {
    label: "Exp Other Parking & Trans $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_other_exp_amt_tobdgt_v {
    label: "Exp Other Telecom $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.telecom_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_other_exp_amt_tobdgt_v {
    label: "Exp Other Retail $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.retail_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_other_exp_amt_tobdgt_v {
    label: "Exp Other Other Op. Dept. $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_other_exp_amt_tobdgt_v {
    label: "Exp Other Mgmt Srvcs $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_other_exp_amt_tobdgt_v {
    label: "Exp Other A&G $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.administrative_general_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.administrative_general_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_other_exp_amt_tobdgt_v {
    label: "Exp Other IT $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.information_technology_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.information_technology_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_other_exp_amt_tobdgt_v {
    label: "Exp Other S&M $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.sales_marketing_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.sales_marketing_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_other_exp_amt_tobdgt_v {
    label: "Exp Other R&M $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_operations_maintenance_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: utility_other_exp_amt_tobdgt_v {
    label: "Exp Other Utility $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.utility_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.utility_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_other_exp_amt_tobdgt_v {
    label: "Exp Other Rentals & Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.misc_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_other_exp_amt_tobdgt_v {
    label: "Exp Other Nonoperating Realty $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_other_exp_amt_tobdgt_v {
    label: "Exp Other Nonoperating Airport $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_other_exp_amt_tobdgt_v {
    label: "Exp Other Nonoperating Utility $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_other_exp_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Other Expenses % var

  measure: other_exp_amt_tobdgt {
    label: "Exp Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_exp_amt}, ${glm_property_future_fcst_f_bdgt.other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_other_exp_amt_tobdgt {
    label: "Exp Other Rms $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.room_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_amt_tobdgt {
    label: "Exp Other RB&E $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_other_exp_amt_tobdgt {
    label: "Exp Other Spa $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.spa_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_other_exp_amt_tobdgt {
    label: "Exp Other Golf $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.golf_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_amt_tobdgt {
    label: "Exp Other Fitness & Rec $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_amt_tobdgt {
    label: "Exp Other Parking & Trans $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_amt_tobdgt {
    label: "Exp Other Telecom $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.telecom_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_other_exp_amt_tobdgt {
    label: "Exp Other Retail $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.retail_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_amt_tobdgt {
    label: "Exp Other Other Op. Dept. $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_amt_tobdgt {
    label: "Exp Other Mgmt Srvcs $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_other_exp_amt_tobdgt {
    label: "Exp Other A&G $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.administrative_general_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.administrative_general_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_other_exp_amt_tobdgt {
    label: "Exp Other IT $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.information_technology_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.information_technology_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_other_exp_amt_tobdgt {
    label: "Exp Other S&M $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.sales_marketing_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.sales_marketing_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_other_exp_amt_tobdgt {
    label: "Exp Other R&M $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_operations_maintenance_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: utility_other_exp_amt_tobdgt {
    label: "Exp Other R&M $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.utility_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.utility_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_other_exp_amt_tobdgt {
    label: "Exp Other Rentals & Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.misc_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_realty_other_exp_amt_tobdgt {
    label: "Exp Other Nonoperating Realty $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_airport_other_exp_amt_tobdgt {
    label: "Exp Other Nonoperating Airport $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_util_other_exp_amt_tobdgt {
    label: "Exp Other Nonoperating Utility $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_other_exp_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll

#   measure: payroll_amt_tobdgt_v {
#     label: "Payroll $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.payroll_amt} - ${glm_property_future_fcst_f_bdgt.payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: room_payroll_amt_tobdgt_v {
#     label: "Payroll Rms $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.room_payroll_amt} - ${glm_property_future_fcst_f_bdgt.room_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
   measure: rbe_payroll_amt_tobdgt_v {
     label: "Payroll RB&E $ TY:Bdgt - var"
     description: "TY - Bdgt"
     type: number
     sql: ${glm_property_future_fcst_f_ty.rbe_payroll_amt} - ${glm_property_future_fcst_f_bdgt.rbe_payroll_amt} ;;
     value_format_name: decimal_0
   }
#
#   measure: spa_payroll_amt_tobdgt_v {
#     label: "Payroll Spa $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.spa_payroll_amt} - ${glm_property_future_fcst_f_bdgt.spa_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: golf_payroll_amt_tobdgt_v {
#     label: "Payroll Golf $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.golf_payroll_amt} - ${glm_property_future_fcst_f_bdgt.golf_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: fitness_recreation_payroll_amt_tobdgt_v {
#     label: "Payroll Fitness & Rec $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.fitness_recreation_payroll_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: parking_transportation_payroll_amt_tobdgt_v {
#     label: "Payroll Parking & Trans $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.parking_transportation_payroll_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: telecom_payroll_amt_tobdgt_v {
#     label: "Payroll Telecom $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.telecom_payroll_amt} - ${glm_property_future_fcst_f_bdgt.telecom_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: retail_payroll_amt_tobdgt_v {
#     label: "Payroll Retail $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.retail_payroll_amt} - ${glm_property_future_fcst_f_bdgt.retail_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: other_operated_payroll_amt_tobdgt_v {
#     label: "Payroll Other Op. Dept. $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.other_operated_payroll_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: property_mgmt_payroll_amt_tobdgt_v {
#     label: "Payroll Mgmt Srvcs $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.property_mgmt_payroll_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: administrative_general_payroll_amt_tobdgt_v {
#     label: "Payroll A&G $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.administrative_general_payroll_amt} - ${glm_property_future_fcst_f_bdgt.administrative_general_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: information_technology_payroll_amt_tobdgt_v {
#     label: "Payroll IT $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.information_technology_payroll_amt} - ${glm_property_future_fcst_f_bdgt.information_technology_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: sales_marketing_payroll_amt_tobdgt_v {
#     label: "Payroll S&M $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.sales_marketing_payroll_amt} - ${glm_property_future_fcst_f_bdgt.sales_marketing_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: property_operations_maintenance_payroll_amt_tobdgt_v {
#     label: "Payroll R&M $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.property_operations_maintenance_payroll_amt} - ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: misc_payroll_amt_tobdgt_v {
#     label: "Payroll Rentals & Other $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.misc_payroll_amt} - ${glm_property_future_fcst_f_bdgt.misc_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: nonoperating_realty_payroll_amt_tobdgt_v {
#     label: "Payroll Nonoperating Realty $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_payroll_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: nonoperating_airport_payroll_amt_tobdgt_v {
#     label: "Payroll Nonoperating Airport $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_payroll_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: nonoperating_util_payroll_amt_tobdgt_v {
#     label: "Payroll Nonoperating Utility $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.nonoperating_util_payroll_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: rbe_outlet_payroll_amt_tobdgt_v {
#     label: "Payroll RB&E Outlet $ TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.rbe_outlet_payroll_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   #-- Payroll % var
#
#   measure: payroll_amt_tobdgt {
#     label: "Payroll $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.payroll_amt}, ${glm_property_future_fcst_f_bdgt.payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: room_payroll_amt_tobdgt {
#     label: "Payroll Rms $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_payroll_amt}, ${glm_property_future_fcst_f_bdgt.room_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: rbe_payroll_amt_tobdgt {
#     label: "Payroll RB&E $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_payroll_amt}, ${glm_property_future_fcst_f_bdgt.rbe_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: spa_payroll_amt_tobdgt {
#     label: "Payroll Spa $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_payroll_amt}, ${glm_property_future_fcst_f_bdgt.spa_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: golf_payroll_amt_tobdgt {
#     label: "Payroll Golf $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_payroll_amt}, ${glm_property_future_fcst_f_bdgt.golf_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: fitness_recreation_payroll_amt_tobdgt {
#     label: "Payroll Fitness & Rec $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_payroll_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: parking_transportation_payroll_amt_tobdgt {
#     label: "Payroll Parking & Trans $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_payroll_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: telecom_payroll_amt_tobdgt {
#     label: "Payroll Telecom $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_payroll_amt}, ${glm_property_future_fcst_f_bdgt.telecom_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: retail_payroll_amt_tobdgt {
#     label: "Payroll Retail $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_payroll_amt}, ${glm_property_future_fcst_f_bdgt.retail_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: other_operated_payroll_amt_tobdgt {
#     label: "Payroll Other Op. Dept. $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_payroll_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: property_mgmt_payroll_amt_tobdgt {
#     label: "Payroll Mgmt Srvcs $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_payroll_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: administrative_general_payroll_amt_tobdgt {
#     label: "Payroll A&G $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.administrative_general_payroll_amt}, ${glm_property_future_fcst_f_bdgt.administrative_general_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: information_technology_payroll_amt_tobdgt {
#     label: "Payroll IT $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.information_technology_payroll_amt}, ${glm_property_future_fcst_f_bdgt.information_technology_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: sales_marketing_payroll_amt_tobdgt {
#     label: "Payroll S&M $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.sales_marketing_payroll_amt}, ${glm_property_future_fcst_f_bdgt.sales_marketing_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: property_operations_maintenance_payroll_amt_tobdgt {
#     label: "Payroll R&M $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_operations_maintenance_payroll_amt}, ${glm_property_future_fcst_f_bdgt.property_operations_maintenance_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: misc_payroll_amt_tobdgt {
#     label: "Payroll Rentals & Other $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_payroll_amt}, ${glm_property_future_fcst_f_bdgt.misc_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: nonoperating_airport_payroll_amt_tobdgt {
#     label: "Payroll Nonoperating Airport $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_payroll_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: nonoperating_realty_payroll_amt_tobdgt {
#     label: "Payroll Nonoperating Realty $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_payroll_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: nonoperating_util_payroll_amt_tobdgt {
#     label: "Payroll Nonoperating Utility $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_payroll_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: rbe_outlet_payroll_amt_tobdgt {
#     label: "Payroll RB&E Outlet $ TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_payroll_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_payroll_amt}) ;;
#     value_format_name: percent_1
#   }

  #-- Covers

  measure: rbe_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Banquet  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Catering  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Outlet  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Room Service  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_room_service_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_cover_cnt_tobdgt_v {
    label: "Cvrs RB&E Other  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_cover_cnt} - ${glm_property_future_fcst_f_bdgt.rbe_other_cover_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Covers % var

  measure: rbe_cover_cnt_tobdgt {
    label: "Cvrs RB&E  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_cover_cnt_tobdgt {
    label: "Cvrs RB&E Banquet  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_cover_cnt_tobdgt {
    label: "Cvrs RB&E Catering  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_cover_cnt_tobdgt {
    label: "Cvrs RB&E Outlet  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_cover_cnt_tobdgt {
    label: "Cvrs RB&E Room Service  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_room_service_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_cover_cnt_tobdgt {
    label: "Cvrs RB&E Other TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_cover_cnt}, ${glm_property_future_fcst_f_bdgt.rbe_other_cover_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Treatments

  measure: spa_treatment_cnt_tobdgt_v {
    label: "Trtmnts Spa TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_treatment_cnt} - ${glm_property_future_fcst_f_bdgt.spa_treatment_cnt} ;;
    value_format_name: decimal_0
  }

  measure: golf_round_cnt_tobdgt_v {
    label: "Rnds Golf TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_round_cnt} - ${glm_property_future_fcst_f_bdgt.golf_round_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Treatments % var

  measure: spa_treatment_cnt_tobdgt {
    label: "Trtmnts Spa TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_treatment_cnt}, ${glm_property_future_fcst_f_bdgt.spa_treatment_cnt}) ;;
    value_format_name: percent_1
  }

  measure: golf_round_cnt_tobdgt {
    label: "Rnds Golf TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_round_cnt}, ${glm_property_future_fcst_f_bdgt.golf_round_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Rooms

  measure: arrival_cnt_tobdgt_v {
    label: "Arrivals TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.arrival_cnt} - ${glm_property_future_fcst_f_bdgt.arrival_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_room_cnt_tobdgt_v {
    label: "Rms Occ  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_transient_room_cnt_tobdgt_v {
    label: "Rms Occ Transient TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_transient_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_transient_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_group_room_cnt_tobdgt_v {
    label: "Rms Occ Group TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_group_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_group_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_contract_room_cnt_tobdgt_v {
    label: "Rms Occ Contract TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_contract_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_contract_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avail_room_cnt_tobdgt_v {
    label: "Rms Avail  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.avail_room_cnt} - ${glm_property_future_fcst_f_bdgt.avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_owner_room_cnt_tobdgt_v {
    label: "Rms Occ Owner TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_owner_room_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_owner_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: comp_room_cnt_tobdgt_v {
    label: "Rms Occ Comp TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.comp_room_cnt} - ${glm_property_future_fcst_f_bdgt.comp_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: net_avail_room_cnt_tobdgt_v {
    label: "Rms Avail Net TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.net_avail_room_cnt} - ${glm_property_future_fcst_f_bdgt.net_avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: transient_room_rev_amt_tobdgt_v {
    label: "Rev Rms Transient $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.transient_room_rev_amt} - ${glm_property_future_fcst_f_bdgt.transient_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: group_room_rev_amt_tobdgt_v {
    label: "Rev Rms Group $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.group_room_rev_amt} - ${glm_property_future_fcst_f_bdgt.group_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: contract_room_rev_amt_tobdgt_v {
    label: "Rev Rms Contract $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.contract_room_rev_amt} - ${glm_property_future_fcst_f_bdgt.contract_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: no_show_room_rev_amt_tobdgt_v {
    label: "Rev Rms No Show $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.no_show_room_rev_amt} - ${glm_property_future_fcst_f_bdgt.no_show_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: service_charge_incl_room_rev_amt_tobdgt_v {
    label: "Rev Rms Srvc Charge $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.service_charge_incl_room_rev_amt} - ${glm_property_future_fcst_f_bdgt.service_charge_incl_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  #-- Rooms % var

  measure: arrival_cnt_tobdgt {
    label: "Arrivals TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.arrival_cnt}, ${glm_property_future_fcst_f_bdgt.arrival_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_room_cnt_tobdgt {
    label: "Rms Occ  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_cnt_tobdgt {
    label: "Rms Occ Transient TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_transient_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_transient_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_cnt_tobdgt {
    label: "Rms Occ Group TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_group_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_group_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_cnt_tobdgt {
    label: "Rms Occ Contract TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_contract_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_contract_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: avail_room_cnt_tobdgt {
    label: "Rms Avail  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.avail_room_cnt}, ${glm_property_future_fcst_f_bdgt.avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_owner_room_cnt_tobdgt {
    label: "Rms Occ Owner TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_owner_room_cnt}, ${glm_property_future_fcst_f_bdgt.occupied_owner_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: comp_room_cnt_tobdgt {
    label: "Rms Occ Comp TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.comp_room_cnt}, ${glm_property_future_fcst_f_bdgt.comp_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: net_avail_room_cnt_tobdgt {
    label: "Rms Avail Net TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.net_avail_room_cnt}, ${glm_property_future_fcst_f_bdgt.net_avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: transient_room_rev_amt_tobdgt {
    label: "Rev Rms Transient $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.transient_room_rev_amt}, ${glm_property_future_fcst_f_bdgt.transient_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: group_room_rev_amt_tobdgt {
    label: "Rev Rms Group $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.group_room_rev_amt}, ${glm_property_future_fcst_f_bdgt.group_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: contract_room_rev_amt_tobdgt {
    label: "Rev Rms Contract $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.contract_room_rev_amt}, ${glm_property_future_fcst_f_bdgt.contract_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Profit

  measure: profit_amt_tobdgt_v {

    label: "Profit $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.profit_amt} - ${glm_property_future_fcst_f_bdgt.profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_profit_amt_tobdgt_v {
    label: "Profit Rms $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_profit_amt} - ${glm_property_future_fcst_f_bdgt.room_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_profit_amt_tobdgt_v {
    label: "Profit RB&E $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_profit_amt_tobdgt_v {
    label: "Profit RB&E Banquet $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_profit_amt_tobdgt_v {
    label: "Profit RB&E Catering $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_profit_amt_tobdgt_v {
    label: "Profit RB&E Conference Services $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_conference_services_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_conference_services_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_profit_amt_tobdgt_v {
    label: "Profit RB&E Outlet $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_profit_amt_tobdgt_v {
    label: "Profit RB&E Room Service $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_room_service_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_profit_amt_tobdgt_v {
    label: "Profit RB&E Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_profit_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_profit_amt_tobdgt_v {
    label: "Profit Spa $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_profit_amt} - ${glm_property_future_fcst_f_bdgt.spa_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_profit_amt_tobdgt_v {
    label: "Profit Golf $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_profit_amt} - ${glm_property_future_fcst_f_bdgt.golf_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_profit_amt_tobdgt_v {
    label: "Profit Fitness & Rec $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_profit_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_profit_amt_tobdgt_v {
    label: "Profit Parking & Trans $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_profit_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_profit_amt_tobdgt_v {
    label: "Profit Telecom $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_profit_amt} - ${glm_property_future_fcst_f_bdgt.telecom_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_profit_amt_tobdgt_v {
    label: "Profit Retail $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_profit_amt} - ${glm_property_future_fcst_f_bdgt.retail_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_profit_amt_tobdgt_v {
    label: "Profit Other Op. Dept. $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_profit_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_profit_amt_tobdgt_v {
    label: "Profit Mgmt Srvcs $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_profit_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_profit_amt_tobdgt_v {
    label: "Profit Rentals & Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_profit_amt} - ${glm_property_future_fcst_f_bdgt.misc_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_profit_amt_tobdgt_v {
    label: "Profit Nonoperating Realty $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_profit_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_profit_amt_tobdgt_v {
    label: "Profit Nonoperating Airport $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_profit_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_profit_amt_tobdgt_v {
    label: "Profit Nonoperating Utility $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_profit_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_profit_amt_tobdgt_v {
    label: "Profit Undistributed $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.undistributed_profit_amt} - ${glm_property_future_fcst_f_bdgt.undistributed_profit_amt} ;;
    value_format_name: decimal_0
  }

  #-- Profit % var

  measure: profit_amt_tobdgt {

    label: "Profit $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.profit_amt}, ${glm_property_future_fcst_f_bdgt.profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_profit_amt_tobdgt {
    label: "Profit Rms $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_profit_amt}, ${glm_property_future_fcst_f_bdgt.room_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_profit_amt_tobdgt {
    label: "Profit RB&E $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_profit_amt_tobdgt {
    label: "Profit RB&E Banquet $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_profit_amt_tobdgt {
    label: "Profit RB&E Catering $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_profit_amt_tobdgt {
    label: "Profit RB&E Conference Services $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_conference_services_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_conference_services_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_profit_amt_tobdgt {
    label: "Profit RB&E Outlet $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_profit_amt_tobdgt {
    label: "Profit RB&E Room Service $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_room_service_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_profit_amt_tobdgt {
    label: "Profit RB&E Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_profit_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_profit_amt_tobdgt {
    label: "Profit Spa $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_profit_amt}, ${glm_property_future_fcst_f_bdgt.spa_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_profit_amt_tobdgt {
    label: "Profit Golf $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_profit_amt}, ${glm_property_future_fcst_f_bdgt.golf_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_profit_amt_tobdgt {
    label: "Profit Fitness & Rec $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_profit_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_profit_amt_tobdgt {
    label: "Profit Parking & Trans $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_profit_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_profit_amt_tobdgt {
    label: "Profit Telecom $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_profit_amt}, ${glm_property_future_fcst_f_bdgt.telecom_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_profit_amt_tobdgt {
    label: "Profit Retail $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_profit_amt}, ${glm_property_future_fcst_f_bdgt.retail_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_profit_amt_tobdgt {
    label: "Profit Other Op. Dept. $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_profit_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_profit_amt_tobdgt {
    label: "Profit Mgmt Srvcs $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_profit_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_profit_amt_tobdgt {
    label: "Profit Rentals & Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_profit_amt}, ${glm_property_future_fcst_f_bdgt.misc_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_profit_amt_tobdgt {
    label: "Profit Nonoperating Realty $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_profit_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_profit_amt_tobdgt {
    label: "Profit Nonoperating Airport $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_profit_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_profit_amt_tobdgt {
    label: "Profit Nonoperating Utility $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_profit_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: undistributed_profit_amt_tobdgt {
    label: "Profit Undistributed $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.undistributed_profit_amt}, ${glm_property_future_fcst_f_bdgt.undistributed_profit_amt}) ;;
    value_format_name: percent_1
  }

  #-- Profit % var total rev

  measure: profit_rev_pct_tobdgt_v {
    label: "Profit /TRev % TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.profit_rev_pct} - ${glm_property_future_fcst_f_bdgt.profit_rev_pct};;
    value_format_name: percent_1
  }

  measure: rbe_profit_rev_pct_tobdgt_v {
    label: "Profit /Rev RB&E % TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_profit_rev_pct} - ${glm_property_future_fcst_f_bdgt.rbe_profit_rev_pct};;
    value_format_name: percent_1
  }

  measure: room_profit_rev_pct_tobdgt_v {
    label: "Profit /Rev Rms % TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_profit_rev_pct} - ${glm_property_future_fcst_f_bdgt.room_profit_rev_pct};;
    value_format_name: percent_1
  }

  measure: profit_rev_pct_tobdgt{
    label: "Profit /TRev % TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.profit_rev_pct}, ${glm_property_future_fcst_f_bdgt.profit_rev_pct});;
    value_format_name: percent_1
  }

  measure: rbe_profit_rev_pct_tobdgt {
    label: "Profit /Rev RB&E % TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_profit_rev_pct}, ${glm_property_future_fcst_f_bdgt.rbe_profit_rev_pct});;
    value_format_name: percent_1
  }

  measure: room_profit_rev_pct_tobdgt {
    label: "Profit /Rev Rms % TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_profit_rev_pct}, ${glm_property_future_fcst_f_bdgt.room_profit_rev_pct});;
    value_format_name: percent_1
  }

  #-- Cost

  measure: cost_of_sales_amt_tobdgt_v {

    label: "COS $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_cost_of_sales_amt_tobdgt_v {
    label: "COS Rms $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.room_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_cost_of_sales_amt_tobdgt_v {
    label: "COS RB&E $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_cost_of_sales_amt_tobdgt_v {
    label: "COS Spa $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.spa_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_cost_of_sales_amt_tobdgt_v {
    label: "COS Golf $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.golf_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_cost_of_sales_amt_tobdgt_v {
    label: "COS Fitness & Rec $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_cost_of_sales_amt_tobdgt_v {
    label: "COS Parking & Trans $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.parking_transportation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_cost_of_sales_amt_tobdgt_v {
    label: "COS Telecom $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.telecom_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_cost_of_sales_amt_tobdgt_v {
    label: "COS Retail $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.retail_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_cost_of_sales_amt_tobdgt_v {
    label: "COS Other Op. Dept. $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_cost_of_sales_amt_tobdgt_v {
    label: "COS Mgmt Srvcs $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_cost_of_sales_amt_tobdgt_v {
    label: "COS Rentals & Other $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.misc_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_cost_of_sales_amt_tobdgt_v {
    label: "COS Nonoperating Realty $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_cost_of_sales_amt_tobdgt_v {
    label: "COS Nonoperating Airport $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_cost_of_sales_amt_tobdgt_v {
    label: "COS Nonoperating Utility $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_cost_of_sales_amt_tobdgt_v {
    label: "COS RB&E Food $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.food_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_cost_of_sales_amt_tobdgt_v {
    label: "COS RB&E Beverage $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.beverage_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cost_of_sales_amt_tobdgt_v {
    label: "COS RB&E Outlet $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_cost_of_sales_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_tobdgt_v {
    label: "Rev /Trtmnt Spa TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_rev_treatment_avg_amt} - ${glm_property_future_fcst_f_bdgt.spa_rev_treatment_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_rev_round_avg_amt_tobdgt_v {
    label: "Rev /Rnd Golf TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_rev_round_avg_amt} - ${glm_property_future_fcst_f_bdgt.golf_rev_round_avg_amt} ;;
    value_format_name: decimal_2
  }

  #-- Cost % var

  measure: cost_of_sales_amt_tobdgt {

    label: "COS $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_cost_of_sales_amt_tobdgt {
    label: "COS Rms $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.room_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_cost_of_sales_amt_tobdgt {
    label: "COS RB&E $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_cost_of_sales_amt_tobdgt {
    label: "COS Spa $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.spa_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_cost_of_sales_amt_tobdgt {
    label: "COS Golf $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.golf_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_cost_of_sales_amt_tobdgt {
    label: "COS Fitness & Rec $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_cost_of_sales_amt_tobdgt {
    label: "COS Parking & Trans $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.parking_transportation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_cost_of_sales_amt_tobdgt {
    label: "COS Telecom $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.telecom_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_cost_of_sales_amt_tobdgt {
    label: "COS Retail $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.retail_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_cost_of_sales_amt_tobdgt {
    label: "COS Other Op. Dept. $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_cost_of_sales_amt_tobdgt {
    label: "COS Mgmt Srvcs $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_cost_of_sales_amt_tobdgt {
    label: "COS Rentals & Other $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.misc_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_cost_of_sales_amt_tobdgt {
    label: "COS Nonoperating Realty $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_cost_of_sales_amt_tobdgt {
    label: "COS Nonoperating Airport $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_cost_of_sales_amt_tobdgt {
    label: "COS Nonoperating Utility $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_cost_of_sales_amt_tobdgt {
    label: "COS RB&E Food $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.food_rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_cost_of_sales_amt_tobdgt {
    label: "COS RB&E Beverage $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_bdgt.beverage_rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg Rev per Spa Treatment / Golf Round % var

  measure: spa_rev_treatment_avg_amt_tobdgt {
    label: "Rev /Trtmnt Spa TY:Bdgt - var %"
    description: "TY - Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_rev_treatment_avg_amt}, ${glm_property_future_fcst_f_bdgt.spa_rev_treatment_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_round_avg_amt_tobdgt {
    label: "Rev /Rnd Golf TY:Bdgt - var %"
    description: "TY - Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_rev_round_avg_amt}, ${glm_property_future_fcst_f_bdgt.golf_rev_round_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Occupancy

  measure: occupied_room_pct_tobdgt_v {
    label: "Rms Occ %  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_room_pct} - ${glm_property_future_fcst_f_bdgt.occupied_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tobdgt_v {
    label: "Rms Occ % Group TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_group_room_pct} - ${glm_property_future_fcst_f_bdgt.occupied_group_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tobdgt_v {
    label: "Rms Occ % Transient TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_transient_room_pct} - ${glm_property_future_fcst_f_bdgt.occupied_transient_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tobdgt_v {
    label: "Rms Occ % Contract TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_contract_room_pct} - ${glm_property_future_fcst_f_bdgt.occupied_contract_room_pct} ;;
    value_format_name: percent_1
  }

  #-- Occupancy % var

  measure: occupied_room_pct_tobdgt {
    label: "Rms Occ %  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_room_pct}, ${glm_property_future_fcst_f_bdgt.occupied_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tobdgt {
    label: "Rms Occ % Group TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_group_room_pct}, ${glm_property_future_fcst_f_bdgt.occupied_group_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tobdgt {
    label: "Rms Occ % Transient TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_transient_room_pct}, ${glm_property_future_fcst_f_bdgt.occupied_transient_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tobdgt {
    label: "Rms Occ % Contract TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_contract_room_pct}, ${glm_property_future_fcst_f_bdgt.occupied_contract_room_pct}) ;;
    value_format_name: percent_1
  }

  #-- ADR

  measure: adr_amt_tobdgt_v {
    label: "ADR $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.adr_amt} - ${glm_property_future_fcst_f_bdgt.adr_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_transient_amt_tobdgt_v {
    label: "ADR Transient $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.adr_transient_amt} - ${glm_property_future_fcst_f_bdgt.adr_transient_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_group_amt_tobdgt_v {
    label: "ADR Group $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.adr_group_amt} - ${glm_property_future_fcst_f_bdgt.adr_group_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_contract_amt_tobdgt_v {
    label: "ADR Contract $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.adr_contract_amt} - ${glm_property_future_fcst_f_bdgt.adr_contract_amt} ;;
    value_format_name: decimal_2
  }

  #-- ADR % var

  measure: adr_amt_tobdgt {
    label: "ADR $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.adr_amt}, ${glm_property_future_fcst_f_bdgt.adr_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_transient_amt_tobdgt {
    label: "ADR Transient $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.adr_transient_amt}, ${glm_property_future_fcst_f_bdgt.adr_transient_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_group_amt_tobdgt {
    label: "ADR Group $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.adr_group_amt}, ${glm_property_future_fcst_f_bdgt.adr_group_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_contract_amt_tobdgt {
    label: "ADR Contract $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.adr_contract_amt}, ${glm_property_future_fcst_f_bdgt.adr_contract_amt} );;
    value_format_name: percent_1
  }

  #-- Room nights

  measure: room_night_transient_pct_tobdgt_v {
    label: "Rms Night Transient % TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_night_transient_pct} - ${glm_property_future_fcst_f_bdgt.room_night_transient_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tobdgt_v {
    label: "Rms Night Group % TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_night_group_pct} - ${glm_property_future_fcst_f_bdgt.room_night_group_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_contract_pct_tobdgt_v {
    label: "Rms Night Contract % TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_night_contract_pct} - ${glm_property_future_fcst_f_bdgt.room_night_contract_pct} ;;
    value_format_name: percent_1
  }

  #-- Room nights % var

  measure: room_night_transient_pct_tobdgt {
    label: "Rms Night Transient % TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_night_transient_pct}, ${glm_property_future_fcst_f_bdgt.room_night_transient_pct}) ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tobdgt {
    label: "Rms Night Group % TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_night_group_pct}, ${glm_property_future_fcst_f_bdgt.room_night_group_pct}) ;;
    value_format_name: percent_1
  }

  measure: room_night_contract_pct_tobdgt {
    label: "Rms Night Contract % TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_night_contract_pct}, ${glm_property_future_fcst_f_bdgt.room_night_contract_pct} );;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_amt_tobdgt_v {
    label: "Rev PAR $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_par_amt} - ${glm_property_future_fcst_f_bdgt.rev_par_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_group_amt_tobdgt_v {
    label: "Rev PAR $ Group TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_par_group_amt} - ${glm_property_future_fcst_f_bdgt.rev_par_group_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_transient_amt_tobdgt_v {
    label: "Rev PAR $ Transient TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_par_transient_amt} - ${glm_property_future_fcst_f_bdgt.rev_par_transient_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_contract_amt_tobdgt_v {
    label: "Rev PAR $ Contract TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_par_contract_amt} - ${glm_property_future_fcst_f_bdgt.rev_par_contract_amt} ;;
    value_format_name: usd_0
  }

  #-- Rev PAR % var

  measure: rev_par_amt_tobdgt {
    label: "Rev PAR $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_par_amt}, ${glm_property_future_fcst_f_bdgt.rev_par_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_group_amt_tobdgt {
    label: "Rev PAR $ Group TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_par_group_amt}, ${glm_property_future_fcst_f_bdgt.rev_par_group_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_transient_amt_tobdgt {
    label: "Rev PAR $ Transient TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_par_transient_amt}, ${glm_property_future_fcst_f_bdgt.rev_par_transient_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_contract_amt_tobdgt {
    label: "Rev PAR $ Contract TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_par_contract_amt}, ${glm_property_future_fcst_f_bdgt.rev_par_contract_amt}) ;;
    value_format_name: percent_1
  }

  #-- Rev POR

  measure: rev_por_amt_tobdgt_v {
    label: "Rev POR $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_por_amt} - ${glm_property_future_fcst_f_bdgt.rev_por_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_por_amt_tobdgt {
    label: "Rev POR $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_por_amt}, ${glm_property_future_fcst_f_bdgt.rev_por_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg check

  measure: rbe_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Avg $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Banquet Avg $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Catering Avg $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Outlet Avg $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_room_service_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Room Service Avg $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_room_service_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_room_service_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_check_avg_amt_tobdgt_v {
    label: "Cvrs RB&E Other Avg $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_check_avg_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_check_avg_amt} ;;
    value_format_name: decimal_2
  }


  #-- Avg check % var

  measure: rbe_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Avg $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Banquet Avg $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Catering Avg $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Outlet Avg $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Room Service Avg $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_room_service_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_room_service_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_check_avg_amt_tobdgt {
    label: "Cvrs RB&E Other Avg $ TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_check_avg_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg length of stay

  measure: length_of_stay_avg_amt_tobdgt_v {
    label: "Stay Length Avg Night TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.length_of_stay_avg_amt} - ${glm_property_future_fcst_f_bdgt.length_of_stay_avg_amt} ;;
    value_format_name: decimal_1
  }

  #-- Avg length of stay % var

  measure: length_of_stay_avg_amt_tobdgt {
    label: "Stay Length Avg Night TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.length_of_stay_avg_amt}, ${glm_property_future_fcst_f_bdgt.length_of_stay_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev

#   measure: payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   #-- Payroll /Rev % var
#
#   measure: payroll_rev_pct_tobdgt {
#     label: "Payroll /Rev TY:Bdgt - var %"
#     description: "(TY - Bdgt) / Bdgt"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.payroll_rev_pct}, ${glm_property_future_fcst_f_bdgt.payroll_rev_pct}) ;;
#     value_format_name: percent_1
#   }
#
#   #-- Payroll Rev %
#
#   measure: room_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Rms TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.room_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.room_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: rbe_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev RB&E TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.rbe_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.rbe_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: spa_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Spa TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.spa_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.spa_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: golf_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Golf TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.golf_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.golf_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: fitness_recreation_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Fitness & Rec TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.fitness_recreation_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: parking_transportation_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Parking & Trans TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.parking_transportation_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.parking_transportation_payroll_rev_pct} ;;
#     value_format_name: usd_0
#   }
#
#   measure: telecom_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Telecom TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.telecom_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.telecom_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: retail_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Retail TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.retail_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.retail_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: other_operated_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Other Op. Dept. TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.other_operated_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.other_operated_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: property_mgmt_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Mgmt Srvcs TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.property_mgmt_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.property_mgmt_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: misc_payroll_rev_pct_tobdgt_v {
#     label: "Payroll /Rev Rentals & Other % TY:Bdgt - var"
#     description: "TY - Bdgt"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.misc_payroll_rev_pct} - ${glm_property_future_fcst_f_bdgt.misc_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }

  #-- Rental property splits

  measure: room_rental_mgmt_2_19_rev_amt_tobdgt_v {
    label: "Rev Rms Rental $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_bdgt.room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: avail_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Avail Rental $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.avail_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_owner_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Owner Rental TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_owner_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_owner_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: net_avail_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Avail Net Rental TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.net_avail_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.net_avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Rental TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: transient_room_rental_mgmt_2_19_rev_amt_tobdgt_v {
    label: "Rev Rms Transient Rental TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.transient_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_bdgt.transient_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: usd_0
  }
  measure: group_room_rental_mgmt_2_19_rev_amt_tobdgt_v {
    label: "Rev Rms Group Rental $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.group_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_bdgt.group_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: contract_room_rental_mgmt_2_19_rev_amt_tobdgt_v {
    label: "Rev Rms Contract Rental $ TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.contract_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_bdgt.contract_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_transient_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Transient Rental TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_transient_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_transient_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_group_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Group Rental TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_group_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_group_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_contract_room_rental_mgmt_2_19_cnt_tobdgt_v {
    label: "Rms Occ Contract Rental TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_contract_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_bdgt.occupied_contract_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Hours

  measure: hour_amt_tobdgt_v {
    label: "Hrs TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql:  ${glm_property_future_fcst_f_ty.hour_amt} - ${glm_property_future_fcst_f_bdgt.hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_hour_amt_tobdgt_v {
    label: "Hrs Rms TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_hour_amt} - ${glm_property_future_fcst_f_bdgt.room_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_hour_amt_tobdgt_v {
    label: "Hrs RB&E TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql:  ${glm_property_future_fcst_f_ty.rbe_hour_amt} - ${glm_property_future_fcst_f_bdgt.rbe_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_hour_amt_tobdgt_v {
    label: "Hrs RB&E Banquet TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_hour_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_hour_amt_tobdgt_v {
    label: "Hrs RB&E Catering TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_hour_amt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_hour_amt_tobdgt_v {
    label: "Hrs RB&E Outlet TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_hour_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_hour_amt_tobdgt_v {
    label: "Hrs RB&E Conference Services TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_conference_services_hour_amt} - ${glm_property_future_fcst_f_bdgt.rbe_conference_services_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_restaurant_hour_amt_tobdgt_v {
    label: "Hrs RB&E Restaurant TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_restaurant_hour_amt} - ${glm_property_future_fcst_f_bdgt.rbe_restaurant_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_lounge_hour_amt_tobdgt_v {
    label: "Hrs RB&E Lounge TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_lounge_hour_amt} - ${glm_property_future_fcst_f_bdgt.rbe_lounge_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_hour_amt_tobdgt_v {
    label: "Hrs RB&E Other TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_hour_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_hour_amt_tobdgt_v {
    label: "Hrs Spa TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_hour_amt} - ${glm_property_future_fcst_f_bdgt.spa_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_hour_amt_tobdgt_v {
    label: "Hrs Golf TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_hour_amt} - ${glm_property_future_fcst_f_bdgt.golf_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_hour_amt_tobdgt_v {
    label: "Hrs Fitness & Rec TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_hour_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_hour_amt_tobdgt_v {
    label: "Hrs Retail TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_hour_amt} - ${glm_property_future_fcst_f_bdgt.retail_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_hour_amt_tobdgt_v {
    label: "Hrs Other Op. Dept. TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_hour_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_hour_amt_tobdgt_v {
    label: "Hrs Mgmt Srvcs TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_hour_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_hour_amt_tobdgt_v {
    label: "Hrs Rentals & Other TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_hour_amt} - ${glm_property_future_fcst_f_bdgt.misc_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_hour_amt_tobdgt_v {
    label: "Hrs Nonoperating Realty TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_hour_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_hour_amt_tobdgt_v {
    label: "Hrs Nonoperating Airport TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_hour_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_hour_amt_tobdgt_v {
    label: "Hrs Nonoperating Utility TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_hour_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_hour_amt_tobdgt_v {
    label: "Hrs Undistributed TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.undistributed_hour_amt} - ${glm_property_future_fcst_f_bdgt.undistributed_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: allocated_hour_amt_tobdgt_v {
    label: "Hrs Allocated TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.allocated_hour_amt} - ${glm_property_future_fcst_f_bdgt.allocated_hour_amt} ;;
    value_format_name: decimal_0
  }


  measure: hour_amt_tobdgt {
    label: "Hrs TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_future_fcst_f_ty.hour_amt}, ${glm_property_future_fcst_f_bdgt.hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: room_hour_amt_tobdgt {
    label: "Hrs Rms TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_hour_amt}, ${glm_property_future_fcst_f_bdgt.room_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_hour_amt_tobdgt {
    label: "Hrs RB&E TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_hour_amt}, ${glm_property_future_fcst_f_bdgt.rbe_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_hour_amt_tobdgt {
    label: "Hrs RB&E Banquet TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_hour_amt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_hour_amt_tobdgt {
    label: "Hrs RB&E Catering TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_hour_amt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_hour_amt_tobdgt {
    label: "Hrs RB&E Outlet TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_hour_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_hour_amt_tobdgt {
    label: "Hrs RB&E Conference Services TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_conference_services_hour_amt}, ${glm_property_future_fcst_f_bdgt.rbe_conference_services_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_restaurant_hour_amt_tobdgt {
    label: "Hrs RB&E Restaurant TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_restaurant_hour_amt}, ${glm_property_future_fcst_f_bdgt.rbe_restaurant_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_lounge_hour_amt_tobdgt {
    label: "Hrs RB&E Lounge TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_lounge_hour_amt}, ${glm_property_future_fcst_f_bdgt.rbe_lounge_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_hour_amt_tobdgt {
    label: "Hrs RB&E Other TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_hour_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: spa_hour_amt_tobdgt {
    label: "Hrs Spa TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_hour_amt}, ${glm_property_future_fcst_f_bdgt.spa_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: golf_hour_amt_tobdgt {
    label: "Hrs Golf TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_hour_amt}, ${glm_property_future_fcst_f_bdgt.golf_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_hour_amt_tobdgt {
    label: "Hrs Fitness & Rec TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_hour_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: retail_hour_amt_tobdgt {
    label: "Hrs Retail TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_hour_amt}, ${glm_property_future_fcst_f_bdgt.retail_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: other_operated_hour_amt_tobdgt {
    label: "Hrs Other Op. Dept. TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_hour_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_hour_amt_tobdgt {
    label: "Hrs Mgmt Srvcs TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_hour_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: misc_hour_amt_tobdgt {
    label: "Hrs Rentals & Other TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_hour_amt}, ${glm_property_future_fcst_f_bdgt.misc_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_hour_amt_tobdgt {
    label: "Hrs Nonoperating Realty TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_hour_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_hour_amt_tobdgt {
    label: "Hrs Nonoperating Airport TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_hour_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_hour_amt_tobdgt {
    label: "Hrs Nonoperating Utility TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_hour_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: undistributed_hour_amt_tobdgt {
    label: "Hrs Undistributed TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.undistributed_hour_amt}, ${glm_property_future_fcst_f_bdgt.undistributed_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: allocated_hour_amt_tobdgt {
    label: "Hrs Allocated TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.allocated_hour_amt}, ${glm_property_future_fcst_f_bdgt.allocated_hour_amt} ) ;;
    value_format_name: percent_1
  }

  #-- FTE

  measure: fte_amt_tobdgt_v {
    label: "FTE TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql:  ${glm_property_future_fcst_f_ty.fte_amt} - ${glm_property_future_fcst_f_bdgt.fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_fte_amt_tobdgt_v {
    label: "FTE Rms TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_fte_amt} - ${glm_property_future_fcst_f_bdgt.room_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_fte_amt_tobdgt_v {
    label: "FTE RB&E TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql:  ${glm_property_future_fcst_f_ty.rbe_fte_amt} - ${glm_property_future_fcst_f_bdgt.rbe_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_fte_amt_tobdgt_v {
    label: "FTE RB&E Banquet TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_fte_amt} - ${glm_property_future_fcst_f_bdgt.rbe_banquet_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_fte_amt_tobdgt_v {
    label: "FTE RB&E Catering TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_fte_amt} - ${glm_property_future_fcst_f_bdgt.rbe_catering_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_fte_amt_tobdgt_v {
    label: "FTE RB&E Outlet TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_fte_amt} - ${glm_property_future_fcst_f_bdgt.rbe_outlet_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_fte_amt_tobdgt_v {
    label: "FTE RB&E Conference Services TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_conference_services_fte_amt} - ${glm_property_future_fcst_f_bdgt.rbe_conference_services_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_restaurant_fte_amt_tobdgt_v {
    label: "FTE RB&E Restaurant TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_restaurant_fte_amt} - ${glm_property_future_fcst_f_bdgt.rbe_restaurant_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_lounge_fte_amt_tobdgt_v {
    label: "FTE RB&E Lounge TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_lounge_fte_amt} - ${glm_property_future_fcst_f_bdgt.rbe_lounge_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_fte_amt_tobdgt_v {
    label: "FTE RB&E Other TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_fte_amt} - ${glm_property_future_fcst_f_bdgt.rbe_other_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_fte_amt_tobdgt_v {
    label: "FTE Spa TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_fte_amt} - ${glm_property_future_fcst_f_bdgt.spa_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_fte_amt_tobdgt_v {
    label: "FTE Golf TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_fte_amt} - ${glm_property_future_fcst_f_bdgt.golf_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_fte_amt_tobdgt_v {
    label: "FTE Fitness & Rec TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_fte_amt} - ${glm_property_future_fcst_f_bdgt.fitness_recreation_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_fte_amt_tobdgt_v {
    label: "FTE Retail TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_fte_amt} - ${glm_property_future_fcst_f_bdgt.retail_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_fte_amt_tobdgt_v {
    label: "FTE Other Op. Dept. TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_fte_amt} - ${glm_property_future_fcst_f_bdgt.other_operated_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_fte_amt_tobdgt_v {
    label: "FTE Mgmt Srvcs TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_fte_amt} - ${glm_property_future_fcst_f_bdgt.property_mgmt_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_fte_amt_tobdgt_v {
    label: "FTE Rentals & Other TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_fte_amt} - ${glm_property_future_fcst_f_bdgt.misc_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_fte_amt_tobdgt_v {
    label: "FTE Nonoperating Realty TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_fte_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_realty_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_fte_amt_tobdgt_v {
    label: "FTE Nonoperating Airport TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_fte_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_airport_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_fte_amt_tobdgt_v {
    label: "FTE Nonoperating Utility TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_fte_amt} - ${glm_property_future_fcst_f_bdgt.nonoperating_util_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_fte_amt_tobdgt_v {
    label: "FTE Undistributed TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.undistributed_fte_amt} - ${glm_property_future_fcst_f_bdgt.undistributed_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: allocated_fte_amt_tobdgt_v {
    label: "FTE Allocated TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_future_fcst_f_ty.allocated_fte_amt} - ${glm_property_future_fcst_f_bdgt.allocated_fte_amt} ;;
    value_format_name: decimal_0
  }


  measure: fte_amt_tobdgt {
    label: "FTE TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fte_amt}, ${glm_property_future_fcst_f_bdgt.fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: room_fte_amt_tobdgt {
    label: "FTE Rms TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_fte_amt}, ${glm_property_future_fcst_f_bdgt.room_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_fte_amt_tobdgt {
    label: "FTE RB&E TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_fte_amt}, ${glm_property_future_fcst_f_bdgt.rbe_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_fte_amt_tobdgt {
    label: "FTE RB&E Banquet TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_fte_amt}, ${glm_property_future_fcst_f_bdgt.rbe_banquet_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_fte_amt_tobdgt {
    label: "FTE RB&E Catering TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_fte_amt}, ${glm_property_future_fcst_f_bdgt.rbe_catering_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_fte_amt_tobdgt {
    label: "FTE RB&E Outlet TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_fte_amt}, ${glm_property_future_fcst_f_bdgt.rbe_outlet_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_fte_amt_tobdgt {
    label: "FTE RB&E Conference Services TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_conference_services_fte_amt}, ${glm_property_future_fcst_f_bdgt.rbe_conference_services_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_restaurant_fte_amt_tobdgt {
    label: "FTE RB&E Restaurant TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_restaurant_fte_amt}, ${glm_property_future_fcst_f_bdgt.rbe_restaurant_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_lounge_fte_amt_tobdgt {
    label: "FTE RB&E Lounge TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_lounge_fte_amt}, ${glm_property_future_fcst_f_bdgt.rbe_lounge_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_fte_amt_tobdgt {
    label: "FTE RB&E Other TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_fte_amt}, ${glm_property_future_fcst_f_bdgt.rbe_other_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: spa_fte_amt_tobdgt {
    label: "FTE Spa TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_fte_amt}, ${glm_property_future_fcst_f_bdgt.spa_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: golf_fte_amt_tobdgt {
    label: "FTE Golf TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_fte_amt}, ${glm_property_future_fcst_f_bdgt.golf_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_fte_amt_tobdgt {
    label: "FTE Fitness & Rec TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_fte_amt}, ${glm_property_future_fcst_f_bdgt.fitness_recreation_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: retail_fte_amt_tobdgt {
    label: "FTE Retail TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_fte_amt}, ${glm_property_future_fcst_f_bdgt.retail_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: other_operated_fte_amt_tobdgt {
    label: "FTE Other Op. Dept. TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_fte_amt}, ${glm_property_future_fcst_f_bdgt.other_operated_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_fte_amt_tobdgt {
    label: "FTE Mgmt Srvcs TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_fte_amt}, ${glm_property_future_fcst_f_bdgt.property_mgmt_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: misc_fte_amt_tobdgt {
    label: "FTE Rentals & Other TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_fte_amt}, ${glm_property_future_fcst_f_bdgt.misc_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_fte_amt_tobdgt {
    label: "FTE Nonoperating Realty TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_fte_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_realty_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_fte_amt_tobdgt {
    label: "FTE Nonoperating Airport TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_fte_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_airport_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_fte_amt_tobdgt {
    label: "FTE Nonoperating Utility TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_fte_amt}, ${glm_property_future_fcst_f_bdgt.nonoperating_util_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: undistributed_fte_amt_tobdgt {
    label: "FTE Undistributed TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.undistributed_fte_amt}, ${glm_property_future_fcst_f_bdgt.undistributed_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: allocated_fte_amt_tobdgt {
    label: "FTE Allocated TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.allocated_fte_amt}, ${glm_property_future_fcst_f_bdgt.allocated_fte_amt} ) ;;
    value_format_name: percent_1
  }

  #--
  #-- Flow

  #-- Percents:

  measure: adr_flex_flow_pct {
    label: "ADR Flex Flow %"
    description: "ADR Multiplier. If ADR < Bdgt ADR, 0.90 Flow, else 0.90 Flex."
    hidden:  yes
    type: number
    sql: case
            when ${glm_property_future_fcst_f_ty.adr_amt} > ${glm_property_future_fcst_f_bdgt.adr_amt}
            then 0.90 --flow
            else 0.90 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: rooms_occ_flex_flow_pct {
    label: "Rms Occ Flex Flow %"
    description: "Rooms Occ Multiplier. If Rms Occ < Bdgt Rms Occ, 0.65 Flow, else 0.65 Flex."
    hidden:  yes
    type: number
    sql: case
            when ${glm_property_future_fcst_f_ty.occupied_room_cnt} > ${glm_property_future_fcst_f_bdgt.occupied_room_cnt}
            then 0.65 --flow
            else 0.65 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_catering_conference_flex_flow_pct {
    label: "RB&E Banquet, Catering, Conference Flex Flow %"
    description: "RB&E Multiplier. If Rev $ < Bdgt Rev $, 0.50 Flow, else 0.50 Flex."
    hidden:  yes
    type: number
    sql: case
            when (${glm_property_future_fcst_f_ty.rbe_banquet_rev_amt}
                + ${glm_property_future_fcst_f_ty.rbe_catering_rev_amt}
                + ${glm_property_future_fcst_f_ty.rbe_conference_services_rev_amt})
              >
               (${glm_property_future_fcst_f_bdgt.rbe_banquet_rev_amt}
              + ${glm_property_future_fcst_f_bdgt.rbe_catering_rev_amt}
              + ${glm_property_future_fcst_f_bdgt.rbe_conference_services_rev_amt})
            then 0.50 --flow
            else 0.50 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_other_flex_flow_pct {
    label: "RB&E Outlet, Other Flex Flow %"
    description: "RB&E Outlet, Other Multiplier. If Rev $ < Bdgt Rev $, 0.30 Flow, else 0.75 Flex."
    hidden:  yes
    type: number
    sql: case
            when (${glm_property_future_fcst_f_ty.rbe_outlet_rev_amt}
                + ${glm_property_future_fcst_f_ty.rbe_other_rev_amt})
                >
                 (${glm_property_future_fcst_f_bdgt.rbe_outlet_rev_amt}
                + ${glm_property_future_fcst_f_bdgt.rbe_other_rev_amt})
            then 0.30 --flow
            else 0.75 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: spa_fitness_recreation_flex_flow_pct {
    label: "Spa, Fitness & Rec Flex Flow %"
    description: "Spa, Fitness & Rec Multiplier. If Rev $ < Bdgt Rev $, 0.30 Flow, else 0.30 Flex."
    hidden:  yes
    type: number
    sql: case
            when (${glm_property_future_fcst_f_ty.spa_rev_amt}
                + ${glm_property_future_fcst_f_ty.fitness_recreation_rev_amt})
                >
                 (${glm_property_future_fcst_f_bdgt.spa_rev_amt}
                + ${glm_property_future_fcst_f_bdgt.fitness_recreation_rev_amt})
            then 0.30 --flow
            else 0.30 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: golf_flex_flow_pct {
    label: "Golf Flex Flow %"
    description: "Golf Multiplier. If Rev $ < Bdgt Rev $, 0.90 Flow, else 0.90 Flex."
    hidden:  yes
    type: number
    sql: case
            when ${glm_property_future_fcst_f_ty.golf_rev_amt} > ${glm_property_future_fcst_f_bdgt.golf_rev_amt}
            then 0.90 --flow
            else 0.90 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: retail_flex_flow_pct {
    label: "Retail Flex Flow %"
    description: "Retail Multiplier. If Rev $ < Bdgt Rev $, 0.50 Flow, else 0.50 Flex."
    hidden:  yes
    type: number
    sql: case
            when ${glm_property_future_fcst_f_ty.retail_rev_amt}>${glm_property_future_fcst_f_bdgt.retail_rev_amt}
            then 0.50 --flow
            else 0.50 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: other_operated_flex_flow_pct {
    label: "Other Op. Dept. Flex Flow %"
    description: "Retail Multiplier. If Rev $ < Bdgt Rev $, 0.70 Flow, else 0.70 Flex."
    hidden:  yes
    type: number
    sql: case
            when ${glm_property_future_fcst_f_ty.other_operated_rev_amt}> ${glm_property_future_fcst_f_bdgt.other_operated_rev_amt}
            then 0.70 --flow
            else 0.70 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_flex_flow_pct {
    label: "Mgmt Srvcs Flex Flow %"
    description: "Mgmt Srvcs Multiplier. If Rev $ < Bdgt Rev $, 0.70 Flow, else 0.70 Flex."
    hidden:  yes
    type: number
    sql: case
            when ${glm_property_future_fcst_f_ty.property_mgmt_rev_amt} > ${glm_property_future_fcst_f_bdgt.property_mgmt_rev_amt}
            then 0.70 --flow
            else 0.70 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_airport_flex_flow_pct {
    label: "Nonoperating Realty & Airport Flex Flow %"
    description: "Nonoperating Realty & Airport Multiplier. If Rev $ < Bdgt Rev $, 0.10 Flow, else 0.45 Flex."
    hidden:  yes
    type: number
    sql: case
            when (${glm_property_future_fcst_f_ty.nonoperating_realty_rev_amt}
                + ${glm_property_future_fcst_f_ty.nonoperating_airport_rev_amt})
                >
                (${glm_property_future_fcst_f_bdgt.nonoperating_realty_rev_amt}
                +${glm_property_future_fcst_f_bdgt.nonoperating_airport_rev_amt})
            then 0.10 --flow
            else 0.45 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_flex_flow_pct {
    label: "Nonoperating Util Flex Flow %"
    description: "Nonoperating Util Multiplier. If Rev $ < Bdgt Rev $, 0.80 Flow, else 0.80 Flex."
    hidden:  yes
    type: number
    sql: case
            when ${glm_property_future_fcst_f_ty.nonoperating_util_rev_amt}>${glm_property_future_fcst_f_bdgt.nonoperating_util_rev_amt}
            then 0.80 --flow
            else 0.80 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: misc_flex_flow_pct {
    label: "Rentals & Other Flex Flow %"
    description: "Rentals & Other (Misc) Multiplier. If Rev $ < Bdgt Rev $, 1.00 Flow, else 1.00 Flex."
    hidden:  yes
    type: number
    sql: case
            when ${glm_property_future_fcst_f_ty.misc_rev_amt} > ${glm_property_future_fcst_f_bdgt.misc_rev_amt}
            then 1.00 --flow
            else 1.00 --flex
         end ;;
    value_format_name: percent_1
  }

  measure: undistributed_flex_flow_pct {
    label: "Undistributed Flex Flow %"
    description: "Undistributed Multiplier. If Rev $ < Bdgt Rev $, -0.05 Flow, else -0.05 Flex."
    hidden:  yes
    type: number
    sql: case
            when ${glm_property_future_fcst_f_ty.rev_amt} > ${glm_property_future_fcst_f_bdgt.rev_amt}
            then -0.05 --flow
            else -0.05 --flex
         end ;;
    value_format_name: percent_1
  }

  #-- profit impacts

  measure: adr_profit_impact_amt {
    label: "ADR Profit Impact $"
    description: "(TY ADR - BDGT ADR) * TY Rms Occ * Flex"
    hidden:  yes
    type: number
    sql: ( ${adr_amt_tobdgt_v} * ${glm_property_future_fcst_f_ty.occupied_room_cnt} ) * ${adr_flex_flow_pct};;
    value_format_name: usd_0
  }

  measure: rooms_occ_profit_impact_amt {
    label: "Rms Occ Profit Impact $"
    description: "(TY Occ - BDGT Occ) * TY ADR * Flex"
    hidden:  yes
    type: number
    sql: ( ${occupied_room_cnt_tobdgt_v} * ${glm_property_future_fcst_f_ty.adr_amt} ) * ${rooms_occ_flex_flow_pct};;
    value_format_name: usd_0
  }

  measure: rbe_banquet_catering_conference_optimal_amt {
    label: "RB&E Banquet, Catering, Conference Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.rbe_banquet_rev_amt}
          +${glm_property_future_fcst_f_ty.rbe_catering_rev_amt}
          +${glm_property_future_fcst_f_ty.rbe_conference_services_rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.rbe_banquet_rev_amt}
          +${glm_property_future_fcst_f_bdgt.rbe_catering_rev_amt}
          +${glm_property_future_fcst_f_bdgt.rbe_conference_services_rev_amt}
          )) *
          ${rbe_banquet_catering_conference_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.rbe_banquet_profit_amt}
          +${glm_property_future_fcst_f_bdgt.rbe_catering_profit_amt}
          +${glm_property_future_fcst_f_bdgt.rbe_conference_services_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_other_optimal_amt {
    label: "RB&E Outlet, Other Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.rbe_outlet_rev_amt}
          +${glm_property_future_fcst_f_ty.rbe_other_rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.rbe_outlet_rev_amt}
          +${glm_property_future_fcst_f_bdgt.rbe_other_rev_amt}
          )) *
          ${rbe_outlet_other_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.rbe_outlet_profit_amt}
          +${glm_property_future_fcst_f_bdgt.rbe_other_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  measure: spa_fitness_recreation_optimal_amt {
    label: "Spa, Fitness & Rec Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.spa_rev_amt}
          +${glm_property_future_fcst_f_ty.fitness_recreation_rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.spa_rev_amt}
          +${glm_property_future_fcst_f_bdgt.fitness_recreation_rev_amt}
          )) *
          ${spa_fitness_recreation_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.spa_profit_amt}
          +${glm_property_future_fcst_f_bdgt.fitness_recreation_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  measure: golf_optimal_amt {
    label: "Golf Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.golf_rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.golf_rev_amt}
          )) *
          ${golf_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.golf_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  measure: retail_optimal_amt {
    label: "Retail Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.retail_rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.retail_rev_amt}
          )) *
          ${retail_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.retail_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_optimal_amt {
    label: "Other Operated Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.other_operated_rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.other_operated_rev_amt}
          )) *
          ${other_operated_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.other_operated_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_optimal_amt {
    label: "Mgmt Srvcs Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.property_mgmt_rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.property_mgmt_rev_amt}
          )) *
          ${property_mgmt_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.property_mgmt_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_airport_optimal_amt {
    label: "Nonoperating Realty Airport Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: ((
          (${glm_property_future_fcst_f_ty.nonoperating_realty_rev_amt}
          +${glm_property_future_fcst_f_ty.nonoperating_airport_rev_amt})
          -
           (${glm_property_future_fcst_f_bdgt.nonoperating_realty_rev_amt}
           +${glm_property_future_fcst_f_bdgt.nonoperating_airport_rev_amt})
          ) *
                ${nonoperating_realty_airport_flex_flow_pct})
                + (${glm_property_future_fcst_f_bdgt.nonoperating_realty_profit_amt}
                     + ${glm_property_future_fcst_f_bdgt.nonoperating_airport_profit_amt})
                 ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_optimal_amt {
    label: "Nonoperating Util Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.nonoperating_util_rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.nonoperating_util_rev_amt}
          )) *
          ${nonoperating_util_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.nonoperating_util_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  measure: misc_optimal_amt {
    label: "Rental & Other Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.misc_rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.misc_rev_amt}
          )) *
          ${misc_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.misc_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  measure: undistributed_optimal_amt {
    label: "Undistributed Optimal $"
    description: "(TY - BDGT ) * Flex + BDGT Profit"
    hidden:  yes
    type: number
    sql: (((${glm_property_future_fcst_f_ty.rev_amt}
          ) -
          (${glm_property_future_fcst_f_bdgt.rev_amt}
          )) *
          ${undistributed_flex_flow_pct})
          + (${glm_property_future_fcst_f_bdgt.undistributed_profit_amt}
          ) ;;
    value_format_name: usd_0
  }

  # Actual to Optimals

  measure: rbe_banquet_catering_conference_toopt_v {
    label: "RB&E Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.rbe_banquet_profit_amt}
          +${glm_property_future_fcst_f_ty.rbe_catering_profit_amt}
          +${glm_property_future_fcst_f_ty.rbe_conference_services_profit_amt})
          -
          (${rbe_banquet_catering_conference_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_other_toopt_v {
    label: "RB&E Outlet Other Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.rbe_outlet_profit_amt}
          +${glm_property_future_fcst_f_ty.rbe_other_profit_amt}
          )
          -
          (${rbe_outlet_other_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }

  measure: spa_fitness_recreation_toopt_v {
    label: "Spa, Fitness & Rec Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.spa_profit_amt}
          +${glm_property_future_fcst_f_ty.fitness_recreation_profit_amt}
          )
          -
          (${spa_fitness_recreation_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }

  measure: golf_toopt_v {
    label: "Golf Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.golf_profit_amt}
          )
          -
          (${golf_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }

  measure: retail_toopt_v {
    label: "Retail Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.retail_profit_amt}
          )
          -
          (${retail_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }

  measure: other_operated_toopt_v {
    label: "Other Op. Dept. Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.other_operated_profit_amt}
          )
          -
          (${other_operated_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_toopt_v {
    label: "Mgmt Srvcs Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.property_mgmt_profit_amt}
          )
          -
          (${property_mgmt_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }


  measure: nonoperating_realty_airport_toopt_v {
    label: "Nonoperating Realty Airport Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.nonoperating_realty_profit_amt}
          +${glm_property_future_fcst_f_ty.nonoperating_airport_profit_amt}
                )
                -
                (${nonoperating_realty_airport_optimal_amt}
                )
                ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_toopt_v {
    label: "Nonoperating Util Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.nonoperating_util_profit_amt}
          )
          -
          (${nonoperating_util_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }

  measure: misc_toopt_v {
    label: "Rental & Other Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.misc_profit_amt}
          )
          -
          (${misc_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }

  measure: undistributed_toopt_v {
    label: "Undistributed Profit TY:Opt - var"
    description: "TY - Opt"
    hidden:  yes
    type: number
    sql: (${glm_property_future_fcst_f_ty.undistributed_profit_amt}
          )
          -
          (${undistributed_optimal_amt}
          )
          ;;
    value_format_name: decimal_0
  }

  #-- Optimals

  measure: optimal_amt {
    label: "Optimal Amt"
    description: "Sum of Opt Amts"
    hidden:  yes
    type: number
    sql: (${rbe_banquet_catering_conference_optimal_amt}
          +${rbe_outlet_other_optimal_amt}
          +${spa_fitness_recreation_optimal_amt}
          +${golf_optimal_amt}
          +${retail_optimal_amt}
          +${other_operated_optimal_amt}
          +${property_mgmt_optimal_amt}
          +${nonoperating_realty_airport_optimal_amt}
          +${nonoperating_util_optimal_amt}
          +${misc_optimal_amt}
          +${undistributed_optimal_amt}
                )
                ;;
    value_format_name: decimal_0
  }

  measure: optimal_var_amt {
    label: "Optimal Amt - var"
    description: "Sum of Opt Var"
    hidden:  yes
    type: number
    sql: (${rbe_banquet_catering_conference_toopt_v}
        +${rbe_outlet_other_toopt_v}
        +${spa_fitness_recreation_toopt_v}
        +${golf_toopt_v}
        +${retail_toopt_v}
        +${other_operated_toopt_v}
        +${property_mgmt_toopt_v}
        +${nonoperating_realty_airport_toopt_v}
        +${nonoperating_util_toopt_v}
        +${misc_toopt_v}
        +${undistributed_toopt_v}
                )
                ;;
    value_format_name: decimal_0
  }

  measure: flow_var_pct {
    label: "Flow Act:Opt %"
    description: "Flow Percent (Actual to Optimal)"
    hidden:  no
    type: number
    sql: case
             when (${optimal_amt}
             + ( ${adr_profit_impact_amt} + ${rooms_occ_profit_impact_amt} + ${glm_property_future_fcst_f_bdgt.room_profit_amt} ) )
             < 0
             then ( ${optimal_var_amt} + ( ${glm_property_future_fcst_f_ty.room_profit_amt} - ( ${adr_profit_impact_amt} + ${rooms_occ_profit_impact_amt} + ${glm_property_future_fcst_f_bdgt.room_profit_amt} )))
                        / ( -1 * nullif( ${optimal_amt} + ( ${adr_profit_impact_amt} + ${rooms_occ_profit_impact_amt} + ${glm_property_future_fcst_f_bdgt.room_profit_amt} ) , 0 ))
             else ( ${optimal_var_amt} + ( ${glm_property_future_fcst_f_ty.room_profit_amt} - ( ${adr_profit_impact_amt} + ${rooms_occ_profit_impact_amt} + ${glm_property_future_fcst_f_bdgt.room_profit_amt} )))
                        / (  1 * nullif( ${optimal_amt} + ( ${adr_profit_impact_amt} + ${rooms_occ_profit_impact_amt} + ${glm_property_future_fcst_f_bdgt.room_profit_amt} ) , 0 ))
          end ;;
    value_format_name: percent_1
  }

}
