view: glm_property_f_tofcst30 {

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

  measure: rev_amt_tofcst30_v {
    label: "Rev Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rev_amt} - ${glm_property_f_fcst30.rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: agop_amt_tofcst30_v {
    label: "AGOP Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.agop_amt} - ${glm_property_f_fcst30.agop_amt} ;;
    value_format_name: decimal_0
  }

  measure: agop_abs_amt_tofcst30_v {
    label: "AGOP Abs Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.agop_abs_amt} - ${glm_property_f_fcst30.agop_abs_amt} ;;
    value_format_name: decimal_0
  }

  measure: gop_amt_tofcst30_v {
    label: "GOP Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.gop_amt} - ${glm_property_f_fcst30.gop_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_rev_amt_tofcst30_v {
    label: "Rev Rms Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.room_rev_amt} - ${glm_property_f_fcst30.room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_rev_amt_tofcst30_v {
    label: "Rev RB&E Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_rev_amt} - ${glm_property_f_fcst30.rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_rev_amt_tofcst30_v {
    label: "Rev RB&E Banquet Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_rev_amt} - ${glm_property_f_fcst30.rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_rev_amt_tofcst30_v {
    label: "Rev RB&E Catering Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_rev_amt} - ${glm_property_f_fcst30.rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_rev_amt_tofcst30_v {
    label: "Rev RB&E Conference Services Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_conference_services_rev_amt} - ${glm_property_f_fcst30.rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_catering_conference_services_rev_amt_tofcst30_v {
    label: "Rev RB&E Conference Services Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_catering_conference_services_rev_amt} - ${glm_property_f_fcst30.rbe_banquet_catering_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_rev_amt_tofcst30_v {
    label: "Rev RB&E Outlet Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_rev_amt} - ${glm_property_f_fcst30.rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_rev_amt_tofcst30_v {
    label: "Rev RB&E Room Service Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_other_rev_amt} - ${glm_property_f_fcst30.rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_rev_amt_tofcst30_v {
    label: "Rev RB&E Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_other_rev_amt} - ${glm_property_f_fcst30.rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_other_rev_amt_tofcst30_v {
    label: "Rev RB&E Outlet Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_other_rev_amt} - ${glm_property_f_fcst30.rbe_outlet_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_rev_amt_tofcst30_v {
    label: "Rev Spa Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_rev_amt} - ${glm_property_f_fcst30.spa_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_rev_amt_tofcst30_v {
    label: "Rev Golf Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.golf_rev_amt} - ${glm_property_f_fcst30.golf_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_rev_amt_tofcst30_v {
    label: "Rev Fitness & Rec Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_rev_amt} - ${glm_property_f_fcst30.fitness_recreation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_rev_amt_tofcst30_v {
    label: "Rev Parking & Trans Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_rev_amt} - ${glm_property_f_fcst30.parking_transportation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_rev_amt_tofcst30_v {
    label: "Rev Telecom Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.telecom_rev_amt} - ${glm_property_f_fcst30.telecom_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_rev_amt_tofcst30_v {
    label: "Rev Retail Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.retail_rev_amt} - ${glm_property_f_fcst30.retail_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_fitness_recreation_rev_amt_tofcst30_v {
    label: "Rev Spa Fitness & Rec Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_fitness_recreation_rev_amt} - ${glm_property_f_fcst30.spa_fitness_recreation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_rev_amt_tofcst30_v {
    label: "Rev Other Op. Dept. Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.other_operated_rev_amt} - ${glm_property_f_fcst30.other_operated_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_rev_amt_tofcst30_v {
    label: "Rev Mgmt Srvcs Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_rev_amt} - ${glm_property_f_fcst30.property_mgmt_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_rev_amt_tofcst30_v {
    label: "Rev Rentals & Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.misc_rev_amt} - ${glm_property_f_fcst30.misc_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_airport_rev_amt_tofcst30_v {
    label: "Rev Nonoperating Realty Airport Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_airport_rev_amt} - ${glm_property_f_fcst30.nonoperating_realty_airport_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_rev_amt_tofcst30_v {
    label: "Rev Nonoperating Utility Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_rev_amt} - ${glm_property_f_fcst30.nonoperating_util_rev_amt} ;;
    value_format_name: decimal_0
  }


#-- Rev % var


  measure: rev_amt_tofcst30 {
    label: "Rev Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_amt}, ${glm_property_f_fcst30.rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: agop_amt_tofcst30 {
    label: "AGOP Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.agop_amt}, ${glm_property_f_fcst30.agop_amt}) ;;
    value_format_name: percent_1
  }

  measure: gop_amt_tofcst30 {
    label: "GOP Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.gop_amt}, ${glm_property_f_fcst30.gop_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_rev_amt_tofcst30 {
    label: "Rev Rms Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_rev_amt}, ${glm_property_f_fcst30.room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_rev_amt_tofcst30 {
    label: "Rev RB&E Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_rev_amt}, ${glm_property_f_fcst30.rbe_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_rev_amt_tofcst30 {
    label: "Rev RB&E Banquet Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_rev_amt}, ${glm_property_f_fcst30.rbe_banquet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_rev_amt_tofcst30 {
    label: "Rev RB&E Catering Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_rev_amt}, ${glm_property_f_fcst30.rbe_catering_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_rev_amt_tofcst30 {
    label: "Rev RB&E Conference Services Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_conference_services_rev_amt}, ${glm_property_f_fcst30.rbe_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_catering_conference_services_rev_amt_tofcst30 {
    label: "Rev RB&E Banquet Catering Conference Services Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_catering_conference_services_rev_amt}, ${glm_property_f_fcst30.rbe_banquet_catering_conference_services_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_rev_amt_tofcst30 {
    label: "Rev RB&E Outlet Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_rev_amt}, ${glm_property_f_fcst30.rbe_outlet_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_rev_amt_tofcst30 {
    label: "Rev RB&E Room Service Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_rev_amt}, ${glm_property_f_fcst30.rbe_room_service_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_rev_amt_tofcst30 {
    label: "Rev RB&E Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_rev_amt}, ${glm_property_f_fcst30.rbe_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_other_rev_amt_tofcst30 {
    label: "Rev RB&E Outlet Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_other_rev_amt}, ${glm_property_f_fcst30.rbe_outlet_other_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_rev_amt_tofcst30 {
    label: "Rev Spa Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_rev_amt}, ${glm_property_f_fcst30.spa_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_amt_tofcst30 {
    label: "Rev Golf Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_rev_amt}, ${glm_property_f_fcst30.golf_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_rev_amt_tofcst30 {
    label: "Rev Fitness & Rec Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_rev_amt}, ${glm_property_f_fcst30.fitness_recreation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_rev_amt_tofcst30 {
    label: "Rev Parking & Trans Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_rev_amt}, ${glm_property_f_fcst30.parking_transportation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_rev_amt_tofcst30 {
    label: "Rev Telecom Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_rev_amt}, ${glm_property_f_fcst30.telecom_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_rev_amt_tofcst30 {
    label: "Rev Retail Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_rev_amt}, ${glm_property_f_fcst30.retail_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_fitness_recreation_rev_amt_tofcst30 {
    label: "Rev Spa Fitness & Rec Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_fitness_recreation_rev_amt}, ${glm_property_f_fcst30.spa_fitness_recreation_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_rev_amt_tofcst30 {
    label: "Rev Other Op. Dept. Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_rev_amt}, ${glm_property_f_fcst30.other_operated_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_rev_amt_tofcst30 {
    label: "Rev Mgmt Srvcs Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_rev_amt}, ${glm_property_f_fcst30.property_mgmt_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_rev_amt_tofcst30 {
    label: "Rev Rentals & Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_rev_amt}, ${glm_property_f_fcst30.misc_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_airport_rev_amt_tofcst30 {
    label: "Rev Nonoperating Realty Airport Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_airport_rev_amt}, ${glm_property_f_fcst30.nonoperating_realty_airport_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_rev_amt_tofcst30 {
    label: "Rev Nonoperating Utility Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_rev_amt}, ${glm_property_f_fcst30.nonoperating_util_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Expenses

  measure: exp_amt_tofcst30_v {
    label: "Exp Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.exp_amt} - ${glm_property_f_fcst30.exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_exp_amt_tofcst30_v {
    label: "Exp Rms Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.room_exp_amt} - ${glm_property_f_fcst30.room_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_exp_amt_tofcst30_v {
    label: "Exp RB&E Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_exp_amt} - ${glm_property_f_fcst30.rbe_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_exp_amt_tofcst30_v {
    label: "Exp Spa Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_exp_amt} - ${glm_property_f_fcst30.spa_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_exp_amt_tofcst30_v {
    label: "Exp Golf Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.golf_exp_amt} - ${glm_property_f_fcst30.golf_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_exp_amt_tofcst30_v {
    label: "Exp Fitness & Rec Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_exp_amt} - ${glm_property_f_fcst30.fitness_recreation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_exp_amt_tofcst30_v {
    label: "Exp Parking & Trans Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_exp_amt} - ${glm_property_f_fcst30.parking_transportation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_exp_amt_tofcst30_v {
    label: "Exp Telecom Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.telecom_exp_amt} - ${glm_property_f_fcst30.telecom_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_exp_amt_tofcst30_v {
    label: "Exp Retail Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.retail_exp_amt} - ${glm_property_f_fcst30.retail_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_exp_amt_tofcst30_v {
    label: "Exp Other Op. Dept. Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.other_operated_exp_amt} - ${glm_property_f_fcst30.other_operated_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_exp_amt_tofcst30_v {
    label: "Exp Mgmt Srvcs Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_exp_amt} - ${glm_property_f_fcst30.property_mgmt_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_exp_amt_tofcst30_v {
    label: "Exp A&G Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.administrative_general_exp_amt} - ${glm_property_f_fcst30.administrative_general_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_exp_amt_tofcst30_v {
    label: "Exp IT Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.information_technology_exp_amt} - ${glm_property_f_fcst30.information_technology_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_exp_amt_tofcst30_v {
    label: "Exp S&M Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.sales_marketing_exp_amt} - ${glm_property_f_fcst30.sales_marketing_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_exp_amt_tofcst30_v {
    label: "Exp R&M Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_operations_maintenance_exp_amt} - ${glm_property_f_fcst30.property_operations_maintenance_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_exp_amt_tofcst30_v {
    label: "Exp Rentals & Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.misc_exp_amt} - ${glm_property_f_fcst30.misc_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_airport_exp_amt_tofcst30_v {
    label: "Exp Nonoperating Realty Airport Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_airport_exp_amt} - ${glm_property_f_fcst30.nonoperating_realty_airport_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_exp_amt_tofcst30_v {
    label: "Exp Nonoperating Utility Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_exp_amt} - ${glm_property_f_fcst30.nonoperating_util_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Expenses % var

  measure: exp_amt_tofcst30 {
    label: "Exp Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.exp_amt}, ${glm_property_f_fcst30.exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_exp_amt_tofcst30 {
    label: "Exp Rms Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_exp_amt}, ${glm_property_f_fcst30.room_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_exp_amt_tofcst30 {
    label: "Exp RB&E Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_exp_amt}, ${glm_property_f_fcst30.rbe_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_exp_amt_tofcst30 {
    label: "Exp Spa Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_exp_amt}, ${glm_property_f_fcst30.spa_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_exp_amt_tofcst30 {
    label: "Exp Golf Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_exp_amt}, ${glm_property_f_fcst30.golf_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_exp_amt_tofcst30 {
    label: "Exp Fitness & Rec Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_exp_amt}, ${glm_property_f_fcst30.fitness_recreation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_exp_amt_tofcst30 {
    label: "Exp Parking & Trans Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_exp_amt}, ${glm_property_f_fcst30.parking_transportation_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_exp_amt_tofcst30 {
    label: "Exp Telecom Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_exp_amt}, ${glm_property_f_fcst30.telecom_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_exp_amt_tofcst30 {
    label: "Exp Retail Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_exp_amt}, ${glm_property_f_fcst30.retail_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_exp_amt_tofcst30 {
    label: "Exp Other Op. Dept. Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_exp_amt}, ${glm_property_f_fcst30.other_operated_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_exp_amt_tofcst30 {
    label: "Exp Mgmt Srvcs Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_exp_amt}, ${glm_property_f_fcst30.property_mgmt_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_exp_amt_tofcst30 {
    label: "Exp A&G Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.administrative_general_exp_amt}, ${glm_property_f_fcst30.administrative_general_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_exp_amt_tofcst30 {
    label: "Exp IT Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.information_technology_exp_amt}, ${glm_property_f_fcst30.information_technology_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_exp_amt_tofcst30 {
    label: "Exp S&M Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.sales_marketing_exp_amt}, ${glm_property_f_fcst30.sales_marketing_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_exp_amt_tofcst30 {
    label: "Exp R&M Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_operations_maintenance_exp_amt}, ${glm_property_f_fcst30.property_operations_maintenance_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_exp_amt_tofcst30 {
    label: "Exp Rentals & Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_exp_amt}, ${glm_property_f_fcst30.misc_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_airport_exp_amt_tofcst30 {
    label: "Exp Nonoperating Realty Airport Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_airport_exp_amt}, ${glm_property_f_fcst30.nonoperating_realty_airport_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_exp_amt_tofcst30 {
    label: "Exp Nonoperating Utility Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_exp_amt}, ${glm_property_f_fcst30.nonoperating_util_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Other Expenses

  measure: other_exp_amt_tofcst30_v {
    label: "Exp Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.other_exp_amt} - ${glm_property_f_fcst30.other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_other_exp_amt_tofcst30_v {
    label: "Exp Other Rms Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.room_other_exp_amt} - ${glm_property_f_fcst30.room_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_exp_amt_tofcst30_v {
    label: "Exp Other RB&E Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_other_exp_amt} - ${glm_property_f_fcst30.rbe_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_other_exp_amt_tofcst30_v {
    label: "Exp Other Spa Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_other_exp_amt} - ${glm_property_f_fcst30.spa_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_other_exp_amt_tofcst30_v {
    label: "Exp Other Golf Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.golf_other_exp_amt} - ${glm_property_f_fcst30.golf_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_other_exp_amt_tofcst30_v {
    label: "Exp Other Fitness & Rec Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_other_exp_amt} - ${glm_property_f_fcst30.fitness_recreation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_other_exp_amt_tofcst30_v {
    label: "Exp Other Parking & Trans Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_other_exp_amt} - ${glm_property_f_fcst30.parking_transportation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_other_exp_amt_tofcst30_v {
    label: "Exp Other Telecom Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.telecom_other_exp_amt} - ${glm_property_f_fcst30.telecom_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_other_exp_amt_tofcst30_v {
    label: "Exp Other Retail Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.retail_other_exp_amt} - ${glm_property_f_fcst30.retail_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_other_exp_amt_tofcst30_v {
    label: "Exp Other Other Op. Dept. Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.other_operated_other_exp_amt} - ${glm_property_f_fcst30.other_operated_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_other_exp_amt_tofcst30_v {
    label: "Exp Other Mgmt Srvcs Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_other_exp_amt} - ${glm_property_f_fcst30.property_mgmt_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_other_exp_amt_tofcst30_v {
    label: "Exp Other A&G Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.administrative_general_other_exp_amt} - ${glm_property_f_fcst30.administrative_general_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_other_exp_amt_tofcst30_v {
    label: "Exp Other IT Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.information_technology_other_exp_amt} - ${glm_property_f_fcst30.information_technology_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_other_exp_amt_tofcst30_v {
    label: "Exp Other S&M Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.sales_marketing_other_exp_amt} - ${glm_property_f_fcst30.sales_marketing_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_other_exp_amt_tofcst30_v {
    label: "Exp Other R&M Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_operations_maintenance_other_exp_amt} - ${glm_property_f_fcst30.property_operations_maintenance_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_other_exp_amt_tofcst30_v {
    label: "Exp Other Rentals & Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.misc_other_exp_amt} - ${glm_property_f_fcst30.misc_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_airport_other_exp_amt_tofcst30_v {
    label: "Exp Other Nonoperating Realty Airport Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_airport_other_exp_amt} - ${glm_property_f_fcst30.nonoperating_realty_airport_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_other_exp_amt_tofcst30_v {
    label: "Exp Other Nonoperating Utility Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_other_exp_amt} - ${glm_property_f_fcst30.nonoperating_util_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Other Expenses % var

  measure: other_exp_amt_tofcst30 {
    label: "Exp Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_exp_amt}, ${glm_property_f_fcst30.other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_other_exp_amt_tofcst30 {
    label: "Exp Other Rms Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_other_exp_amt}, ${glm_property_f_fcst30.room_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_amt_tofcst30 {
    label: "Exp Other RB&E Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_exp_amt}, ${glm_property_f_fcst30.rbe_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_other_exp_amt_tofcst30 {
    label: "Exp Other Spa Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_other_exp_amt}, ${glm_property_f_fcst30.spa_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_other_exp_amt_tofcst30 {
    label: "Exp Other Golf Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_other_exp_amt}, ${glm_property_f_fcst30.golf_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_amt_tofcst30 {
    label: "Exp Other Fitness & Rec Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_other_exp_amt}, ${glm_property_f_fcst30.fitness_recreation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_amt_tofcst30 {
    label: "Exp Other Parking & Trans Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_other_exp_amt}, ${glm_property_f_fcst30.parking_transportation_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_amt_tofcst30 {
    label: "Exp Other Telecom Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_other_exp_amt}, ${glm_property_f_fcst30.telecom_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_other_exp_amt_tofcst30 {
    label: "Exp Other Retail Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_other_exp_amt}, ${glm_property_f_fcst30.retail_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_amt_tofcst30 {
    label: "Exp Other Other Op. Dept. Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_other_exp_amt}, ${glm_property_f_fcst30.other_operated_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_amt_tofcst30 {
    label: "Exp Other Mgmt Srvcs Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_other_exp_amt}, ${glm_property_f_fcst30.property_mgmt_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_other_exp_amt_tofcst30 {
    label: "Exp Other A&G Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.administrative_general_other_exp_amt}, ${glm_property_f_fcst30.administrative_general_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_other_exp_amt_tofcst30 {
    label: "Exp Other IT Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.information_technology_other_exp_amt}, ${glm_property_f_fcst30.information_technology_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_other_exp_amt_tofcst30 {
    label: "Exp Other S&M Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.sales_marketing_other_exp_amt}, ${glm_property_f_fcst30.sales_marketing_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_other_exp_amt_tofcst30 {
    label: "Exp Other R&M Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_operations_maintenance_other_exp_amt}, ${glm_property_f_fcst30.property_operations_maintenance_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_other_exp_amt_tofcst30 {
    label: "Exp Other Rentals & Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_other_exp_amt}, ${glm_property_f_fcst30.misc_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_airport_other_exp_amt_tofcst30 {
    label: "Exp Other Nonoperating Realty Airport Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_airport_other_exp_amt}, ${glm_property_f_fcst30.nonoperating_realty_airport_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_other_exp_amt_tofcst30 {
    label: "Exp Other Nonoperating Utility Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_other_exp_amt}, ${glm_property_f_fcst30.nonoperating_util_other_exp_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll

  measure: payroll_amt_tofcst30_v {
    label: "Payroll Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.payroll_amt} - ${glm_property_f_fcst30.payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_payroll_amt_tofcst30_v {
    label: "Payroll Rms Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.room_payroll_amt} - ${glm_property_f_fcst30.room_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_payroll_amt_tofcst30_v {
    label: "Payroll RB&E Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_payroll_amt} - ${glm_property_f_fcst30.rbe_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_payroll_amt_tofcst30_v {
    label: "Payroll Spa Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_payroll_amt} - ${glm_property_f_fcst30.spa_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_payroll_amt_tofcst30_v {
    label: "Payroll Golf Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.golf_payroll_amt} - ${glm_property_f_fcst30.golf_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_payroll_amt_tofcst30_v {
    label: "Payroll Fitness & Rec Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_payroll_amt} - ${glm_property_f_fcst30.fitness_recreation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_payroll_amt_tofcst30_v {
    label: "Payroll Parking & Trans Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_payroll_amt} - ${glm_property_f_fcst30.parking_transportation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_payroll_amt_tofcst30_v {
    label: "Payroll Telecom Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.telecom_payroll_amt} - ${glm_property_f_fcst30.telecom_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_payroll_amt_tofcst30_v {
    label: "Payroll Retail Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.retail_payroll_amt} - ${glm_property_f_fcst30.retail_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_payroll_amt_tofcst30_v {
    label: "Payroll Other Op. Dept. Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.other_operated_payroll_amt} - ${glm_property_f_fcst30.other_operated_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_payroll_amt_tofcst30_v {
    label: "Payroll Mgmt Srvcs Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_payroll_amt} - ${glm_property_f_fcst30.property_mgmt_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_payroll_amt_tofcst30_v {
    label: "Payroll A&G Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.administrative_general_payroll_amt} - ${glm_property_f_fcst30.administrative_general_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_payroll_amt_tofcst30_v {
    label: "Payroll IT Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.information_technology_payroll_amt} - ${glm_property_f_fcst30.information_technology_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_payroll_amt_tofcst30_v {
    label: "Payroll S&M Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.sales_marketing_payroll_amt} - ${glm_property_f_fcst30.sales_marketing_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_payroll_amt_tofcst30_v {
    label: "Payroll R&M Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_operations_maintenance_payroll_amt} - ${glm_property_f_fcst30.property_operations_maintenance_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_payroll_amt_tofcst30_v {
    label: "Payroll Rentals & Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.misc_payroll_amt} - ${glm_property_f_fcst30.misc_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_airport_payroll_amt_tofcst30_v {
    label: "Payroll Nonoperating Realty Airport Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_airport_payroll_amt} - ${glm_property_f_fcst30.nonoperating_realty_airport_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_payroll_amt_tofcst30_v {
    label: "Payroll Nonoperating Utility Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_payroll_amt} - ${glm_property_f_fcst30.nonoperating_util_payroll_amt} ;;
    value_format_name: decimal_0
  }


  #-- Payroll % var

  measure: payroll_amt_tofcst30 {
    label: "Payroll Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.payroll_amt}, ${glm_property_f_fcst30.payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_payroll_amt_tofcst30 {
    label: "Payroll Rms Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_payroll_amt}, ${glm_property_f_fcst30.room_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_payroll_amt_tofcst30 {
    label: "Payroll RB&E Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_payroll_amt}, ${glm_property_f_fcst30.rbe_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_payroll_amt_tofcst30 {
    label: "Payroll Spa Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_payroll_amt}, ${glm_property_f_fcst30.spa_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_payroll_amt_tofcst30 {
    label: "Payroll Golf Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_payroll_amt}, ${glm_property_f_fcst30.golf_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_amt_tofcst30 {
    label: "Payroll Fitness & Rec Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_payroll_amt}, ${glm_property_f_fcst30.fitness_recreation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_amt_tofcst30 {
    label: "Payroll Parking & Trans Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_payroll_amt}, ${glm_property_f_fcst30.parking_transportation_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_payroll_amt_tofcst30 {
    label: "Payroll Telecom Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_payroll_amt}, ${glm_property_f_fcst30.telecom_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_payroll_amt_tofcst30 {
    label: "Payroll Retail Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_payroll_amt}, ${glm_property_f_fcst30.retail_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_amt_tofcst30 {
    label: "Payroll Other Op. Dept. Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_payroll_amt}, ${glm_property_f_fcst30.other_operated_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_amt_tofcst30 {
    label: "Payroll Mgmt Srvcs Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_payroll_amt}, ${glm_property_f_fcst30.property_mgmt_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: administrative_general_payroll_amt_tofcst30 {
    label: "Payroll A&G Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.administrative_general_payroll_amt}, ${glm_property_f_fcst30.administrative_general_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: information_technology_payroll_amt_tofcst30 {
    label: "Payroll IT Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.information_technology_payroll_amt}, ${glm_property_f_fcst30.information_technology_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_marketing_payroll_amt_tofcst30 {
    label: "Payroll S&M Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.sales_marketing_payroll_amt}, ${glm_property_f_fcst30.sales_marketing_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_payroll_amt_tofcst30 {
    label: "Payroll R&M Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_operations_maintenance_payroll_amt}, ${glm_property_f_fcst30.property_operations_maintenance_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_payroll_amt_tofcst30 {
    label: "Payroll Rentals & Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_payroll_amt}, ${glm_property_f_fcst30.misc_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_airport_payroll_amt_tofcst30 {
    label: "Payroll Nonoperating Realty Airport Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_airport_payroll_amt}, ${glm_property_f_fcst30.nonoperating_realty_airport_payroll_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_payroll_amt_tofcst30 {
    label: "Payroll Nonoperating Utility Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_payroll_amt}, ${glm_property_f_fcst30.nonoperating_util_payroll_amt}) ;;
    value_format_name: percent_1
  }

  #-- Covers

  measure: rbe_cover_cnt_tofcst30_v {
    label: "Cvrs RB&E Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_cover_cnt} - ${glm_property_f_fcst30.rbe_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_cover_cnt_tofcst30_v {
    label: "Cvrs RB&E Banquet Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_cover_cnt} - ${glm_property_f_fcst30.rbe_banquet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_cover_cnt_tofcst30_v {
    label: "Cvrs RB&E Catering Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_cover_cnt} - ${glm_property_f_fcst30.rbe_catering_cover_cnt} ;;
    value_format_name: decimal_0
  }


  measure: rbe_outlet_cover_cnt_tofcst30_v {
    label: "Cvrs RB&E Outlet Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_cover_cnt} - ${glm_property_f_fcst30.rbe_outlet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_cover_cnt_tofcst30_v {
    label: "Cvrs RB&E Room Service Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_other_cover_cnt} - ${glm_property_f_fcst30.rbe_room_service_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_cover_cnt_tofcst30_v {
    label: "Cvrs RB&E Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_other_cover_cnt} - ${glm_property_f_fcst30.rbe_other_cover_cnt} ;;
    value_format_name: decimal_0
  }


  #-- Covers % var

  measure: rbe_cover_cnt_tofcst30 {
    label: "Cvrs RB&E Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_cover_cnt}, ${glm_property_f_fcst30.rbe_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_cover_cnt_tofcst30 {
    label: "Cvrs RB&E Banquet Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_cover_cnt}, ${glm_property_f_fcst30.rbe_banquet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_cover_cnt_tofcst30 {
    label: "Cvrs RB&E Catering Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_cover_cnt}, ${glm_property_f_fcst30.rbe_catering_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_cover_cnt_tofcst30 {
    label: "Cvrs RB&E Outlet Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_cover_cnt}, ${glm_property_f_fcst30.rbe_outlet_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_cover_cnt_tofcst30 {
    label: "Cvrs RB&E Room Service Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_cover_cnt}, ${glm_property_f_fcst30.rbe_room_service_cover_cnt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_cover_cnt_tofcst30 {
    label: "Cvrs RB&E Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_cover_cnt}, ${glm_property_f_fcst30.rbe_other_cover_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Treatments

  measure: spa_treatment_cnt_tofcst30_v {
    label: "Trtmnts Spa Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_treatment_cnt} - ${glm_property_f_fcst30.spa_treatment_cnt} ;;
    value_format_name: decimal_0
  }

  measure: golf_round_cnt_tofcst30_v {
    label: "Rnds Golf Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.golf_round_cnt} - ${glm_property_f_fcst30.golf_round_cnt} ;;
    value_format_name: decimal_0
  }


  #-- Treatments % var

  measure: spa_treatment_cnt_tofcst30 {
    label: "Trtmnts Spa Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_treatment_cnt}, ${glm_property_f_fcst30.spa_treatment_cnt}) ;;
    value_format_name: percent_1
  }

  measure: golf_round_cnt_tofcst30 {
    label: "Rnds Golf Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_round_cnt}, ${glm_property_f_fcst30.golf_round_cnt}) ;;
    value_format_name: percent_1
  }

  #-- Rooms

  measure: arrival_cnt_tofcst30_v {
    label: "Arrivals Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.arrival_cnt} - ${glm_property_f_fcst30.arrival_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_room_cnt_tofcst30_v {
    label: "Rms Occ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.occupied_room_cnt} - ${glm_property_f_fcst30.occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_transient_room_cnt_tofcst30_v {
    label: "Rms Occ Transient Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.occupied_transient_room_cnt} - ${glm_property_f_fcst30.occupied_transient_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_group_room_cnt_tofcst30_v {
    label: "Rms Occ Group Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.occupied_group_room_cnt} - ${glm_property_f_fcst30.occupied_group_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_contract_room_cnt_tofcst30_v {
    label: "Rms Occ Contract Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.occupied_contract_room_cnt} - ${glm_property_f_fcst30.occupied_contract_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avail_room_cnt_tofcst30_v {
    label: "Rms Avail Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.avail_room_cnt} - ${glm_property_f_fcst30.avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_owner_room_cnt_tofcst30_v {
    label: "Rms Occ Owner Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.occupied_owner_room_cnt} - ${glm_property_f_fcst30.occupied_owner_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: comp_room_cnt_tofcst30_v {
    label: "Rms Occ Comp Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.comp_room_cnt - ${glm_property_f_fcst30.comp_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: net_avail_room_cnt_tofcst30_v {
    label: "Rms Avail Net Act:Fcst30 - var"
    type: number
    sql: ${glm_property_f_ty.net_avail_room_cnt - ${glm_property_f_fcst30.net_avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: transient_room_rev_amt_tofcst30_v {
    label: "Rev Rms Transient Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.transient_room_rev_amt} - ${glm_property_f_fcst30.transient_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: group_room_rev_amt_tofcst30_v {
    label: "Rev Rms Group Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.group_room_rev_amt} - ${glm_property_f_fcst30.group_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: contract_room_rev_amt_tofcst30_v {
    label: "Rev Rms Contract Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.contract_room_rev_amt} - ${glm_property_f_fcst30.contract_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: no_show_room_rev_amt_tofcst30_v {
    label: "Rev Rms No show Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.no_show_room_rev_amt} - ${glm_property_f_fcst30.no_show_room_rev_amt} ;;
    value_format_name: decimal_0
  }



  #-- Rooms % var

  measure: arrival_cnt_tofcst30 {
    label: "Arrivals Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.arrival_cnt}, ${glm_property_f_fcst30.arrival_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_room_cnt_tofcst30 {
    label: "Rms Occ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_room_cnt}, ${glm_property_f_fcst30.occupied_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_cnt_tofcst30 {
    label: "Rms Occ Transient Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_transient_room_cnt}, ${glm_property_f_fcst30.occupied_transient_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_cnt_tofcst30 {
    label: "Rms Occ Group Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_group_room_cnt}, ${glm_property_f_fcst30.occupied_group_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_cnt_tofcst30 {
    label: "Rms Occ Contract Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_contract_room_cnt}, ${glm_property_f_fcst30.occupied_contract_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: avail_room_cnt_tofcst30 {
    label: "Rms Avail Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.avail_room_cnt}, ${glm_property_f_fcst30.avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: occupied_owner_room_cnt_tofcst30 {
    label: "Rms Occ Owner Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_owner_room_cnt}, ${glm_property_f_fcst30.occupied_owner_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: comp_room_cnt_tofcst30 {
    label: "Rms Occ Comp Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.comp_room_cnt - ${glm_property_f_fcst30.comp_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: net_avail_room_cnt_tofcst30 {
    label: "Rms Avail Net Act:Fcst30 - var %"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.net_avail_room_cnt - ${glm_property_f_fcst30.net_avail_room_cnt}) ;;
    value_format_name: percent_1
  }

  measure: transient_room_rev_amt_tofcst30 {
    label: "Rev Rms Transient Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.transient_room_rev_amt}, ${glm_property_f_fcst30.transient_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: group_room_rev_amt_tofcst30 {
    label: "Rev Rms Group Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.group_room_rev_amt}, ${glm_property_f_fcst30.group_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  measure: contract_room_rev_amt_tofcst30 {
    label: "Rev Rms Contract Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.contract_room_rev_amt}, ${glm_property_f_fcst30.contract_room_rev_amt}) ;;
    value_format_name: percent_1
  }

  #-- Profit

  measure: profit_amt_tofcst30_v {
    label: "Profit Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.profit_amt} - ${glm_property_f_fcst30.profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_profit_amt_tofcst30_v {
    label: "Profit Rms Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.room_profit_amt} - ${glm_property_f_fcst30.room_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_profit_amt_tofcst30_v {
    label: "Profit RB&E Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_profit_amt} - ${glm_property_f_fcst30.rbe_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_profit_amt_tofcst30_v {
    label: "Profit RB&E Banquet Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_profit_amt} - ${glm_property_f_fcst30.rbe_banquet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_profit_amt_tofcst30_v {
    label: "Profit RB&E Catering Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_profit_amt} - ${glm_property_f_fcst30.rbe_catering_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_profit_amt_tofcst30_v {
    label: "Profit RB&E Conference Services Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_conference_services_profit_amt} - ${glm_property_f_fcst30.rbe_conference_services_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_catering_conference_services_profit_amt_tofcst30_v {
    label: "Profit RB&E Banquet Catering Conference Services Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_catering_conference_services_profit_amt} - ${glm_property_f_fcst30.rbe_banquet_catering_conference_services_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_profit_amt_tofcst30_v {
    label: "Profit RB&E Outlet Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_profit_amt} - ${glm_property_f_fcst30.rbe_outlet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_profit_amt_tofcst30_v {
    label: "Profit RB&E Room Service Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_other_profit_amt} - ${glm_property_f_fcst30.rbe_room_service_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_profit_amt_tofcst30_v {
    label: "Profit RB&E Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_other_profit_amt} - ${glm_property_f_fcst30.rbe_other_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_other_profit_amt_tofcst30_v {
    label: "Profit RB&E Outlet Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_other_profit_amt} - ${glm_property_f_fcst30.rbe_outlet_other_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_profit_amt_tofcst30_v {
    label: "Profit Spa Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_profit_amt} - ${glm_property_f_fcst30.spa_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_profit_amt_tofcst30_v {
    label: "Profit Golf Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.golf_profit_amt} - ${glm_property_f_fcst30.golf_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_profit_amt_tofcst30_v {
    label: "Profit Fitness & Rec Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_profit_amt} - ${glm_property_f_fcst30.fitness_recreation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_profit_amt_tofcst30_v {
    label: "Profit Parking & Trans Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_profit_amt} - ${glm_property_f_fcst30.parking_transportation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_profit_amt_tofcst30_v {
    label: "Profit Telecom Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.telecom_profit_amt} - ${glm_property_f_fcst30.telecom_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_profit_amt_tofcst30_v {
    label: "Profit Retail Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.retail_profit_amt} - ${glm_property_f_fcst30.retail_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_fitness_recreation_profit_amt_tofcst30_v {
    label: "Profit Spa Fitness & Rec Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_fitness_recreation_profit_amt} - ${glm_property_f_fcst30.spa_fitness_recreation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_profit_amt_tofcst30_v {
    label: "Profit Other Op. Dept. Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.other_operated_profit_amt} - ${glm_property_f_fcst30.other_operated_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_profit_amt_tofcst30_v {
    label: "Profit Mgmt Srvcs Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_profit_amt} - ${glm_property_f_fcst30.property_mgmt_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_profit_amt_tofcst30_v {
    label: "Profit Rentals & Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.misc_profit_amt} - ${glm_property_f_fcst30.misc_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_airport_profit_amt_tofcst30_v {
    label: "Profit Nonoperating Realty Airport Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_airport_profit_amt} - ${glm_property_f_fcst30.nonoperating_realty_airport_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_profit_amt_tofcst30_v {
    label: "Profit Nonoperating Utility Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_profit_amt} - ${glm_property_f_fcst30.nonoperating_util_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: undistributed_profit_amt_tofcst30_v {
    label: "Profit Undistributed Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.undistributed_profit_amt} - ${glm_property_f_fcst30.undistributed_profit_amt} ;;
    value_format_name: decimal_0
  }

  #-- Profit % var

  measure: profit_amt_tofcst30 {
    label: "Profit Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.profit_amt}, ${glm_property_f_fcst30.profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_profit_amt_tofcst30 {
    label: "Profit Rms Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_profit_amt}, ${glm_property_f_fcst30.room_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_profit_amt_tofcst30 {
    label: "Profit RB&E Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_profit_amt}, ${glm_property_f_fcst30.rbe_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_profit_amt_tofcst30 {
    label: "Profit RB&E Banquet Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_profit_amt}, ${glm_property_f_fcst30.rbe_banquet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_profit_amt_tofcst30 {
    label: "Profit RB&E Catering Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_profit_amt}, ${glm_property_f_fcst30.rbe_catering_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_profit_amt_tofcst30 {
    label: "Profit RB&E Conference Services Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_conference_services_profit_amt}, ${glm_property_f_fcst30.rbe_conference_services_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_profit_amt_tofcst30 {
    label: "Profit RB&E Outlet Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_profit_amt}, ${glm_property_f_fcst30.rbe_outlet_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_profit_amt_tofcst30 {
    label: "Profit RB&E Room Service Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_profit_amt}, ${glm_property_f_fcst30.rbe_room_service_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_profit_amt_tofcst30 {
    label: "Profit RB&E Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_profit_amt}, ${glm_property_f_fcst30.rbe_other_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_profit_amt_tofcst30 {
    label: "Profit Spa Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_profit_amt}, ${glm_property_f_fcst30.spa_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_profit_amt_tofcst30 {
    label: "Profit Golf Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_profit_amt}, ${glm_property_f_fcst30.golf_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_profit_amt_tofcst30 {
    label: "Profit Fitness & Rec Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_profit_amt}, ${glm_property_f_fcst30.fitness_recreation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_profit_amt_tofcst30 {
    label: "Profit Parking & Trans Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_profit_amt}, ${glm_property_f_fcst30.parking_transportation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_profit_amt_tofcst30 {
    label: "Profit Telecom Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_profit_amt}, ${glm_property_f_fcst30.telecom_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_profit_amt_tofcst30 {
    label: "Profit Retail Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_profit_amt}, ${glm_property_f_fcst30.retail_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_fitness_recreation_profit_amt_tofcst30 {
    label: "Profit Spa Fitness & Rec Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_fitness_recreation_profit_amt}, ${glm_property_f_fcst30.spa_fitness_recreation_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_profit_amt_tofcst30 {
    label: "Profit Other Op. Dept. Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_profit_amt}, ${glm_property_f_fcst30.other_operated_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_profit_amt_tofcst30 {
    label: "Profit Mgmt Srvcs Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_profit_amt}, ${glm_property_f_fcst30.property_mgmt_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_profit_amt_tofcst30 {
    label: "Profit Rentals & Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_profit_amt}, ${glm_property_f_fcst30.misc_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_airport_profit_amt_tofcst30 {
    label: "Profit Nonoperating Realty Airport Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_airport_profit_amt}, ${glm_property_f_fcst30.nonoperating_realty_airport_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_profit_amt_tofcst30 {
    label: "Profit Nonoperating Utility Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_profit_amt}, ${glm_property_f_fcst30.nonoperating_util_profit_amt}) ;;
    value_format_name: percent_1
  }

  measure: undistributed_profit_amt_tofcst30 {
    label: "Profit Undistributed Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.undistributed_profit_amt}, ${glm_property_f_fcst30.undistributed_profit_amt}) ;;
    value_format_name: percent_1
  }

  #-- Cost

  measure: cost_of_sales_amt_tofcst30_v {
    label: "COS Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.cost_of_sales_amt} - ${glm_property_f_fcst30.cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_cost_of_sales_amt_tofcst30_v {
    label: "COS Rms Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.room_cost_of_sales_amt} - ${glm_property_f_fcst30.room_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_cost_of_sales_amt_tofcst30_v {
    label: "COS RB&E Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_cost_of_sales_amt} - ${glm_property_f_fcst30.rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_cost_of_sales_amt_tofcst30_v {
    label: "COS Spa Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_cost_of_sales_amt} - ${glm_property_f_fcst30.spa_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_cost_of_sales_amt_tofcst30_v {
    label: "COS Golf Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.golf_cost_of_sales_amt} - ${glm_property_f_fcst30.golf_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_cost_of_sales_amt_tofcst30_v {
    label: "COS Fitness & Rec Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_cost_of_sales_amt} - ${glm_property_f_fcst30.fitness_recreation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_cost_of_sales_amt_tofcst30_v {
    label: "COS Parking & Trans Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_cost_of_sales_amt} - ${glm_property_f_fcst30.parking_transportation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_cost_of_sales_amt_tofcst30_v {
    label: "COS Telecom Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.telecom_cost_of_sales_amt} - ${glm_property_f_fcst30.telecom_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_cost_of_sales_amt_tofcst30_v {
    label: "COS Retail Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.retail_cost_of_sales_amt} - ${glm_property_f_fcst30.retail_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operated_cost_of_sales_amt_tofcst30_v {
    label: "COS Other Op. Dept. Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.other_operated_cost_of_sales_amt} - ${glm_property_f_fcst30.other_operated_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_cost_of_sales_amt_tofcst30_v {
    label: "COS Mgmt Srvcs Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_cost_of_sales_amt} - ${glm_property_f_fcst30.property_mgmt_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_cost_of_sales_amt_tofcst30_v {
    label: "COS Rentals & Other Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.misc_cost_of_sales_amt} - ${glm_property_f_fcst30.misc_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_realty_airport_cost_of_sales_amt_tofcst30_v {
    label: "COS Nonoperating Realty Airport Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_realty_airport_cost_of_sales_amt} - ${glm_property_f_fcst30.nonoperating_realty_airport_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: nonoperating_util_cost_of_sales_amt_tofcst30_v {
    label: "COS Nonoperating Utility Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.nonoperating_util_cost_of_sales_amt} - ${glm_property_f_fcst30.nonoperating_util_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: food_rbe_cost_of_sales_amt_tofcst30_v {
    label: "COS RB&E Food Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.food_rbe_cost_of_sales_amt} - ${glm_property_f_fcst30.food_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: beverage_rbe_cost_of_sales_amt_tofcst30_v {
    label: "COS RB&E Beverage Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.beverage_rbe_cost_of_sales_amt} - ${glm_property_f_fcst30.beverage_rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_tofcst30_v {
    label: "Rev /Trtmnt Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.spa_rev_treatment_avg_amt} - ${glm_property_f_fcst30.spa_rev_treatment_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_rev_round_avg_amt_tofcst30_v {
    label: "Rev /Rnd Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.golf_rev_round_avg_amt} - ${glm_property_f_fcst30.golf_rev_round_avg_amt} ;;
    value_format_name: decimal_2
  }

#-- Cost % var


  measure: cost_of_sales_amt_tofcst30 {
    label: "COS Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.cost_of_sales_amt}, ${glm_property_f_fcst30.cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_cost_of_sales_amt_tofcst30 {
    label: "COS Rms Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_cost_of_sales_amt}, ${glm_property_f_fcst30.room_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_cost_of_sales_amt_tofcst30 {
    label: "COS RB&E Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_cost_of_sales_amt}, ${glm_property_f_fcst30.rbe_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: spa_cost_of_sales_amt_tofcst30 {
    label: "COS Spa Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_cost_of_sales_amt}, ${glm_property_f_fcst30.spa_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_cost_of_sales_amt_tofcst30 {
    label: "COS Golf Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_cost_of_sales_amt}, ${glm_property_f_fcst30.golf_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_cost_of_sales_amt_tofcst30 {
    label: "COS Fitness & Rec Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.fitness_recreation_cost_of_sales_amt}, ${glm_property_f_fcst30.fitness_recreation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_cost_of_sales_amt_tofcst30 {
    label: "COS Parking & Trans Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.parking_transportation_cost_of_sales_amt}, ${glm_property_f_fcst30.parking_transportation_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: telecom_cost_of_sales_amt_tofcst30 {
    label: "COS Telecom Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.telecom_cost_of_sales_amt}, ${glm_property_f_fcst30.telecom_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: retail_cost_of_sales_amt_tofcst30 {
    label: "COS Retail Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.retail_cost_of_sales_amt}, ${glm_property_f_fcst30.retail_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: other_operated_cost_of_sales_amt_tofcst30 {
    label: "COS Other Op. Dept. Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.other_operated_cost_of_sales_amt}, ${glm_property_f_fcst30.other_operated_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_cost_of_sales_amt_tofcst30 {
    label: "COS Mgmt Srvcs Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.property_mgmt_cost_of_sales_amt}, ${glm_property_f_fcst30.property_mgmt_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: misc_cost_of_sales_amt_tofcst30 {
    label: "COS Rentals & Other Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.misc_cost_of_sales_amt}, ${glm_property_f_fcst30.misc_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_airport_cost_of_sales_amt_tofcst30 {
    label: "COS Nonoperating Realty Airport Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_realty_airport_cost_of_sales_amt}, ${glm_property_f_fcst30.nonoperating_realty_airport_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_cost_of_sales_amt_tofcst30 {
    label: "COS Nonoperating Utility Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.nonoperating_util_cost_of_sales_amt}, ${glm_property_f_fcst30.nonoperating_util_cost_of_sales_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_tofcst30 {
    label: "Rev /Trtmnt Spa Act:LY - var %"
    description: "Actual - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.spa_rev_treatment_avg_amt}, ${glm_property_f_fcst30.spa_rev_treatment_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: golf_rev_round_avg_amt_tofcst30 {
    label: "Rev /Rnd Golf Act:LY - var %"
    description: "Actual - LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.golf_rev_round_avg_amt}, ${glm_property_f_fcst30.golf_rev_round_avg_amt}) ;;
    value_format_name: percent_1
  }


  #-- Occupancy

  measure: occupied_room_pct_tofcst30_v {
    label: "Rms Occ % Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.occupied_room_pct} - ${glm_property_f_fcst30.occupied_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tofcst30_v {
    label: "Rms Occ % Group Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.occupied_group_room_pct} - ${glm_property_f_fcst30.occupied_group_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tofcst30_v {
    label: "Rms Occ % Transient Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.occupied_transient_room_pct} - ${glm_property_f_fcst30.occupied_transient_room_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tofcst30_v {
    label: "Rms Occ % Contract Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.occupied_contract_room_pct} - ${glm_property_f_fcst30.occupied_contract_room_pct} ;;
    value_format_name: percent_1
  }


  #-- Occupancy % var

  measure: occupied_room_pct_tofcst30 {
    label: "Rms Occ % Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_room_pct}, ${glm_property_f_fcst30.occupied_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct_tofcst30 {
    label: "Rms Occ % Group Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_group_room_pct}, ${glm_property_f_fcst30.occupied_group_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct_tofcst30 {
    label: "Rms Occ % Transient Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_transient_room_pct}, ${glm_property_f_fcst30.occupied_transient_room_pct}) ;;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct_tofcst30 {
    label: "Rms Occ % Contract Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.occupied_contract_room_pct}, ${glm_property_f_fcst30.occupied_contract_room_pct}) ;;
    value_format_name: percent_1
  }

  #-- ADR

  measure: adr_amt_tofcst30_v {
    label: "ADR $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.adr_amt} - ${glm_property_f_fcst30.adr_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_transient_amt_tofcst30_v {
    label: "ADR Transient $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.adr_transient_amt} - ${glm_property_f_fcst30.adr_transient_amt} ;;
    value_format_name: decimal_2
  }

  measure: adr_group_amt_tofcst30_v {
    label: "ADR Group $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.adr_group_amt} - ${glm_property_f_fcst30.adr_group_amt} ;;
    value_format_name: decimal_2
  }

  #-- ADR % var

  measure: adr_amt_tofcst30 {
    label: "ADR $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_amt}, ${glm_property_f_fcst30.adr_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_transient_amt_tofcst30 {
    label: "ADR Transient $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_transient_amt}, ${glm_property_f_fcst30.adr_transient_amt}) ;;
    value_format_name: percent_1
  }

  measure: adr_group_amt_tofcst30 {
    label: "ADR Group $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.adr_group_amt}, ${glm_property_f_fcst30.adr_group_amt}) ;;
    value_format_name: percent_1
  }

  #-- Room nights

  measure: room_night_transient_pct_tofcst30_v {
    label: "Rms Night Transient % Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.room_night_transient_pct} - ${glm_property_f_fcst30.room_night_transient_pct} ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tofcst30_v {
    label: "Rms Night Group % Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.room_night_group_pct} - ${glm_property_f_fcst30.room_night_group_pct} ;;
    value_format_name: percent_1
  }

  #-- Room nights % var

  measure: room_night_transient_pct_tofcst30 {
    label: "Rms Night Transient % Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_night_transient_pct}, ${glm_property_f_fcst30.room_night_transient_pct}) ;;
    value_format_name: percent_1
  }

  measure: room_night_group_pct_tofcst30 {
    label: "Rms Night Group % Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.room_night_group_pct}, ${glm_property_f_fcst30.room_night_group_pct}) ;;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_amt_tofcst30_v {
    label: "Rev PAR $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rev_par_amt} - ${glm_property_f_fcst30.rev_par_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_group_amt_tofcst30_v {
    label: "Rev PAR $ Group Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rev_par_group_amt} - ${glm_property_f_fcst30.rev_par_group_amt} ;;
    value_format_name: usd_0
  }

  measure: rev_par_transient_amt_tofcst30_v {
    label: "Rev PAR $ Transient Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rev_par_transient_amt} - ${glm_property_f_fcst30.rev_par_transient_amt} ;;
    value_format_name: usd_0
  }

  #-- Rev PAR % var

  measure: rev_par_amt_tofcst30 {
    label: "Rev PAR $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_par_amt}, ${glm_property_f_fcst30.rev_par_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_group_amt_tofcst30 {
    label: "Rev PAR $ Group Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_par_group_amt}, ${glm_property_f_fcst30.rev_par_group_amt}) ;;
    value_format_name: percent_1
  }

  measure: rev_par_transient_amt_tofcst30 {
    label: "Rev PAR $ Transient Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rev_par_transient_amt}, ${glm_property_f_fcst30.rev_par_transient_amt}) ;;
    value_format_name: percent_1
  }

  #-- Avg check

  measure: rbe_check_avg_amt_tofcst30_v {
    label: "Cvrs RB&E Avg $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_check_avg_amt} - ${glm_property_f_fcst30.rbe_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_check_avg_amt_tofcst30_v {
    label: "Cvrs RB&E Banquet Avg $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_check_avg_amt} - ${glm_property_f_fcst30.rbe_banquet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_check_avg_amt_tofcst30_v {
    label: "Cvrs RB&E Catering Avg $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_check_avg_amt} - ${glm_property_f_fcst30.rbe_catering_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_check_avg_amt_tofcst30_v {
    label: "Cvrs RB&E Outlet Avg $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_check_avg_amt} - ${glm_property_f_fcst30.rbe_outlet_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_room_service_check_avg_amt_tofcst30_v {
    label: "Cvrs RB&E Room Service Avg $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_room_service_check_avg_amt} - ${glm_property_f_fcst30.rbe_room_service_check_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_check_avg_amt_tofcst30_v {
    label: "Cvrs RB&E Other Avg $ Act:Fcst30 - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_other_check_avg_amt} - ${glm_property_f_fcst30.rbe_other_check_avg_amt} ;;
    value_format_name: decimal_2
  }


  #-- Avg check % var

  measure: rbe_check_avg_amt_tofcst30 {
    label: "Cvrs RB&E Avg $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_check_avg_amt}, ${glm_property_f_fcst30.rbe_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_check_avg_amt_tofcst30 {
    label: "Cvrs RB&E Banquet Avg $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_banquet_check_avg_amt}, ${glm_property_f_fcst30.rbe_banquet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_check_avg_amt_tofcst30 {
    label: "Cvrs RB&E Catering Avg $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_catering_check_avg_amt}, ${glm_property_f_fcst30.rbe_catering_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_check_avg_amt_tofcst30 {
    label: "Cvrs RB&E Outlet Avg $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_outlet_check_avg_amt}, ${glm_property_f_fcst30.rbe_outlet_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_room_service_check_avg_amt_tofcst30 {
    label: "Cvrs RB&E Room Service Avg $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_room_service_check_avg_amt}, ${glm_property_f_fcst30.rbe_room_service_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_check_avg_amt_tofcst30 {
    label: "Cvrs RB&E Other Avg $ Act:Fcst30 - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.rbe_other_check_avg_amt}, ${glm_property_f_fcst30.rbe_other_check_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev
  measure: payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.payroll_rev_pct} - ${glm_property_f_fcst30.payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  #-- Payroll /Rev % var

  measure: payroll_rev_pct_tofcst30 {
    label: "Payroll /Rev Act:LY - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.payroll_rev_pct}, ${glm_property_f_fcst30.payroll_rev_pct}) ;;
    value_format_name: percent_1
  }


  #-- Avg length of stay

  measure: length_of_stay_avg_amt_tofcst30_v {
    label: "Stay Length Avg Night Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.length_of_stay_avg_amt} - ${glm_property_f_fcst30.length_of_stay_avg_amt} ;;
    value_format_name: decimal_1
  }

  #-- Avg length of stay % var

  measure: length_of_stay_avg_amt_tofcst30 {
    label: "Stay Length Avg Night Act:LY - var %"
    description: "(Actual - Fcst30) / Fcst30"
    type: number
    sql: utl..udf_percent_var( ${glm_property_f_ty.length_of_stay_avg_amt}, ${glm_property_f_fcst30.length_of_stay_avg_amt}) ;;
    value_format_name: percent_1
  }

  #-- Payroll Rev %

  measure: room_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Rms Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.room_payroll_rev_pct} - ${glm_property_f_fcst30.room_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: rbe_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev RB&E Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.rbe_payroll_rev_pct} - ${glm_property_f_fcst30.rbe_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: spa_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Spa Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.spa_payroll_rev_pct} - ${glm_property_f_fcst30.spa_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: golf_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Golf Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.golf_payroll_rev_pct} - ${glm_property_f_fcst30.golf_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Fitness & Rec Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.fitness_recreation_payroll_rev_pct} - ${glm_property_f_fcst30.fitness_recreation_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Parking & Trans Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.parking_transportation_payroll_rev_pct - ${glm_property_f_fcst30.parking_transportation_payroll_rev_pct} ;;
    value_format_name: usd_0
  }

  measure: telecom_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Telecom Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.telecom_payroll_rev_pct} - ${glm_property_f_fcst30.telecom_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: retail_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Retail Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.retail_payroll_rev_pct} - ${glm_property_f_fcst30.retail_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Other Op. Dept. Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.other_operated_payroll_rev_pct} - ${glm_property_f_fcst30.other_operated_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Mgmt Srvcs Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.property_mgmt_payroll_rev_pct} - ${glm_property_f_fcst30.property_mgmt_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: misc_payroll_rev_pct_tofcst30_v {
    label: "Payroll /Rev Rentals & Other % Act:LY - var"
    description: "Actual - Fcst30"
    type: number
    sql: ${glm_property_f_ty.misc_payroll_rev_pct} - ${glm_property_f_fcst30.misc_payroll_rev_pct} ;;
    value_format_name: percent_1
  }

}
