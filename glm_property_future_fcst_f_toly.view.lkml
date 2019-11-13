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

  measure: rev_amt_toly_v {
    label: "Rev $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_amt} - ${glm_property_future_fcst_f_ly.rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: agop_amt_toly_v {
    label: "AGOP $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.agop_amt} - ${glm_property_future_fcst_f_ly.agop_amt} ;;
    value_format_name: decimal_0
  }

  measure: gop_amt_toly_v {
    label: "GOP $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.gop_amt} - ${glm_property_future_fcst_f_ly.gop_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_rev_amt_toly_v {
    label: "Rev Rms $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_rev_amt} - ${glm_property_future_fcst_f_ly.room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_rev_amt_toly_v {
    label: "Rev Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_rev_amt} - ${glm_property_future_fcst_f_ly.other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_rev_amt_toly_v {
    label: "Rev RB&E $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_rev_amt_toly_v {
    label: "Rev RB&E Banquet $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_rev_amt_toly_v {
    label: "Rev RB&E Catering $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_rev_amt_toly_v {
    label: "Rev RB&E Conference Services $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_rev_amt_toly_v {
    label: "Rev RB&E Outlet $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_rev_amt_toly_v {
    label: "Rev RB&E Room Service $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_rev_amt_toly_v {
    label: "Rev RB&E Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_rev_amt_toly_v {
    label: "Rev Food RB&E $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_banquet_rev_amt_toly_v {
    label: "Rev Food RB&E Banquet $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_catering_rev_amt_toly_v {
    label: "Rev Food RB&E Catering $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_catering_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_conference_services_rev_amt_toly_v {
    label: "Rev Food RB&E Conference Services $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_outlet_rev_amt_toly_v {
    label: "Rev Food RB&E Outlet $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_room_service_rev_amt_toly_v {
    label: "Rev Food RB&E Room Service $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_other_rev_amt_toly_v {
    label: "Rev Food RB&E Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.food_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_rev_amt_toly_v {
    label: "Rev Beverage RB&E $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_banquet_rev_amt_toly_v {
    label: "Rev Beverage RB&E Banquet $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_banquet_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_catering_rev_amt_toly_v {
    label: "Rev Beverage RB&E Catering $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_catering_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_conference_services_rev_amt_toly_v {
    label: "Rev Beverage RB&E Conference Services $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_conference_services_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_outlet_rev_amt_toly_v {
    label: "Rev Beverage RB&E Outlet $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_outlet_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_room_service_rev_amt_toly_v {
    label: "Rev Beverage RB&E Room Service $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_other_rev_amt_toly_v {
    label: "Rev Beverage RB&E Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_other_rev_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_rev_amt_toly_v {
    label: "Rev Spa $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_rev_amt} - ${glm_property_future_fcst_f_ly.spa_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_rev_amt_toly_v {
    label: "Rev Golf $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_rev_amt} - ${glm_property_future_fcst_f_ly.golf_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_rev_amt_toly_v {
    label: "Rev Fitness & Rec $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_rev_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_rev_amt_toly_v {
    label: "Rev Parking & Trans $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_rev_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_rev_amt_toly_v {
    label: "Rev Telecom $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_rev_amt} - ${glm_property_future_fcst_f_ly.telecom_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_rev_amt_toly_v {
    label: "Rev Retail $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_rev_amt} - ${glm_property_future_fcst_f_ly.retail_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_rev_amt_toly_v {
    label: "Rev Other Op. Dept. $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_rev_amt} - ${glm_property_future_fcst_f_ly.other_operated_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_rev_amt_toly_v {
    label: "Rev Mgmt Srvcs $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_rev_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_rev_amt_toly_v {
    label: "Rev Rentals & Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_rev_amt} - ${glm_property_future_fcst_f_ly.misc_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_rev_amt_toly_v {
    label: "Rev Nonoperating Realty $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_rev_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_rev_amt_toly_v {
    label: "Rev Nonoperating Airport $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_rev_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_rev_amt_toly_v {
    label: "Rev Nonoperating Utility $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_rev_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_rev_amt} ;;
    value_format_name: decimal_0
  }

  #-- Rev % var

  measure: rev_amt_toly {
    label: "Rev $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_amt}, ${glm_property_future_fcst_f_ly.rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: agop_amt_toly {
    label: "AGOP $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.agop_amt}, ${glm_property_future_fcst_f_ly.agop_amt}) ;;
    value_format_name: percent_1
  }

  measure: gop_amt_toly {
    label: "GOP $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.gop_amt}, ${glm_property_future_fcst_f_ly.gop_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_rev_amt_toly {
    label: "Rev Rms $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_rev_amt}, ${glm_property_future_fcst_f_ly.room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_rev_amt_toly {
    label: "Rev Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_rev_amt}, ${glm_property_future_fcst_f_ly.other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_rev_amt_toly {
    label: "Rev RB&E $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_rev_amt_toly {
    label: "Rev RB&E Banquet $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_rev_amt_toly {
    label: "Rev RB&E Catering $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_rev_amt_toly {
    label: "Rev RB&E Conference Services $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_rev_amt_toly {
    label: "Rev RB&E Outlet $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_rev_amt_toly {
    label: "Rev RB&E Room Service $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_rev_amt_toly {
    label: "Rev RB&E Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_rev_amt_toly {
    label: "Rev Food RB&E $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_banquet_rev_amt_toly {
    label: "Rev Food RB&E Banquet $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_catering_rev_amt_toly {
    label: "Rev Food RB&E Catering $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_catering_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_conference_services_rev_amt_toly {
    label: "Rev Food RB&E Conference Services $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_outlet_rev_amt_toly {
    label: "Rev Food RB&E Outlet $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_room_service_rev_amt_toly {
    label: "Rev Food RB&E Room Service $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_other_rev_amt_toly {
    label: "Rev Food RB&E Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.food_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_rev_amt_toly {
    label: "Rev Beverage RB&E $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_banquet_rev_amt_toly {
    label: "Rev Beverage RB&E Banquet $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_banquet_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_catering_rev_amt_toly {
    label: "Rev Beverage RB&E Catering $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_catering_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_conference_services_rev_amt_toly {
    label: "Rev Beverage RB&E Conference Services $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_conference_services_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_outlet_rev_amt_toly {
    label: "Rev Beverage RB&E Outlet $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_outlet_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_room_service_rev_amt_toly {
    label: "Rev Beverage RB&E Room Service $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_other_rev_amt_toly {
    label: "Rev Beverage RB&E Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_other_rev_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_rev_amt_toly {
    label: "Rev Spa $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_rev_amt}, ${glm_property_future_fcst_f_ly.spa_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_amt_toly {
    label: "Rev Golf $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_rev_amt}, ${glm_property_future_fcst_f_ly.golf_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_rev_amt_toly {
    label: "Rev Fitness & Rec $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_rev_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_rev_amt_toly {
    label: "Rev Parking & Trans $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_rev_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_rev_amt_toly {
    label: "Rev Telecom $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_rev_amt}, ${glm_property_future_fcst_f_ly.telecom_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_rev_amt_toly {
    label: "Rev Retail $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_rev_amt}, ${glm_property_future_fcst_f_ly.retail_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_rev_amt_toly {
    label: "Rev Other Op. Dept. $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_rev_amt}, ${glm_property_future_fcst_f_ly.other_operated_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_rev_amt_toly {
    label: "Rev Mgmt Srvcs $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_rev_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_rev_amt_toly {
    label: "Rev Rentals & Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_rev_amt}, ${glm_property_future_fcst_f_ly.misc_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_rev_amt_toly {
    label: "Rev Nonoperating Realty $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_rev_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_rev_amt_toly {
    label: "Rev Nonoperating Airport $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_rev_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_rev_amt_toly {
    label: "Rev Nonoperating Utility $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_rev_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Expenses

  measure: exp_amt_toly_v {
    label: "Exp $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.exp_amt} - ${glm_property_future_fcst_f_ly.exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_exp_amt_toly_v {
    label: "Exp Rms $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_exp_amt} - ${glm_property_future_fcst_f_ly.room_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_exp_amt_toly_v {
    label: "Exp RB&E $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_exp_amt} - ${glm_property_future_fcst_f_ly.rbe_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_exp_amt_toly_v {
    label: "Exp Spa $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_exp_amt} - ${glm_property_future_fcst_f_ly.spa_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_exp_amt_toly_v {
    label: "Exp Golf $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_exp_amt} - ${glm_property_future_fcst_f_ly.golf_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_exp_amt_toly_v {
    label: "Exp Fitness & Rec $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_exp_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_exp_amt_toly_v {
    label: "Exp Parking & Trans $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_exp_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_exp_amt_toly_v {
    label: "Exp Telecom $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_exp_amt} - ${glm_property_future_fcst_f_ly.telecom_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_exp_amt_toly_v {
    label: "Exp Retail $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_exp_amt} - ${glm_property_future_fcst_f_ly.retail_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_exp_amt_toly_v {
    label: "Exp Other Op. Dept. $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_exp_amt} - ${glm_property_future_fcst_f_ly.other_operated_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_exp_amt_toly_v {
    label: "Exp Mgmt Srvcs $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_exp_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_exp_amt_toly_v {
    label: "Exp A&G $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.administrative_general_exp_amt} - ${glm_property_future_fcst_f_ly.administrative_general_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_exp_amt_toly_v {
    label: "Exp IT $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.information_technology_exp_amt} - ${glm_property_future_fcst_f_ly.information_technology_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_exp_amt_toly_v {
    label: "Exp S&M $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.sales_marketing_exp_amt} - ${glm_property_future_fcst_f_ly.sales_marketing_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_exp_amt_toly_v {
    label: "Exp R&M $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_operations_maintenance_exp_amt} - ${glm_property_future_fcst_f_ly.property_operations_maintenance_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_exp_amt_toly_v {
    label: "Exp Rentals & Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_exp_amt} - ${glm_property_future_fcst_f_ly.misc_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_exp_amt_toly_v {
    label: "Exp Nonoperating Realty $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_exp_amt_toly_v {
    label: "Exp Nonoperating Airport $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_exp_amt_toly_v {
    label: "Exp Nonoperating Utility $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Expenses % var

  measure: exp_amt_toly {
    label: "Exp $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.exp_amt}, ${glm_property_future_fcst_f_ly.exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_exp_amt_toly {
    label: "Exp Rms $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_exp_amt}, ${glm_property_future_fcst_f_ly.room_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_exp_amt_toly {
    label: "Exp RB&E $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_exp_amt}, ${glm_property_future_fcst_f_ly.rbe_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_exp_amt_toly {
    label: "Exp Spa $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_exp_amt}, ${glm_property_future_fcst_f_ly.spa_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_exp_amt_toly {
    label: "Exp Golf $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_exp_amt}, ${glm_property_future_fcst_f_ly.golf_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_exp_amt_toly {
    label: "Exp Fitness & Rec $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_exp_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_exp_amt_toly {
    label: "Exp Parking & Trans $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_exp_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_exp_amt_toly {
    label: "Exp Telecom $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_exp_amt}, ${glm_property_future_fcst_f_ly.telecom_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_exp_amt_toly {
    label: "Exp Retail $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_exp_amt}, ${glm_property_future_fcst_f_ly.retail_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_exp_amt_toly {
    label: "Exp Other Op. Dept. $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_exp_amt}, ${glm_property_future_fcst_f_ly.other_operated_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_exp_amt_toly {
    label: "Exp Mgmt Srvcs $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_exp_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_exp_amt_toly {
    label: "Exp A&G $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.administrative_general_exp_amt}, ${glm_property_future_fcst_f_ly.administrative_general_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_exp_amt_toly {
    label: "Exp IT $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.information_technology_exp_amt}, ${glm_property_future_fcst_f_ly.information_technology_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_exp_amt_toly {
    label: "Exp S&M $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.sales_marketing_exp_amt}, ${glm_property_future_fcst_f_ly.sales_marketing_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_exp_amt_toly {
    label: "Exp R&M $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_operations_maintenance_exp_amt}, ${glm_property_future_fcst_f_ly.property_operations_maintenance_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_exp_amt_toly {
    label: "Exp Rentals & Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_exp_amt}, ${glm_property_future_fcst_f_ly.misc_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_exp_amt_toly {
    label: "Exp Nonoperating Realty $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_exp_amt_toly {
    label: "Exp Nonoperating Airport $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_exp_amt_toly {
    label: "Exp Nonoperating Utility $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Other Expenses

  measure: other_exp_amt_toly_v {
    label: "Exp Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_exp_amt} - ${glm_property_future_fcst_f_ly.other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_other_exp_amt_toly_v {
    label: "Exp Other Rms $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_other_exp_amt} - ${glm_property_future_fcst_f_ly.room_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_exp_amt_toly_v {
    label: "Exp Other RB&E $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_exp_amt} - ${glm_property_future_fcst_f_ly.rbe_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_other_exp_amt_toly_v {
    label: "Exp Other Spa $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_other_exp_amt} - ${glm_property_future_fcst_f_ly.spa_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_other_exp_amt_toly_v {
    label: "Exp Other Golf $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_other_exp_amt} - ${glm_property_future_fcst_f_ly.golf_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_other_exp_amt_toly_v {
    label: "Exp Other Fitness & Rec $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_other_exp_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_other_exp_amt_toly_v {
    label: "Exp Other Parking & Trans $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_other_exp_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_other_exp_amt_toly_v {
    label: "Exp Other Telecom $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_other_exp_amt} - ${glm_property_future_fcst_f_ly.telecom_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_other_exp_amt_toly_v {
    label: "Exp Other Retail $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_other_exp_amt} - ${glm_property_future_fcst_f_ly.retail_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_other_exp_amt_toly_v {
    label: "Exp Other Other Op. Dept. $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_other_exp_amt} - ${glm_property_future_fcst_f_ly.other_operated_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_other_exp_amt_toly_v {
    label: "Exp Other Mgmt Srvcs $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_other_exp_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_other_exp_amt_toly_v {
    label: "Exp Other A&G $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.administrative_general_other_exp_amt} - ${glm_property_future_fcst_f_ly.administrative_general_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_other_exp_amt_toly_v {
    label: "Exp Other IT $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.information_technology_other_exp_amt} - ${glm_property_future_fcst_f_ly.information_technology_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_other_exp_amt_toly_v {
    label: "Exp Other S&M $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.sales_marketing_other_exp_amt} - ${glm_property_future_fcst_f_ly.sales_marketing_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_other_exp_amt_toly_v {
    label: "Exp Other R&M $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_operations_maintenance_other_exp_amt} - ${glm_property_future_fcst_f_ly.property_operations_maintenance_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_other_exp_amt_toly_v {
    label: "Exp Other Rentals & Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_other_exp_amt} - ${glm_property_future_fcst_f_ly.misc_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_other_exp_amt_toly_v {
    label: "Exp Other Nonoperating Realty $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_other_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_other_exp_amt_toly_v {
    label: "Exp Other Nonoperating Airport $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_other_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_other_exp_amt_toly_v {
    label: "Exp Other Nonoperating Utility $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_other_exp_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Other Expenses % var

  measure: other_exp_amt_toly {
    label: "Exp Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_exp_amt}, ${glm_property_future_fcst_f_ly.other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_other_exp_amt_toly {
    label: "Exp Other Rms $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_other_exp_amt}, ${glm_property_future_fcst_f_ly.room_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_amt_toly {
    label: "Exp Other RB&E $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_exp_amt}, ${glm_property_future_fcst_f_ly.rbe_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_other_exp_amt_toly {
    label: "Exp Other Spa $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_other_exp_amt}, ${glm_property_future_fcst_f_ly.spa_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_other_exp_amt_toly {
    label: "Exp Other Golf $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_other_exp_amt}, ${glm_property_future_fcst_f_ly.golf_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_amt_toly {
    label: "Exp Other Fitness & Rec $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_other_exp_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_amt_toly {
    label: "Exp Other Parking & Trans $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_other_exp_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_amt_toly {
    label: "Exp Other Telecom $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_other_exp_amt}, ${glm_property_future_fcst_f_ly.telecom_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_other_exp_amt_toly {
    label: "Exp Other Retail $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_other_exp_amt}, ${glm_property_future_fcst_f_ly.retail_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_amt_toly {
    label: "Exp Other Other Op. Dept. $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_other_exp_amt}, ${glm_property_future_fcst_f_ly.other_operated_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_amt_toly {
    label: "Exp Other Mgmt Srvcs $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_other_exp_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_other_exp_amt_toly {
    label: "Exp Other A&G $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.administrative_general_other_exp_amt}, ${glm_property_future_fcst_f_ly.administrative_general_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_other_exp_amt_toly {
    label: "Exp Other IT $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.information_technology_other_exp_amt}, ${glm_property_future_fcst_f_ly.information_technology_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_other_exp_amt_toly {
    label: "Exp Other S&M $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.sales_marketing_other_exp_amt}, ${glm_property_future_fcst_f_ly.sales_marketing_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_other_exp_amt_toly {
    label: "Exp Other R&M $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_operations_maintenance_other_exp_amt}, ${glm_property_future_fcst_f_ly.property_operations_maintenance_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_other_exp_amt_toly {
    label: "Exp Other Rentals & Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_other_exp_amt}, ${glm_property_future_fcst_f_ly.misc_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_realty_other_exp_amt_toly {
    label: "Exp Other Nonoperating Realty $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_other_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_airport_other_exp_amt_toly {
    label: "Exp Other Nonoperating Airport $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_other_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure:nonoperating_util_other_exp_amt_toly {
    label: "Exp Other Nonoperating Utility $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_other_exp_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll

#   measure: payroll_amt_toly_v {
#     label: "Payroll $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.payroll_amt} - ${glm_property_future_fcst_f_ly.payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: room_payroll_amt_toly_v {
#     label: "Payroll Rms $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.room_payroll_amt} - ${glm_property_future_fcst_f_ly.room_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: rbe_payroll_amt_toly_v {
#     label: "Payroll RB&E $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.rbe_payroll_amt} - ${glm_property_future_fcst_f_ly.rbe_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: spa_payroll_amt_toly_v {
#     label: "Payroll Spa $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.spa_payroll_amt} - ${glm_property_future_fcst_f_ly.spa_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: golf_payroll_amt_toly_v {
#     label: "Payroll Golf $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.golf_payroll_amt} - ${glm_property_future_fcst_f_ly.golf_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: fitness_recreation_payroll_amt_toly_v {
#     label: "Payroll Fitness & Rec $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.fitness_recreation_payroll_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: parking_transportation_payroll_amt_toly_v {
#     label: "Payroll Parking & Trans $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.parking_transportation_payroll_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: telecom_payroll_amt_toly_v {
#     label: "Payroll Telecom $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.telecom_payroll_amt} - ${glm_property_future_fcst_f_ly.telecom_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: retail_payroll_amt_toly_v {
#     label: "Payroll Retail $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.retail_payroll_amt} - ${glm_property_future_fcst_f_ly.retail_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: other_operated_payroll_amt_toly_v {
#     label: "Payroll Other Op. Dept. $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.other_operated_payroll_amt} - ${glm_property_future_fcst_f_ly.other_operated_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: property_mgmt_payroll_amt_toly_v {
#     label: "Payroll Mgmt Srvcs $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.property_mgmt_payroll_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: administrative_general_payroll_amt_toly_v {
#     label: "Payroll A&G $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.administrative_general_payroll_amt} - ${glm_property_future_fcst_f_ly.administrative_general_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: information_technology_payroll_amt_toly_v {
#     label: "Payroll IT $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.information_technology_payroll_amt} - ${glm_property_future_fcst_f_ly.information_technology_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: sales_marketing_payroll_amt_toly_v {
#     label: "Payroll S&M $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.sales_marketing_payroll_amt} - ${glm_property_future_fcst_f_ly.sales_marketing_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: property_operations_maintenance_payroll_amt_toly_v {
#     label: "Payroll R&M $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.property_operations_maintenance_payroll_amt} - ${glm_property_future_fcst_f_ly.property_operations_maintenance_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: misc_payroll_amt_toly_v {
#     label: "Payroll Rentals & Other $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.misc_payroll_amt} - ${glm_property_future_fcst_f_ly.misc_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: nonoperating_realty_payroll_amt_toly_v {
#     label: "Payroll Nonoperating Realty $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_payroll_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: nonoperating_airport_payroll_amt_toly_v {
#     label: "Payroll Nonoperating Airport $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_payroll_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: nonoperating_util_payroll_amt_toly_v {
#     label: "Payroll Nonoperating Utility $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.nonoperating_util_payroll_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   measure: rbe_outlet_payroll_amt_toly_v {
#     label: "Payroll RB&E Outlet $ TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.rbe_outlet_payroll_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_payroll_amt} ;;
#     value_format_name: decimal_0
#   }
#
#   #-- Payroll % var
#
#   measure: payroll_amt_toly {
#     label: "Payroll $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.payroll_amt}, ${glm_property_future_fcst_f_ly.payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: room_payroll_amt_toly {
#     label: "Payroll Rms $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_payroll_amt}, ${glm_property_future_fcst_f_ly.room_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: rbe_payroll_amt_toly {
#     label: "Payroll RB&E $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_payroll_amt}, ${glm_property_future_fcst_f_ly.rbe_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: spa_payroll_amt_toly {
#     label: "Payroll Spa $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_payroll_amt}, ${glm_property_future_fcst_f_ly.spa_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: golf_payroll_amt_toly {
#     label: "Payroll Golf $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_payroll_amt}, ${glm_property_future_fcst_f_ly.golf_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: fitness_recreation_payroll_amt_toly {
#     label: "Payroll Fitness & Rec $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_payroll_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: parking_transportation_payroll_amt_toly {
#     label: "Payroll Parking & Trans $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_payroll_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: telecom_payroll_amt_toly {
#     label: "Payroll Telecom $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_payroll_amt}, ${glm_property_future_fcst_f_ly.telecom_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: retail_payroll_amt_toly {
#     label: "Payroll Retail $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_payroll_amt}, ${glm_property_future_fcst_f_ly.retail_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: other_operated_payroll_amt_toly {
#     label: "Payroll Other Op. Dept. $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_payroll_amt}, ${glm_property_future_fcst_f_ly.other_operated_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: property_mgmt_payroll_amt_toly {
#     label: "Payroll Mgmt Srvcs $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_payroll_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: administrative_general_payroll_amt_toly {
#     label: "Payroll A&G $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.administrative_general_payroll_amt}, ${glm_property_future_fcst_f_ly.administrative_general_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: information_technology_payroll_amt_toly {
#     label: "Payroll IT $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.information_technology_payroll_amt}, ${glm_property_future_fcst_f_ly.information_technology_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: sales_marketing_payroll_amt_toly {
#     label: "Payroll S&M $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.sales_marketing_payroll_amt}, ${glm_property_future_fcst_f_ly.sales_marketing_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: property_operations_maintenance_payroll_amt_toly {
#     label: "Payroll R&M $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_operations_maintenance_payroll_amt}, ${glm_property_future_fcst_f_ly.property_operations_maintenance_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: misc_payroll_amt_toly {
#     label: "Payroll Rentals & Other $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_payroll_amt}, ${glm_property_future_fcst_f_ly.misc_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: nonoperating_airport_payroll_amt_toly {
#     label: "Payroll Nonoperating Airport $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_payroll_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: nonoperating_realty_payroll_amt_toly {
#     label: "Payroll Nonoperating Realty $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_payroll_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: nonoperating_util_payroll_amt_toly {
#     label: "Payroll Nonoperating Utility $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_payroll_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_payroll_amt}) ;;
#     value_format_name: percent_1
#   }
#
#   measure: rbe_outlet_payroll_amt_toly {
#     label: "Payroll RB&E Outlet $ TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_payroll_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_payroll_amt}) ;;
#     value_format_name: percent_1
#   }

  #-- Covers

  measure: rbe_cover_cnt_toly_v {
    label: "Cvrs RB&E  TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_cover_cnt_toly_v {
    label: "Cvrs RB&E Banquet  TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_banquet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_cover_cnt_toly_v {
    label: "Cvrs RB&E Catering  TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_catering_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cover_cnt_toly_v {
    label: "Cvrs RB&E Outlet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_outlet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_cover_cnt_toly_v {
    label: "Cvrs RB&E Room Service  TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_room_service_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_cover_cnt_toly_v {
    label: "Cvrs RB&E Other  TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_cover_cnt} - ${glm_property_future_fcst_f_ly.rbe_other_cover_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Covers % var

  measure: rbe_cover_cnt_toly {
    label: "Cvrs RB&E  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_cover_cnt_toly {
    label: "Cvrs RB&E Banquet  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_banquet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_cover_cnt_toly {
    label: "Cvrs RB&E Catering  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_catering_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_cover_cnt_toly {
    label: "Cvrs RB&E Outlet  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_outlet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_cover_cnt_toly {
    label: "Cvrs RB&E Room Service  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_room_service_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_cover_cnt_toly {
    label: "Cvrs RB&E Other  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_cover_cnt}, ${glm_property_future_fcst_f_ly.rbe_other_cover_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Treatments

  measure: spa_treatment_cnt_toly_v {
    label: "Trtmnts Spa TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_treatment_cnt} - ${glm_property_future_fcst_f_ly.spa_treatment_cnt} ;;
    value_format_name: decimal_0
  }

  measure: golf_round_cnt_toly_v {
    label: "Rnds Golf TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_round_cnt} - ${glm_property_future_fcst_f_ly.golf_round_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Treatments % var

  measure: spa_treatment_cnt_toly {
    label: "Trtmnts Spa TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_treatment_cnt}, ${glm_property_future_fcst_f_ly.spa_treatment_cnt}) ;;
    value_format_name: percent_1
  }

  measure: golf_round_cnt_toly {
    label: "Rnds Golf TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_round_cnt}, ${glm_property_future_fcst_f_ly.golf_round_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Rooms

  measure: arrival_cnt_toly_v {
    label: "Arrivals TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.arrival_cnt} - ${glm_property_future_fcst_f_ly.arrival_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_room_cnt_toly_v {
    label: "Rms Occ  TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_transient_room_cnt_toly_v {
    label: "Rms Occ Transient TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_transient_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_transient_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_group_room_cnt_toly_v {
    label: "Rms Occ Group TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_group_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_group_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_contract_room_cnt_toly_v {
    label: "Rms Occ Contract TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_contract_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_contract_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avail_room_cnt_toly_v {
    label: "Rms Avail  TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.avail_room_cnt} - ${glm_property_future_fcst_f_ly.avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_owner_room_cnt_toly_v {
    label: "Rms Occ Owner TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_owner_room_cnt} - ${glm_property_future_fcst_f_ly.occupied_owner_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: comp_room_cnt_toly_v {
    label: "Rms Occ Comp TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.comp_room_cnt} - ${glm_property_future_fcst_f_ly.comp_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: net_avail_room_cnt_toly_v {
    label: "Rms Avail Net TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.net_avail_room_cnt} - ${glm_property_future_fcst_f_ly.net_avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: transient_room_rev_amt_toly_v {

    label: "Rev Rms Transient $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.transient_room_rev_amt} - ${glm_property_future_fcst_f_ly.transient_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: group_room_rev_amt_toly_v {
    label: "Rev Rms Group $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.group_room_rev_amt} - ${glm_property_future_fcst_f_ly.group_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: contract_room_rev_amt_toly_v {
    label: "Rev Rms Contract $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.contract_room_rev_amt} - ${glm_property_future_fcst_f_ly.contract_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: no_show_room_rev_amt_toly_v {
    label: "Rev Rms No Show $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.no_show_room_rev_amt} - ${glm_property_future_fcst_f_ly.no_show_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: service_charge_incl_room_rev_amt_toly_v {
    label: "Rev Rms Srvc Charge $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.service_charge_incl_room_rev_amt} - ${glm_property_future_fcst_f_ly.service_charge_incl_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  #-- Rooms % var

  measure: arrival_cnt_toly {
    label: "Arrivals TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.arrival_cnt}, ${glm_property_future_fcst_f_ly.arrival_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_room_cnt_toly {
    label: "Rms Occ  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_cnt_toly {
    label: "Rms Occ Transient TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_transient_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_transient_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_cnt_toly {
    label: "Rms Occ Group TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_group_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_group_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_cnt_toly {
    label: "Rms Occ Contract TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_contract_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_contract_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: avail_room_cnt_toly {
    label: "Rms Avail  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.avail_room_cnt}, ${glm_property_future_fcst_f_ly.avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_owner_room_cnt_toly {
    label: "Rms Occ Owner TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_owner_room_cnt}, ${glm_property_future_fcst_f_ly.occupied_owner_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: comp_room_cnt_toly {
    label: "Rms Occ Comp TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.comp_room_cnt}, ${glm_property_future_fcst_f_ly.comp_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: net_avail_room_cnt_toly {
    label: "Rms Avail Net TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.net_avail_room_cnt}, ${glm_property_future_fcst_f_ly.net_avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: transient_room_rev_amt_toly {
    label: "Rev Rms Transient $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.transient_room_rev_amt}, ${glm_property_future_fcst_f_ly.transient_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: group_room_rev_amt_toly {
    label: "Rev Rms Group $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.group_room_rev_amt}, ${glm_property_future_fcst_f_ly.group_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: contract_room_rev_amt_toly {
    label: "Rev Rms Contract $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.contract_room_rev_amt}, ${glm_property_future_fcst_f_ly.contract_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Profit

  measure: profit_amt_toly_v {
    label: "Profit $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.profit_amt} - ${glm_property_future_fcst_f_ly.profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_profit_amt_toly_v {
    label: "Profit Rms $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_profit_amt} - ${glm_property_future_fcst_f_ly.room_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_profit_amt_toly_v {
    label: "Profit RB&E $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_profit_amt_toly_v {
    label: "Profit RB&E Banquet $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_banquet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_profit_amt_toly_v {
    label: "Profit RB&E Catering $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_catering_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_profit_amt_toly_v {
    label: "Profit RB&E Conference Services $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_conference_services_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_conference_services_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_profit_amt_toly_v {
    label: "Profit RB&E Outlet $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_profit_amt_toly_v {
    label: "Profit RB&E Room Service $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_room_service_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_profit_amt_toly_v {
    label: "Profit RB&E Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_profit_amt} - ${glm_property_future_fcst_f_ly.rbe_other_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_profit_amt_toly_v {
    label: "Profit Spa $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_profit_amt} - ${glm_property_future_fcst_f_ly.spa_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_profit_amt_toly_v {
    label: "Profit Golf $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_profit_amt} - ${glm_property_future_fcst_f_ly.golf_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_profit_amt_toly_v {
    label: "Profit Fitness & Rec $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_profit_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_profit_amt_toly_v {
    label: "Profit Parking & Trans $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_profit_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_profit_amt_toly_v {
    label: "Profit Telecom $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_profit_amt} - ${glm_property_future_fcst_f_ly.telecom_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_profit_amt_toly_v {
    label: "Profit Retail $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_profit_amt} - ${glm_property_future_fcst_f_ly.retail_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_profit_amt_toly_v {
    label: "Profit Other Op. Dept. $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_profit_amt} - ${glm_property_future_fcst_f_ly.other_operated_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_profit_amt_toly_v {
    label: "Profit Mgmt Srvcs $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_profit_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_profit_amt_toly_v {
    label: "Profit Rentals & Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_profit_amt} - ${glm_property_future_fcst_f_ly.misc_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_profit_amt_toly_v {
    label: "Profit Nonoperating Realty $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_profit_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_profit_amt_toly_v {
    label: "Profit Nonoperating Airport $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_profit_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_profit_amt_toly_v {
    label: "Profit Nonoperating Utility $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_profit_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_profit_amt_toly_v {
    label: "Profit Undistributed $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.undistributed_profit_amt} - ${glm_property_future_fcst_f_ly.undistributed_profit_amt} ;;
    value_format_name: decimal_0
  }

  #-- Profit % var

  measure: profit_amt_toly {
    label: "Profit $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.profit_amt}, ${glm_property_future_fcst_f_ly.profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_profit_amt_toly {
    label: "Profit Rms $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_profit_amt}, ${glm_property_future_fcst_f_ly.room_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_profit_amt_toly {
    label: "Profit RB&E $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_profit_amt_toly {
    label: "Profit RB&E Banquet $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_banquet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_profit_amt_toly {
    label: "Profit RB&E Catering $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_catering_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_profit_amt_toly {
    label: "Profit RB&E Conference Services $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_conference_services_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_conference_services_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_profit_amt_toly {
    label: "Profit RB&E Outlet $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_profit_amt_toly {
    label: "Profit RB&E Room Service $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_room_service_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_profit_amt_toly {
    label: "Profit RB&E Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_profit_amt}, ${glm_property_future_fcst_f_ly.rbe_other_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_profit_amt_toly {
    label: "Profit Spa $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_profit_amt}, ${glm_property_future_fcst_f_ly.spa_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_profit_amt_toly {
    label: "Profit Golf $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_profit_amt}, ${glm_property_future_fcst_f_ly.golf_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_profit_amt_toly {
    label: "Profit Fitness & Rec $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_profit_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_profit_amt_toly {
    label: "Profit Parking & Trans $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_profit_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_profit_amt_toly {
    label: "Profit Telecom $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_profit_amt}, ${glm_property_future_fcst_f_ly.telecom_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_profit_amt_toly {
    label: "Profit Retail $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_profit_amt}, ${glm_property_future_fcst_f_ly.retail_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_profit_amt_toly {
    label: "Profit Other Op. Dept. $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_profit_amt}, ${glm_property_future_fcst_f_ly.other_operated_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_profit_amt_toly {
    label: "Profit Mgmt Srvcs $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_profit_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_profit_amt_toly {
    label: "Profit Rentals & Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_profit_amt}, ${glm_property_future_fcst_f_ly.misc_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_profit_amt_toly {
    label: "Profit Nonoperating Realty $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_profit_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_profit_amt_toly {
    label: "Profit Nonoperating Airport $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_profit_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_profit_amt_toly {
    label: "Profit Nonoperating Utility $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_profit_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: undistributed_profit_amt_toly {
    label: "Profit Undistributed $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.undistributed_profit_amt}, ${glm_property_future_fcst_f_ly.undistributed_profit_amt}) ;;
    value_format_name: percent_1
  }

  #-- Profit % var total rev

  measure: profit_rev_pct_toly_v {
    label: "Profit /TRev RB&E % TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.profit_rev_pct} - ${glm_property_future_fcst_f_ly.profit_rev_pct};;
    value_format_name: percent_1
  }

  measure: rbe_profit_rev_pct_toly_v {
    label: "Profit /Rev RB&E % TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_profit_rev_pct} - ${glm_property_future_fcst_f_ly.rbe_profit_rev_pct};;
    value_format_name: percent_1
  }

  measure: profit_rev_pct_toly{
    label: "Profit /TRev RB&E % TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.profit_rev_pct}, ${glm_property_future_fcst_f_ly.profit_rev_pct});;
    value_format_name: percent_1
  }

  measure: rbe_profit_rev_pct_toly {
    label: "Profit /Rev RB&E % TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_profit_rev_pct}, ${glm_property_future_fcst_f_ly.rbe_profit_rev_pct});;
    value_format_name: percent_1
  }

  #-- Cost

  measure: cost_of_sales_amt_toly_v {

    label: "COS $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_cost_of_sales_amt_toly_v {
    label: "COS Rms $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.room_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_cost_of_sales_amt_toly_v {
    label: "COS RB&E $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_cost_of_sales_amt_toly_v {
    label: "COS Spa $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.spa_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_cost_of_sales_amt_toly_v {
    label: "COS Golf $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.golf_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_cost_of_sales_amt_toly_v {
    label: "COS Fitness & Rec $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_cost_of_sales_amt_toly_v {
    label: "COS Parking & Trans $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.parking_transportation_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.parking_transportation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_cost_of_sales_amt_toly_v {
    label: "COS Telecom $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.telecom_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.telecom_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_cost_of_sales_amt_toly_v {
    label: "COS Retail $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.retail_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_cost_of_sales_amt_toly_v {
    label: "COS Other Op. Dept. $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.other_operated_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_cost_of_sales_amt_toly_v {
    label: "COS Mgmt Srvcs $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_cost_of_sales_amt_toly_v {
    label: "COS Rentals & Other $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.misc_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_cost_of_sales_amt_toly_v {
    label: "COS Nonoperating Realty $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_cost_of_sales_amt_toly_v {
    label: "COS Nonoperating Airport $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_cost_of_sales_amt_toly_v {
    label: "COS Nonoperating Utility $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_cost_of_sales_amt_toly_v {
    label: "COS RB&E Food $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.food_rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.food_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_cost_of_sales_amt_toly_v {
    label: "COS RB&E Beverage $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.beverage_rbe_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.beverage_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cost_of_sales_amt_toly_v {
    label: "COS RB&E Outlet $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_cost_of_sales_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_toly_v {
    label: "Rev /Trtmnt Spa $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_rev_treatment_avg_amt} - ${glm_property_future_fcst_f_ly.spa_rev_treatment_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_rev_round_avg_amt_toly_v {
    label: "Rev /Rnd Golf $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_rev_round_avg_amt} - ${glm_property_future_fcst_f_ly.golf_rev_round_avg_amt} ;;
    value_format_name: decimal_2
  }

  #-- Cost % var

  measure: cost_of_sales_amt_toly {
    label: "COS $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_cost_of_sales_amt_toly {
    label: "COS Rms $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.room_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_cost_of_sales_amt_toly {
    label: "COS RB&E $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_cost_of_sales_amt_toly {
    label: "COS Spa $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.spa_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_cost_of_sales_amt_toly {
    label: "COS Golf $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.golf_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_cost_of_sales_amt_toly {
    label: "COS Fitness & Rec $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_cost_of_sales_amt_toly {
    label: "COS Parking & Trans $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.parking_transportation_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.parking_transportation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_cost_of_sales_amt_toly {
    label: "COS Telecom $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.telecom_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.telecom_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_cost_of_sales_amt_toly {
    label: "COS Retail $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.retail_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_cost_of_sales_amt_toly {
    label: "COS Other Op. Dept. $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.other_operated_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_cost_of_sales_amt_toly {
    label: "COS Mgmt Srvcs $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_cost_of_sales_amt_toly {
    label: "COS Rentals & Other $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.misc_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_cost_of_sales_amt_toly {
    label: "COS Nonoperating Realty $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_cost_of_sales_amt_toly {
    label: "COS Nonoperating Airport $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_cost_of_sales_amt_toly {
    label: "COS Nonoperating Utility $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_rbe_cost_of_sales_amt_toly {
    label: "COS RB&E Food $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.food_rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.food_rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: beverage_rbe_cost_of_sales_amt_toly {
    label: "COS RB&E Beverage $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.beverage_rbe_cost_of_sales_amt}, ${glm_property_future_fcst_f_ly.beverage_rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg Rev per Spa Treatment / Golf Round % var

  measure: spa_rev_treatment_avg_amt_toly {
    label: "Rev /Trtmnt Spa TY:LY - var %"
    description: "TY - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_rev_treatment_avg_amt}, ${glm_property_future_fcst_f_ly.spa_rev_treatment_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_round_avg_amt_toly {
    label: "Rev /Rnd Golf TY:LY - var %"
    description: "TY - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_rev_round_avg_amt}, ${glm_property_future_fcst_f_ly.golf_rev_round_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Occupancy

  measure: occupied_room_pct_toly_v {
    label: "Rms Occ %  TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_room_pct} - ${glm_property_future_fcst_f_ly.occupied_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_toly_v {
    label: "Rms Occ % Group TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_group_room_pct} - ${glm_property_future_fcst_f_ly.occupied_group_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_toly_v {
    label: "Rms Occ % Transient TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_transient_room_pct} - ${glm_property_future_fcst_f_ly.occupied_transient_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_toly_v {
    label: "Rms Occ % Contract TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_contract_room_pct} - ${glm_property_future_fcst_f_ly.occupied_contract_room_pct} ;;
    value_format_name: percent_1
  }

  #-- Occupancy % var

  measure: occupied_room_pct_toly {
    label: "Rms Occ %  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_room_pct}, ${glm_property_future_fcst_f_ly.occupied_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_toly {
    label: "Rms Occ % Group TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_group_room_pct}, ${glm_property_future_fcst_f_ly.occupied_group_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_toly {
    label: "Rms Occ % Transient TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_transient_room_pct}, ${glm_property_future_fcst_f_ly.occupied_transient_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_toly {
    label: "Rms Occ % Contract TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.occupied_contract_room_pct}, ${glm_property_future_fcst_f_ly.occupied_contract_room_pct}) ;;
    value_format_name: percent_1
  }

  #-- ADR

  measure: adr_amt_toly_v {
    label: "ADR $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.adr_amt} - ${glm_property_future_fcst_f_ly.adr_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_transient_amt_toly_v {
    label: "ADR Transient $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.adr_transient_amt} - ${glm_property_future_fcst_f_ly.adr_transient_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_group_amt_toly_v {
    label: "ADR Group $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.adr_group_amt} - ${glm_property_future_fcst_f_ly.adr_group_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_contract_amt_toly_v {
    label: "ADR Contract $ TY:LY - var"
    description: "Fcst- LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.adr_contract_amt} - ${glm_property_future_fcst_f_ly.adr_contract_amt} ;;
    value_format_name: decimal_2
  }

  #-- ADR % var

  measure: adr_amt_toly {
    label: "ADR $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.adr_amt}, ${glm_property_future_fcst_f_ly.adr_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_transient_amt_toly {
    label: "ADR Transient $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.adr_transient_amt}, ${glm_property_future_fcst_f_ly.adr_transient_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_group_amt_toly {
    label: "ADR Group $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.adr_group_amt}, ${glm_property_future_fcst_f_ly.adr_group_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_contract_amt_toly {
    label: "ADR Contract $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.adr_contract_amt}, ${glm_property_future_fcst_f_ly.adr_contract_amt} );;
    value_format_name: percent_1
  }

  #-- Room nights

  measure: room_night_transient_pct_toly_v {
    label: "Rms Night Transient % TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_night_transient_pct} - ${glm_property_future_fcst_f_ly.room_night_transient_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_toly_v {
    label: "Rms Night Group % TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_night_group_pct} - ${glm_property_future_fcst_f_ly.room_night_group_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_contract_pct_toly_v {
    label: "Rms Night Contract % TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_night_contract_pct} - ${glm_property_future_fcst_f_ly.room_night_contract_pct} ;;
    value_format_name: percent_1
  }

  #-- Room nights % var

  measure: room_night_transient_pct_toly {
    label: "Rms Night Transient % TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_night_transient_pct}, ${glm_property_future_fcst_f_ly.room_night_transient_pct}) ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_toly {
    label: "Rms Night Group % TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_night_group_pct}, ${glm_property_future_fcst_f_ly.room_night_group_pct}) ;;
    value_format_name: percent_1
  }

  measure: room_night_contract_pct_toly {
    label: "Rms Night Contract % TY:LY - var %"
    description: "(Fcst- LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_night_contract_pct}, ${glm_property_future_fcst_f_ly.room_night_contract_pct} );;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_amt_toly_v {
    label: "Rev PAR $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_par_amt} - ${glm_property_future_fcst_f_ly.rev_par_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_group_amt_toly_v {
    label: "Rev PAR $ Group TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_par_group_amt} - ${glm_property_future_fcst_f_ly.rev_par_group_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_transient_amt_toly_v {
    label: "Rev PAR $ Transient TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_par_transient_amt} - ${glm_property_future_fcst_f_ly.rev_par_transient_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_contract_amt_toly_v {
    label: "Rev PAR $ Contract TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_par_contract_amt} - ${glm_property_future_fcst_f_ly.rev_par_contract_amt} ;;
    value_format_name: usd_0
  }

  #-- Rev PAR % var

  measure: rev_par_amt_toly {
    label: "Rev PAR $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_par_amt}, ${glm_property_future_fcst_f_ly.rev_par_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_group_amt_toly {
    label: "Rev PAR $ Group TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_par_group_amt}, ${glm_property_future_fcst_f_ly.rev_par_group_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_transient_amt_toly {
    label: "Rev PAR $ Transient TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_par_transient_amt}, ${glm_property_future_fcst_f_ly.rev_par_transient_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_contract_amt_toly {
    label: "Rev PAR $ Contract TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_par_contract_amt}, ${glm_property_future_fcst_f_ly.rev_par_contract_amt}) ;;
    value_format_name: percent_1
  }

  #-- Rev POR

  measure: rev_por_amt_toly_v {
    label: "Rev POR $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rev_por_amt} - ${glm_property_future_fcst_f_ly.rev_por_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_por_amt_toly {
    label: "Rev POR $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rev_por_amt}, ${glm_property_future_fcst_f_ly.rev_por_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg check

  measure: rbe_check_avg_amt_toly_v {
    label: "Cvrs RB&E Avg $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_check_avg_amt_toly_v {
    label: "Cvrs RB&E Banquet Avg $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_banquet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_check_avg_amt_toly_v {
    label: "Cvrs RB&E Catering Avg $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_catering_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_check_avg_amt_toly_v {
    label: "Cvrs RB&E Outlet Avg $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_room_service_check_avg_amt_toly_v {
    label: "Cvrs RB&E Room Service Avg $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_room_service_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_room_service_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_check_avg_amt_toly_v {
    label: "Cvrs RB&E Other Avg $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_check_avg_amt} - ${glm_property_future_fcst_f_ly.rbe_other_check_avg_amt} ;;
    value_format_name: decimal_2
  }


  #-- Avg check % var

  measure: rbe_check_avg_amt_toly {
    label: "Cvrs RB&E Avg $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_check_avg_amt_toly {
    label: "Cvrs RB&E Banquet Avg $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_banquet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_check_avg_amt_toly {
    label: "Cvrs RB&E Catering Avg $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_catering_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_check_avg_amt_toly {
    label: "Cvrs RB&E Outlet Avg $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_check_avg_amt_toly {
    label: "Cvrs RB&E Room Service Avg $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_room_service_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_room_service_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_check_avg_amt_toly {
    label: "Cvrs RB&E Other Avg $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_check_avg_amt}, ${glm_property_future_fcst_f_ly.rbe_other_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg length of stay

  measure: length_of_stay_avg_amt_toly_v {
    label: "Stay Length Avg Night TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.length_of_stay_avg_amt} - ${glm_property_future_fcst_f_ly.length_of_stay_avg_amt} ;;
    value_format_name: decimal_1
  }

  #-- Avg length of stay % var

  measure: length_of_stay_avg_amt_toly {
    label: "Stay Length Avg Night TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.length_of_stay_avg_amt}, ${glm_property_future_fcst_f_ly.length_of_stay_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev

#   measure: payroll_rev_pct_toly_v {
#     label: "Payroll /Rev TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.payroll_rev_pct} - ${glm_property_future_fcst_f_ly.payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   #-- Payroll /Rev % var
#
#   measure: payroll_rev_pct_toly {
#     label: "Payroll /Rev TY:LY - var %"
#     description: "(TY - LY) / LY"
#     type: number
#     sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.payroll_rev_pct}, ${glm_property_future_fcst_f_ly.payroll_rev_pct}) ;;
#     value_format_name: percent_1
#   }
#
#   #-- Payroll Rev %
#
#   measure: room_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Rms TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.room_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.room_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: rbe_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev RB&E TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.rbe_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.rbe_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: spa_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Spa TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.spa_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.spa_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: golf_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Golf TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.golf_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.golf_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: fitness_recreation_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Fitness & Rec TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.fitness_recreation_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.fitness_recreation_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: parking_transportation_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Parking & Trans TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.parking_transportation_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.parking_transportation_payroll_rev_pct} ;;
#     value_format_name: usd_0
#   }
#
#   measure: telecom_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Telecom TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.telecom_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.telecom_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: retail_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Retail TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.retail_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.retail_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: other_operated_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Other Op. Dept. TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.other_operated_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.other_operated_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: property_mgmt_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Mgmt Srvcs TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.property_mgmt_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.property_mgmt_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }
#
#   measure: misc_payroll_rev_pct_toly_v {
#     label: "Payroll /Rev Rentals & Other % TY:LY - var"
#     description: "TY - LY"
#     type: number
#     sql: ${glm_property_future_fcst_f_ty.misc_payroll_rev_pct} - ${glm_property_future_fcst_f_ly.misc_payroll_rev_pct} ;;
#     value_format_name: percent_1
#   }

  #-- Rental property splits

  measure: room_rental_mgmt_2_19_rev_amt_toly_v {
    label: "Rev Rms Rental $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_ly.room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: avail_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Avail Rental $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.avail_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_owner_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Owner Rental TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_owner_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_owner_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: net_avail_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Avail Net Rental TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.net_avail_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.net_avail_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Rental TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: transient_room_rental_mgmt_2_19_rev_amt_toly_v {
    label: "Rev Rms Transient Rental $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.transient_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_ly.transient_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: usd_0
  }
  measure: group_room_rental_mgmt_2_19_rev_amt_toly_v {
    label: "Rev Rms Group Rental $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.group_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_ly.group_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: contract_room_rental_mgmt_2_19_rev_amt_toly_v {
    label: "Rev Rms Contract Rental $ TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.contract_room_rental_mgmt_2_19_rev_amt} - ${glm_property_future_fcst_f_ly.contract_room_rental_mgmt_2_19_rev_amt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_transient_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Transient Rental TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_transient_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_transient_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_group_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Group Rental TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_group_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_group_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_contract_room_rental_mgmt_2_19_cnt_toly_v {
    label: "Rms Occ Contract Rental TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.occupied_contract_room_rental_mgmt_2_19_cnt} - ${glm_property_future_fcst_f_ly.occupied_contract_room_rental_mgmt_2_19_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Hours

  measure: hour_amt_toly_v {
    label: "Hrs TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${glm_property_future_fcst_f_ty.hour_amt} - ${glm_property_future_fcst_f_ly.hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_hour_amt_toly_v {
    label: "Hrs Rms TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_hour_amt} - ${glm_property_future_fcst_f_ly.room_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_hour_amt_toly_v {
    label: "Hrs RB&E TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${glm_property_future_fcst_f_ty.rbe_hour_amt} - ${glm_property_future_fcst_f_ly.rbe_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_hour_amt_toly_v {
    label: "Hrs RB&E Banquet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_hour_amt} - ${glm_property_future_fcst_f_ly.rbe_banquet_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_hour_amt_toly_v {
    label: "Hrs RB&E Catering TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_hour_amt} - ${glm_property_future_fcst_f_ly.rbe_catering_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_hour_amt_toly_v {
    label: "Hrs RB&E Outlet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_hour_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_hour_amt_toly_v {
    label: "Hrs RB&E Conference Services TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_conference_services_hour_amt} - ${glm_property_future_fcst_f_ly.rbe_conference_services_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_restaurant_hour_amt_toly_v {
    label: "Hrs RB&E Restaurant TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_restaurant_hour_amt} - ${glm_property_future_fcst_f_ly.rbe_restaurant_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_lounge_hour_amt_toly_v {
    label: "Hrs RB&E Lounge TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_lounge_hour_amt} - ${glm_property_future_fcst_f_ly.rbe_lounge_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_hour_amt_toly_v {
    label: "Hrs RB&E Other TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_hour_amt} - ${glm_property_future_fcst_f_ly.rbe_other_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_hour_amt_toly_v {
    label: "Hrs Spa TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_hour_amt} - ${glm_property_future_fcst_f_ly.spa_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_hour_amt_toly_v {
    label: "Hrs Golf TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_hour_amt} - ${glm_property_future_fcst_f_ly.golf_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_hour_amt_toly_v {
    label: "Hrs Fitness & Rec TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_hour_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_hour_amt_toly_v {
    label: "Hrs Retail TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_hour_amt} - ${glm_property_future_fcst_f_ly.retail_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_hour_amt_toly_v {
    label: "Hrs Other Op. Dept. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_hour_amt} - ${glm_property_future_fcst_f_ly.other_operated_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_hour_amt_toly_v {
    label: "Hrs Mgmt Srvcs TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_hour_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_hour_amt_toly_v {
    label: "Hrs Rentals & Other TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_hour_amt} - ${glm_property_future_fcst_f_ly.misc_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_hour_amt_toly_v {
    label: "Hrs Nonoperating Realty TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_hour_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_hour_amt_toly_v {
    label: "Hrs Nonoperating Airport TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_hour_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_hour_amt_toly_v {
    label: "Hrs Nonoperating Utility TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_hour_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_hour_amt_toly_v {
    label: "Hrs Undistributed TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.undistributed_hour_amt} - ${glm_property_future_fcst_f_ly.undistributed_hour_amt} ;;
    value_format_name: decimal_0
  }

  measure: allocated_hour_amt_toly_v {
    label: "Hrs Allocated TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.allocated_hour_amt} - ${glm_property_future_fcst_f_ly.allocated_hour_amt} ;;
    value_format_name: decimal_0
  }


  measure: hour_amt_toly {
    label: "Hrs TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_future_fcst_f_ty.hour_amt}, ${glm_property_future_fcst_f_ly.hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: room_hour_amt_toly {
    label: "Hrs Rms TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_hour_amt}, ${glm_property_future_fcst_f_ly.room_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_hour_amt_toly {
    label: "Hrs RB&E TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_hour_amt}, ${glm_property_future_fcst_f_ly.rbe_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_hour_amt_toly {
    label: "Hrs RB&E Banquet TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_hour_amt}, ${glm_property_future_fcst_f_ly.rbe_banquet_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_hour_amt_toly {
    label: "Hrs RB&E Catering TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_hour_amt}, ${glm_property_future_fcst_f_ly.rbe_catering_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_hour_amt_toly {
    label: "Hrs RB&E Outlet TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_hour_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_hour_amt_toly {
    label: "Hrs RB&E Conference Services TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_conference_services_hour_amt}, ${glm_property_future_fcst_f_ly.rbe_conference_services_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_restaurant_hour_amt_toly {
    label: "Hrs RB&E Restaurant TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_restaurant_hour_amt}, ${glm_property_future_fcst_f_ly.rbe_restaurant_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_lounge_hour_amt_toly {
    label: "Hrs RB&E Lounge TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_lounge_hour_amt}, ${glm_property_future_fcst_f_ly.rbe_lounge_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_hour_amt_toly {
    label: "Hrs RB&E Other TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_hour_amt}, ${glm_property_future_fcst_f_ly.rbe_other_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: spa_hour_amt_toly {
    label: "Hrs Spa TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_hour_amt}, ${glm_property_future_fcst_f_ly.spa_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: golf_hour_amt_toly {
    label: "Hrs Golf TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_hour_amt}, ${glm_property_future_fcst_f_ly.golf_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_hour_amt_toly {
    label: "Hrs Fitness & Rec TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_hour_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: retail_hour_amt_toly {
    label: "Hrs Retail TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_hour_amt}, ${glm_property_future_fcst_f_ly.retail_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: other_operated_hour_amt_toly {
    label: "Hrs Other Op. Dept. TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_hour_amt}, ${glm_property_future_fcst_f_ly.other_operated_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_hour_amt_toly {
    label: "Hrs Mgmt Srvcs TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_hour_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: misc_hour_amt_toly {
    label: "Hrs Rentals & Other TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_hour_amt}, ${glm_property_future_fcst_f_ly.misc_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_hour_amt_toly {
    label: "Hrs Nonoperating Realty TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_hour_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_hour_amt_toly {
    label: "Hrs Nonoperating Airport TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_hour_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_hour_amt_toly {
    label: "Hrs Nonoperating Utility TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_hour_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: undistributed_hour_amt_toly {
    label: "Hrs Undistributed TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.undistributed_hour_amt}, ${glm_property_future_fcst_f_ly.undistributed_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: allocated_hour_amt_toly {
    label: "Hrs Allocated TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.allocated_hour_amt}, ${glm_property_future_fcst_f_ly.allocated_hour_amt} ) ;;
    value_format_name: percent_1
  }

  #-- FTE

  measure: fte_amt_toly_v {
    label: "FTE TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${glm_property_future_fcst_f_ty.fte_amt} - ${glm_property_future_fcst_f_ly.fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_fte_amt_toly_v {
    label: "FTE Rms TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.room_fte_amt} - ${glm_property_future_fcst_f_ly.room_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_fte_amt_toly_v {
    label: "FTE RB&E TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${glm_property_future_fcst_f_ty.rbe_fte_amt} - ${glm_property_future_fcst_f_ly.rbe_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_fte_amt_toly_v {
    label: "FTE RB&E Banquet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_banquet_fte_amt} - ${glm_property_future_fcst_f_ly.rbe_banquet_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_fte_amt_toly_v {
    label: "FTE RB&E Catering TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_catering_fte_amt} - ${glm_property_future_fcst_f_ly.rbe_catering_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_fte_amt_toly_v {
    label: "FTE RB&E Outlet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_outlet_fte_amt} - ${glm_property_future_fcst_f_ly.rbe_outlet_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_fte_amt_toly_v {
    label: "FTE RB&E Conference Services TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_conference_services_fte_amt} - ${glm_property_future_fcst_f_ly.rbe_conference_services_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_restaurant_fte_amt_toly_v {
    label: "FTE RB&E Restaurant TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_restaurant_fte_amt} - ${glm_property_future_fcst_f_ly.rbe_restaurant_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_lounge_fte_amt_toly_v {
    label: "FTE RB&E Lounge TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_lounge_fte_amt} - ${glm_property_future_fcst_f_ly.rbe_lounge_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_fte_amt_toly_v {
    label: "FTE RB&E Other TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.rbe_other_fte_amt} - ${glm_property_future_fcst_f_ly.rbe_other_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_fte_amt_toly_v {
    label: "FTE Spa TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.spa_fte_amt} - ${glm_property_future_fcst_f_ly.spa_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_fte_amt_toly_v {
    label: "FTE Golf TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.golf_fte_amt} - ${glm_property_future_fcst_f_ly.golf_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_fte_amt_toly_v {
    label: "FTE Fitness & Rec TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.fitness_recreation_fte_amt} - ${glm_property_future_fcst_f_ly.fitness_recreation_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_fte_amt_toly_v {
    label: "FTE Retail TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.retail_fte_amt} - ${glm_property_future_fcst_f_ly.retail_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_fte_amt_toly_v {
    label: "FTE Other Op. Dept. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.other_operated_fte_amt} - ${glm_property_future_fcst_f_ly.other_operated_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_fte_amt_toly_v {
    label: "FTE Mgmt Srvcs TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.property_mgmt_fte_amt} - ${glm_property_future_fcst_f_ly.property_mgmt_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_fte_amt_toly_v {
    label: "FTE Rentals & Other TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.misc_fte_amt} - ${glm_property_future_fcst_f_ly.misc_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_fte_amt_toly_v {
    label: "FTE Nonoperating Realty TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_realty_fte_amt} - ${glm_property_future_fcst_f_ly.nonoperating_realty_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_airport_fte_amt_toly_v {
    label: "FTE Nonoperating Airport TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_airport_fte_amt} - ${glm_property_future_fcst_f_ly.nonoperating_airport_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_fte_amt_toly_v {
    label: "FTE Nonoperating Utility TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.nonoperating_util_fte_amt} - ${glm_property_future_fcst_f_ly.nonoperating_util_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_fte_amt_toly_v {
    label: "FTE Undistributed TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.undistributed_fte_amt} - ${glm_property_future_fcst_f_ly.undistributed_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: allocated_fte_amt_toly_v {
    label: "FTE Allocated TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_future_fcst_f_ty.allocated_fte_amt} - ${glm_property_future_fcst_f_ly.allocated_fte_amt} ;;
    value_format_name: decimal_0
  }

  measure: fte_amt_toly {
    label: "FTE TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fte_amt}, ${glm_property_future_fcst_f_ly.fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: room_fte_amt_toly {
    label: "FTE Rms TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.room_fte_amt}, ${glm_property_future_fcst_f_ly.room_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_fte_amt_toly {
    label: "FTE RB&E TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_fte_amt}, ${glm_property_future_fcst_f_ly.rbe_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_fte_amt_toly {
    label: "FTE RB&E Banquet TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_banquet_fte_amt}, ${glm_property_future_fcst_f_ly.rbe_banquet_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_fte_amt_toly {
    label: "FTE RB&E Catering TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_catering_fte_amt}, ${glm_property_future_fcst_f_ly.rbe_catering_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_fte_amt_toly {
    label: "FTE RB&E Outlet TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_outlet_fte_amt}, ${glm_property_future_fcst_f_ly.rbe_outlet_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_fte_amt_toly {
    label: "FTE RB&E Conference Services TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_conference_services_fte_amt}, ${glm_property_future_fcst_f_ly.rbe_conference_services_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_restaurant_fte_amt_toly {
    label: "FTE RB&E Restaurant TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_restaurant_fte_amt}, ${glm_property_future_fcst_f_ly.rbe_restaurant_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_lounge_fte_amt_toly {
    label: "FTE RB&E Lounge TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_lounge_fte_amt}, ${glm_property_future_fcst_f_ly.rbe_lounge_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_fte_amt_toly {
    label: "FTE RB&E Other TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.rbe_other_fte_amt}, ${glm_property_future_fcst_f_ly.rbe_other_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: spa_fte_amt_toly {
    label: "FTE Spa TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.spa_fte_amt}, ${glm_property_future_fcst_f_ly.spa_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: golf_fte_amt_toly {
    label: "FTE Golf TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.golf_fte_amt}, ${glm_property_future_fcst_f_ly.golf_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_fte_amt_toly {
    label: "FTE Fitness & Rec TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.fitness_recreation_fte_amt}, ${glm_property_future_fcst_f_ly.fitness_recreation_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: retail_fte_amt_toly {
    label: "FTE Retail TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.retail_fte_amt}, ${glm_property_future_fcst_f_ly.retail_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: other_operated_fte_amt_toly {
    label: "FTE Other Op. Dept. TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.other_operated_fte_amt}, ${glm_property_future_fcst_f_ly.other_operated_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_fte_amt_toly {
    label: "FTE Mgmt Srvcs TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.property_mgmt_fte_amt}, ${glm_property_future_fcst_f_ly.property_mgmt_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: misc_fte_amt_toly {
    label: "FTE Rentals & Other TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.misc_fte_amt}, ${glm_property_future_fcst_f_ly.misc_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_fte_amt_toly {
    label: "FTE Nonoperating Realty TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_realty_fte_amt}, ${glm_property_future_fcst_f_ly.nonoperating_realty_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_fte_amt_toly {
    label: "FTE Nonoperating Airport TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_airport_fte_amt}, ${glm_property_future_fcst_f_ly.nonoperating_airport_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_fte_amt_toly {
    label: "FTE Nonoperating Utility TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.nonoperating_util_fte_amt}, ${glm_property_future_fcst_f_ly.nonoperating_util_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: undistributed_fte_amt_toly {
    label: "FTE Undistributed TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.undistributed_fte_amt}, ${glm_property_future_fcst_f_ly.undistributed_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: allocated_fte_amt_toly {
    label: "FTE Allocated TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_future_fcst_f_ty.allocated_fte_amt}, ${glm_property_future_fcst_f_ly.allocated_fte_amt} ) ;;
    value_format_name: percent_1
  }

}
