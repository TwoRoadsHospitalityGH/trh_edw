view: rc_glm_property_f_toly {
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

  measure: rev_amt_toly_v {
    label: "Rev Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rev_amt} - ${rc_glm_property_f_ly.rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: AGOP_toly_v {
    label: "AGOP Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.AGOP} - ${rc_glm_property_f_ly.AGOP} ;;
    value_format_name: decimal_0
  }

  measure: room_rev_amt_toly_v {
    label: "Rev Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.room_rev_amt} - ${rc_glm_property_f_ly.room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_rev_amt_toly_v {
    label: "Rev RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_rev_amt} - ${rc_glm_property_f_ly.rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_rev_amt_toly_v {
    label: "Rev RB&E Banquet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_banquet_rev_amt} - ${rc_glm_property_f_ly.rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_rev_toly_v {
    label: "Rev RB&E Catering Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_catering_rev_amt} - ${rc_glm_property_f_ly.rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_rev_toly_v {
    label: "Rev RB&E Conference Services Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_conference_services_rev_amt} - ${rc_glm_property_f_ly.rbe_conference_services_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_rev_amt_toly_v {
    label: "Rev RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_outlet_rev_amt} - ${rc_glm_property_f_ly.rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_rev_amt_toly_v {
    label: "Rev RB&E Room Service Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_room_service_rev_amt} - ${rc_glm_property_f_ly.rbe_room_service_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_rev_amt_toly_v {
    label: "Rev RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_other_rev_amt} - ${rc_glm_property_f_ly.rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_rev_amt_toly_v {
    label: "Rev Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.spa_rev_amt} - ${rc_glm_property_f_ly.spa_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_rev_amt_toly_v {
    label: "Rev Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.golf_rev_amt} - ${rc_glm_property_f_ly.golf_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_rev_amt_toly_v {
    label: "Rev Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.fitness_recreation_rev_amt} - ${rc_glm_property_f_ly.fitness_recreation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_rev_amt_toly_v {
    label: "Rev Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.parking_transportation_rev_amt} - ${rc_glm_property_f_ly.parking_transportation_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_rev_amt_toly_v {
    label: "Rev Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.telecom_rev_amt} - ${rc_glm_property_f_ly.telecom_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_rev_amt_toly_v {
    label: "Rev Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.retail_rev_amt} - ${rc_glm_property_f_ly.retail_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operations_rev_amt_toly_v {
    label: "Rev Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.other_operations_rev_amt} - ${rc_glm_property_f_ly.other_operations_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_rev_amt_toly_v {
    label: "Rev Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.property_mgmt_rev_amt} - ${rc_glm_property_f_ly.property_mgmt_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_rev_amt_toly_v {
    label: "Rev Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.misc_rev_amt} - ${rc_glm_property_f_ly.misc_rev_amt} ;;
    value_format_name: decimal_0
  }

  # -- Expenses

  measure: exp_amt_toly_v {
    label: "Exp Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.exp_amt} - ${rc_glm_property_f_ly.exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_exp_amt_toly_v {
    label: "Exp Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.room_exp_amt} - ${rc_glm_property_f_ly.room_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_exp_amt_toly_v {
    label: "Exp RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_exp_amt} - ${rc_glm_property_f_ly.rbe_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_exp_amt_toly_v {
    label: "Exp Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.spa_exp_amt} - ${rc_glm_property_f_ly.spa_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_exp_amt_toly_v {
    label: "Exp Golf Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.golf_exp_amt} - ${rc_glm_property_f_ly.golf_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_exp_amt_toly_v {
    label: "Exp Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.fitness_recreation_exp_amt} - ${rc_glm_property_f_ly.fitness_recreation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_exp_amt_toly_v {
    label: "Exp Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.parking_transportation_exp_amt} - ${rc_glm_property_f_ly.parking_transportation_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_exp_amt_toly_v {
    label: "Exp Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.telecom_exp_amt} - ${rc_glm_property_f_ly.telecom_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_exp_amt_toly_v {
    label: "Exp Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.retail_exp_amt} - ${rc_glm_property_f_ly.retail_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operations_exp_amt_toly_v {
    label: "Exp Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.other_operations_exp_amt} - ${rc_glm_property_f_ly.other_operations_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_exp_amt_toly_v {
    label: "Exp Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.property_mgmt_exp_amt} - ${rc_glm_property_f_ly.property_mgmt_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_exp_amt_toly_v {
    label: "Exp A&G Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.administrative_general_exp_amt} - ${rc_glm_property_f_ly.administrative_general_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_exp_amt_toly_v {
    label: "Exp IT Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.information_technology_exp_amt} - ${rc_glm_property_f_ly.information_technology_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_exp_amt_toly_v {
    label: "Exp S&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.sales_marketing_exp_amt} - ${rc_glm_property_f_ly.sales_marketing_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_exp_amt_toly_v {
    label: "Exp R&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.property_operations_maintenance_exp_amt} - ${rc_glm_property_f_ly.property_operations_maintenance_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_exp_amt_toly_v {
    label: "Exp Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.misc_exp_amt} - ${rc_glm_property_f_ly.misc_exp_amt} ;;
    value_format_name: decimal_0
  }


  # -- Other Expenses

  measure: other_exp_amt_toly_v {
    label: "Exp Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.other_exp_amt} - ${rc_glm_property_f_ly.other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_other_exp_amt_toly_v {
    label: "Exp Other Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.room_other_exp_amt} - ${rc_glm_property_f_ly.room_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_exp_amt_toly_v {
    label: "Exp Other RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_other_exp_amt} - ${rc_glm_property_f_ly.rbe_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_other_exp_amt_toly_v {
    label: "Exp Other Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.spa_other_exp_amt} - ${rc_glm_property_f_ly.spa_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_other_exp_amt_toly_v {
    label: "Exp Other Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.golf_other_exp_amt} - ${rc_glm_property_f_ly.golf_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_other_exp_amt_toly_v {
    label: "Exp Other Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.fitness_recreation_other_exp_amt} - ${rc_glm_property_f_ly.fitness_recreation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_other_exp_amt_toly_v {
    label: "Exp Other Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.parking_transportation_other_exp_amt} - ${rc_glm_property_f_ly.parking_transportation_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_other_exp_amt_toly_v {
    label: "Exp Other Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.telecom_other_exp_amt} - ${rc_glm_property_f_ly.telecom_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_other_exp_amt_toly_v {
    label: "Exp Other Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.retail_other_exp_amt} - ${rc_glm_property_f_ly.retail_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operations_other_exp_amt_toly_v {
    label: "Exp Other Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.other_operations_other_exp_amt} - ${rc_glm_property_f_ly.other_operations_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_other_exp_amt_toly_v {
    label: "Exp Other Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.property_mgmt_other_exp_amt} - ${rc_glm_property_f_ly.property_mgmt_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_other_exp_amt_toly_v {
    label: "Exp Other A&G Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.administrative_general_other_exp_amt} - ${rc_glm_property_f_ly.administrative_general_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_other_exp_amt_toly_v {
    label: "Exp Other IT Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.information_technology_other_exp_amt} - ${rc_glm_property_f_ly.information_technology_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_other_exp_amt_toly_v {
    label: "Exp Other S&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.sales_marketing_other_exp_amt} - ${rc_glm_property_f_ly.sales_marketing_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_other_exp_amt_toly_v {
    label: "Exp Other R&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.property_operations_maintenance_other_exp_amt} - ${rc_glm_property_f_ly.property_operations_maintenance_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_other_exp_amt_toly_v {
    label: "Exp Other Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.misc_other_exp_amt} - ${rc_glm_property_f_ly.misc_other_exp_amt} ;;
    value_format_name: decimal_0
  }

  #-- Payroll

  measure: payroll_amt_toly_v {
    label: "Payroll Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.payroll_amt} - ${rc_glm_property_f_ly.payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_payroll_amt_toly_v {
    label: "Payroll Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.room_payroll_amt} - ${rc_glm_property_f_ly.room_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_payroll_amt_toly_v {
    label: "Payroll RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_payroll_amt} - ${rc_glm_property_f_ly.rbe_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_payroll_amt_toly_v {
    label: "Payroll Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.spa_payroll_amt} - ${rc_glm_property_f_ly.spa_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_payroll_amt_toly_v {
    label: "Payroll RB&E Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.golf_payroll_amt} - ${rc_glm_property_f_ly.golf_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_payroll_amt_toly_v {
    label: "Payroll Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.fitness_recreation_payroll_amt} - ${rc_glm_property_f_ly.fitness_recreation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_payroll_amt_toly_v {
    label: "Payroll Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.parking_transportation_payroll_amt} - ${rc_glm_property_f_ly.parking_transportation_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_payroll_amt_toly_v {
    label: "Payroll Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.telecom_payroll_amt} - ${rc_glm_property_f_ly.telecom_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_payroll_amt_toly_v {
    label: "Payroll Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.retail_payroll_amt} - ${rc_glm_property_f_ly.retail_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operations_payroll_amt_toly_v {
    label: "Payroll Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.other_operations_payroll_amt} - ${rc_glm_property_f_ly.other_operations_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_payroll_amt_toly_v {
    label: "Payroll Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.property_mgmt_payroll_amt} - ${rc_glm_property_f_ly.property_mgmt_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: administrative_general_payroll_amt_toly_v {
    label: "Payroll A&G Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.administrative_general_payroll_amt} - ${rc_glm_property_f_ly.administrative_general_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: information_technology_payroll_amt_toly_v {
    label: "Payroll IT Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.information_technology_payroll_amt} - ${rc_glm_property_f_ly.information_technology_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: sales_marketing_payroll_amt_toly_v {
    label: "Payroll S&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.sales_marketing_payroll_amt} - ${rc_glm_property_f_ly.sales_marketing_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_operations_maintenance_payroll_amt_toly_v {
    label: "Payroll R&M Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.property_operations_maintenance_payroll_amt} - ${rc_glm_property_f_ly.property_operations_maintenance_payroll_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_payroll_amt_toly_v {
    label: "Payroll Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.misc_payroll_amt} - ${rc_glm_property_f_ly.misc_payroll_amt} ;;
    value_format_name: decimal_0
  }

  #-- Covers

  measure: rbe_cover_cnt_toly_v {
    label: "Cvrs RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_cover_cnt} - ${rc_glm_property_f_ly.rbe_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_cover_cnt_toly_v {
    label: "Cvrs RB&E Banquet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_banquet_cover_cnt} - ${rc_glm_property_f_ly.rbe_banquet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_cover_toly_v {
    label: "Cvrs RB&E Catering Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_catering_cover_cnt} - ${rc_glm_property_f_ly.rbe_catering_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_cover_cnt_toly_v {
    label: "Cvrs RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_outlet_cover_cnt} - ${rc_glm_property_f_ly.rbe_outlet_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_cover_cnt_toly_v {
    label: "Cvrs RB&E Room Service Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_room_service_cover_cnt} - ${rc_glm_property_f_ly.rbe_room_service_cover_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_cover_cnt_toly_v {
    label: "Cvrs RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_other_cover_cnt} - ${rc_glm_property_f_ly.rbe_other_cover_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Treatments

  measure: spa_treatment_cnt_toly_v {
    label: "Trtmnts Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.spa_treatment_cnt} - ${rc_glm_property_f_ly.spa_treatment_cnt} ;;
    value_format_name: decimal_0
  }

  measure: golf_round_cnt_toly_v {
    label: "Rnds Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.golf_round_cnt} - ${rc_glm_property_f_ly.golf_round_cnt} ;;
    value_format_name: decimal_0
  }

  #-- Rooms

  measure: arrival_cnt_toly_v {
    label: "Arrivals Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.arrival_cnt} - ${rc_glm_property_f_ly.arrival_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_room_cnt_toly_v {
    label: "Rms Occ Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.occupied_room_cnt} - ${rc_glm_property_f_ly.occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_transient_room_cnt_toly_v {
    label: "Rms Occ Transient Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.occupied_transient_room_cnt} - ${rc_glm_property_f_ly.occupied_transient_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: occupied_group_room_cnt_toly_v {
    label: "Rms Occ Group Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.occupied_group_room_cnt} - ${rc_glm_property_f_ly.occupied_group_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avail_room_cnt_toly_v {
    label: "Rms Avail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.avail_room_cnt} - ${rc_glm_property_f_ly.avail_room_cnt} ;;
    value_format_name: decimal_0
  }
  measure: occupied_owner_room_cnt_toly_v {
    label: "Rms Occ Owner Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.occupied_owner_room_cnt} - ${rc_glm_property_f_ly.occupied_owner_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: comp_room_cnt_toly_v {
    label: "Rms Occ Comp Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.comp_room_cnt - ${rc_glm_property_f_ly.comp_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: net_avail_room_cnt_toly_v {
    label: "Rms Avail Net Act:LY - var"
    type: number
    sql: ${rc_glm_property_f_ty.net_avail_room_cnt - ${rc_glm_property_f_ly.net_avail_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: transient_room_rev_amt_toly_v {
    label: "Rev Rms Transient Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.transient_room_rev_amt - ${rc_glm_property_f_ly.transient_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: group_room_rev_amt_toly_v {
    label: "Rev Rms Group Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.group_room_rev_amt - ${rc_glm_property_f_ly.group_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  #-- Profit

  measure: profit_amt_toly_v {
    label: "Profit Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.profit_amt} - ${rc_glm_property_f_ly.profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_profit_amt_toly_v {
    label: "Profit Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.room_profit_amt} - ${rc_glm_property_f_ly.room_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_profit_amt_toly_v {
    label: "Profit RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_profit_amt} - ${rc_glm_property_f_ly.rbe_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_profit_amt_toly_v {
    label: "Profit RB&E Banquet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_banquet_profit_amt} - ${rc_glm_property_f_ly.rbe_banquet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_profit_amt_toly_v {
    label: "Profit RB&E Catering Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_catering_profit_amt} - ${rc_glm_property_f_ly.rbe_catering_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_conference_services_profit_amt_toly_v {
    label: "Profit RB&E Conference Services Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_conference_services_profit_amt} - ${rc_glm_property_f_ly.rbe_conference_services_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_profit_amt_toly_v {
    label: "Profit RB&E Outlet Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_outlet_profit_amt} - ${rc_glm_property_f_ly.rbe_outlet_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_room_service_profit_amt_toly_v {
    label: "Profit RB&E Room Service Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_room_service_profit_amt} - ${rc_glm_property_f_ly.rbe_room_service_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_profit_amt_toly_v {
    label: "Profit RB&E Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_other_profit_amt} - ${rc_glm_property_f_ly.rbe_other_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_profit_amt_toly_v {
    label: "Profit Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.spa_profit_amt} - ${rc_glm_property_f_ly.spa_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_profit_amt_toly_v {
    label: "Profit Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.golf_profit_amt} - ${rc_glm_property_f_ly.golf_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_profit_amt_toly_v {
    label: "Profit Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.fitness_recreation_profit_amt} - ${rc_glm_property_f_ly.fitness_recreation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_profit_amt_toly_v {
    label: "Profit Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.parking_transportation_profit_amt} - ${rc_glm_property_f_ly.parking_transportation_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_profit_amt_toly_v {
    label: "Profit Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.telecom_profit_amt} - ${rc_glm_property_f_ly.telecom_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_profit_amt_toly_v {
    label: "Profit Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.retail_profit_amt} - ${rc_glm_property_f_ly.retail_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operations_profit_amt_toly_v {
    label: "Profit Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.other_operations_profit_amt} - ${rc_glm_property_f_ly.other_operations_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_profit_amt_toly_v {
    label: "Profit Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.property_mgmt_profit_amt} - ${rc_glm_property_f_ly.property_mgmt_profit_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_profit_amt_toly_v {
    label: "Profit Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.misc_profit_amt} - ${rc_glm_property_f_ly.misc_profit_amt} ;;
    value_format_name: decimal_0
  }

  #-- Cost

  measure: cost_of_sales_amt_toly_v {
    label: "COS Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.cost_of_sales_amt} - ${rc_glm_property_f_ly.cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: room_cost_of_sales_amt_toly_v {
    label: "COS Rms Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.room_cost_of_sales_amt} - ${rc_glm_property_f_ly.room_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_cost_of_sales_amt_toly_v {
    label: "COS RB&E Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.rbe_cost_of_sales_amt} - ${rc_glm_property_f_ly.rbe_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: spa_cost_of_sales_amt_toly_v {
    label: "COS Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.spa_cost_of_sales_amt} - ${rc_glm_property_f_ly.spa_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: golf_cost_of_sales_amt_toly_v {
    label: "COS Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.golf_cost_of_sales_amt} - ${rc_glm_property_f_ly.golf_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: fitness_recreation_cost_of_sales_amt_toly_v {
    label: "COS Fitness & Rec Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.fitness_recreation_cost_of_sales_amt} - ${rc_glm_property_f_ly.fitness_recreation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: parking_transportation_cost_amt_toly_v {
    label: "COS Parking & Trans Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.parking_transportation_cost_of_sales_amt} - ${rc_glm_property_f_ly.parking_transportation_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: telecom_cost_of_sales_amt_toly_v {
    label: "COS Telecom Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.telecom_cost_of_sales_amt} - ${rc_glm_property_f_ly.telecom_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: retail_cost_of_sales_amt_toly_v {
    label: "COS Retail Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.retail_cost_of_sales_amt} - ${rc_glm_property_f_ly.retail_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: other_operations_toly_v {
    label: "COS Other Op. Dept. Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.other_operations_cost_of_sales_amt} - ${rc_glm_property_f_ly.other_operations_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_mgmt_cost_of_sales_amt_toly_v {
    label: "COS Mgmt Srvcs Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.property_mgmt_cost_of_sales_amt} - ${rc_glm_property_f_ly.property_mgmt_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  measure: misc_cost_of_sales_amt_toly_v {
    label: "COS Rentals & Other Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.misc_cost_of_sales_amt} - ${rc_glm_property_f_ly.misc_cost_of_sales_amt} ;;
    value_format_name: decimal_0
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt_toly_v {
    label: "Rev /Trtmnt Spa Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.spa_rev_treatment_avg_amt} - ${rc_glm_property_f_ly.spa_rev_treatment_avg_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_rev_round_avg_amt_toly_v {
    label: "Rev /Rnd Golf Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rc_glm_property_f_ty.golf_rev_round_avg_amt} - ${rc_glm_property_f_ly.golf_rev_round_avg_amt} ;;
    value_format_name: decimal_2
  }

}
