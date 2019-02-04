view: rc_glm_property_f_ty {
  derived_table: {
    sql: select 1 as key_no ;;
  }

  dimension: key_no {
    primary_key: yes
    type: number
    sql: ${TABLE}.key_no ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: property_key {
    type:  number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.date_sid ;;
    hidden: yes
  }

  dimension: gl_posting_type_cd {
    type: string
    sql: ${TABLE}.gl_posting_type_cd ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Dimensions
  #-------------------------------------------------------------------------------------------

  dimension: measure_bt {
    sql: ${rc_glm_property_f.act_bt} ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  measure: rev_amt {
    label: "Rev $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${rc_glm_property_f.rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: AGOP {
    label: "AGOP $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${rc_glm_property_f.AGOP}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_rev_amt {
    label: "Rev Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_rev_amt {
    label: "Rev RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_rev_amt {
    label: "Rev RB&E Banquet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_banquet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_rev_amt {
    label: "Rev RB&E Catering $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_catering_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_rev_amt {
    label: "Rev RB&E Outlet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_outlet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_conference_services_rev_amt {
    label: "Rev RB&E Conference Services $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_conference_services_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_room_service_rev_amt {
    label: "Rev RB&E Room Service $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_room_service_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_rev_amt {
    label: "Rev RB&E Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_other_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_rev_amt {
    label: "Rev Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.spa_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_rev_amt {
    label: "Rev Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.golf_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_rev_amt {
    label: "Rev Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.fitness_recreation_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_rev_amt {
    label: "Rev Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.parking_transportation_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_rev_amt {
    label: "Rev Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.telecom_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_rev_amt {
    label: "Rev Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.retail_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operations_rev_amt {
    label: "Rev Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.other_operations_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_rev_amt {
    label: "Rev Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.property_mgmt_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_rev_amt {
    label: "Rev Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.misc_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Expenses

  measure: exp_amt {
    label: "Exp $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_exp_amt {
    label: "Exp Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.room_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_exp_amt {
    label: "Exp RB&E $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_exp_amt {
    label: "Exp Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.spa_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_exp_amt {
    label: "Exp Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.golf_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_exp_amt {
    label: "Exp Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.fitness_recreation_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_exp_amt {
    label: "Exp Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.parking_transportation_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_exp_amt {
    label: "Exp Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.telecom_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_exp_amt {
    label: "Exp Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.retail_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operations_exp_amt {
    label: "Exp Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.other_operations_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_exp_amt {
    label: "Exp Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.property_mgmt_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: administrative_general_exp_amt {
    label: "Exp A&G $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.administrative_general_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: information_technology_exp_amt {
    label: "Exp IT $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.information_technology_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: sales_marketing_exp_amt {
    label: "Exp S&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.sales_marketing_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_operations_maintenance_exp_amt {
    label: "Exp R&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.property_operations_maintenance_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_exp_amt {
    label: "Exp Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.misc_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }


  #-- Other Expenses

  measure: other_exp_amt {
    label: "Exp Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_other_exp_amt {
    label: "Exp Other Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.room_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_exp_amt {
    label: "Exp Other RB&E $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_other_exp_amt {
    label: "Exp Other Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.spa_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_other_exp_amt {
    label: "Exp Other Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.golf_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_other_exp_amt {
    label: "Exp Other Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.fitness_recreation_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_other_exp_amt {
    label: "Exp Other Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.parking_transportation_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_other_exp_amt {
    label: "Exp Other Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.telecom_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_other_exp_amt {
    label: "Exp Other Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.retail_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operations_other_exp_amt {
    label: "Exp Other Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.other_operations_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_other_exp_amt {
    label: "Exp Other Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.property_mgmt_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: administrative_general_other_exp_amt {
    label: "Exp Other A&G $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.administrative_general_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: information_technology_other_exp_amt {
    label: "Exp Other IT $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.information_technology_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: sales_marketing_other_exp_amt {
    label: "Exp Other S&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.sales_marketing_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_operations_maintenance_other_exp_amt {
    label: "Exp Other R&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.property_operations_maintenance_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_other_exp_amt {
    label: "Exp Other Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.misc_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Payroll

  measure: payroll_amt {
    label: "Payroll $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_payroll_amt {
    label: "Payroll Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.room_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_payroll_amt {
    label: "Payroll RB&E $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_payroll_amt {
    label: "Payroll Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.spa_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_payroll_amt {
    label: "Payroll Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.golf_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_payroll_amt {
    label: "Payroll Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.fitness_recreation_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_payroll_amt {
    label: "Payroll Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.parking_transportation_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_payroll_amt {
    label: "Payroll Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.telecom_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_payroll_amt {
    label: "Payroll Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.retail_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operations_payroll_amt {
    label: "Payroll Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.other_operations_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_payroll_amt {
    label: "Payroll Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.property_mgmt_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: administrative_general_payroll_amt {
    label: "Payroll A&G $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.administrative_general_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: information_technology_payroll_amt {
    label: "Payroll IT $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.information_technology_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: sales_marketing_payroll_amt {
    label: "Payroll S&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.sales_marketing_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_operations_maintenance_payroll_amt {
    label: "Payroll R&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.property_operations_maintenance_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_payroll_amt {
    label: "Payroll Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.misc_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Covers

  measure: rbe_cover_cnt {
    label: "Cvrs RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_cover_cnt {
    label: "Cvrs RB&E Banquet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_banquet_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_cover_cnt {
    label: "Cvrs RB&E Catering $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_catering_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_cover_cnt {
    label: "Cvrs RB&E Outlet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_outlet_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_room_service_cover_cnt {
    label: "Cvrs RB&E Room Service $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_room_service_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_cover_cnt {
    label: "Cvrs RB&E Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_other_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Treatments

  measure: spa_treatment_cnt {
    label: "Trtmnts Spa"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.spa_treatment_cnt}, to_number( null ) ) ;;
  }

  measure: golf_round_cnt {
    label: "Rnds Golf"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.golf_round_cnt}, to_number( null ) ) ;;
  }

  #-- Rooms

  measure: arrival_cnt {
    label: "Arrivals"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.arrival_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_room_cnt {
    label: "Rms Occ"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.occupied_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_transient_room_cnt {
    label: "Rms Occ Transient"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.occupied_transient_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_group_room_cnt {
    label: "Rms Occ Group"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.occupied_group_room_cnt}, to_number( null ) ) ;;
  }

  measure: avail_room_cnt {
    label: "Rms Avail"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.avail_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_owner_room_cnt {
    label: "Rms Occ Owner"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.occupied_owner_room_cnt}, to_number( null ) ) ;;
  }

  measure: comp_room_cnt {
    label: "Rms Occ Comp"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.comp_room_cnt}, to_number( null ) ) ;;
  }

  measure: net_avail_room_cnt {
    label: "Rms Avail Net"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.net_avail_room_cnt}, to_number( null ) ) ;;
  }

  #-- Group / Transient

  measure: transient_room_rev_amt {
    label: "Rev Rms Transient $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.transient_room_rev_amt}, to_number( null ) ) ;;
  }

  measure: group_room_rev_amt {
    label: "Rev Rms Group $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.group_room_rev_amt}, to_number( null ) ) ;;
  }

  #-- Profit

  measure: profit_amt {
    label: "Profit $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_profit_amt {
    label: "Profit Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.room_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_profit_amt {
    label: "Profit RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_profit_amt {
    label: "Profit RB&E Banquet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_banquet_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_profit_amt {
    label: "Profit RB&E Catering $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_catering_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_profit_amt {
    label: "Profit RB&E Outlet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_outlet_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_conference_services_profit_amt {
    label: "Profit RB&E Conference Services $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_conference_services_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_room_service_profit_amt {
    label: "Profit RB&E Room Service $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_room_service_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_profit_amt {
    label: "Profit RB&E Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_other_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_profit_amt {
    label: "Profit Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.spa_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_profit_amt {
    label: "Profit Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.golf_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_profit_amt {
    label: "Profit Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.fitness_recreation_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_profit_amt {
    label: "Profit Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.parking_transportation_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_profit_amt {
    label: "Profit Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.telecom_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_profit_amt {
    label: "Profit Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.retail_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operations_profit_amt {
    label: "Profit Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.other_operations_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_profit_amt {
    label: "Profit Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.property_mgmt_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_profit_amt {
    label: "Profit Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.misc_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Cost

  measure: cost_of_sales_amt {
    label: "COS $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_cost_of_sales_amt {
    label: "COS Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.room_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_cost_of_sales_amt {
    label: "COS RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${rc_glm_property_f.rbe_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_cost_of_sales_amt {
    label: "COS Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.spa_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_cost_of_sales_amt {
    label: "COS Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.golf_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_cost_of_sales_amt {
    label: "COS Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.fitness_recreation_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_cost_of_sales_amt {
    label: "COS Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.parking_transportation_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_cost_of_sales_amt {
    label: "COS Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.telecom_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_cost_of_sales_amt {
    label: "COS Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.retail_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operations_cost_of_sales_amt {
    label: "COS Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.other_operations_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_cost_of_sales_amt {
    label: "COS Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.property_mgmt_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_cost_of_sales_amt {
    label: "COS Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${rc_glm_property_f.misc_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt {
    label: "Rev /Trtmnt Spa $"
    type: number
    sql: utl..udf_divide( ${spa_rev_amt}, ${spa_treatment_cnt} );;
    value_format_name: decimal_2
  }

  measure: golf_rev_round_avg_amt {
    label: "Rev /Rnd Golf $"
    type: number
    sql: utl..udf_divide( ${golf_rev_amt}, ${golf_round_cnt} );;
    value_format_name: decimal_2
  }

  #-- Occupancy

  measure: occupied_room_pct {
    label: "Rms Occ %"
    type: number
    sql: utl..udf_divide( ${occupied_room_cnt}, ${net_avail_room_cnt} );;
    value_format_name: percent_1
  }

  #-- ADR

  measure: adr_amt {
    label: "ADR $"
    type: number
    sql: utl..udf_divide( ${room_rev_amt}, ${occupied_room_cnt} );;
    value_format_name: decimal_2
  }

  measure: adr_transient_amt {
    label: "ADR Transient $"
    type: number
    sql: utl..udf_divide( ${transient_room_rev_amt}, ${occupied_transient_room_cnt} );;
    value_format_name: decimal_2
  }

  measure: adr_group_amt {
    label: "ADR Group $"
    type: number
    sql: utl..udf_divide( ${group_room_rev_amt}, ${occupied_group_room_cnt} );;
    value_format_name: decimal_2
  }

  #-- Room nights

  measure: room_night_transient_pct {
    label: "Rms Night Transient %"
    type: number
    sql: utl..udf_divide( ${occupied_transient_room_cnt}, ${occupied_room_cnt} );;
    value_format_name: percent_1
  }

  measure: room_night_group_pct {
    label: "Rms Night Group %"
    type: number
    sql: utl..udf_divide( ${occupied_group_room_cnt}, ${occupied_room_cnt} );;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_amt {
    label: "Rev PAR $"
    type: number
    sql: utl..udf_divide( ${room_rev_amt}, ${net_avail_room_cnt} );;
    value_format_name: decimal_2
  }

  #-- Avg check

  measure: rbe_check_avg_amt {
    label: "Cvrs RB&E Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_rev_amt}, ${rbe_cover_cnt} );;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_check_avg_amt {
    label: "Cvrs RB&E Banquet Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_banquet_rev_amt}, ${rbe_banquet_cover_cnt} );;
    value_format_name: decimal_2
  }

  measure: rbe_catering_check_avg_amt {
    label: "Cvrs RB&E Catering Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_catering_rev_amt}, ${rbe_catering_cover_cnt} );;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_check_avg_amt {
    label: "Cvrs RB&E Outlet Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_outlet_rev_amt}, ${rbe_outlet_cover_cnt} );;
    value_format_name: decimal_2
  }

  measure: rbe_room_service_check_avg_amt {
    label: "Cvrs RB&E Room Service Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_room_service_rev_amt}, ${rbe_room_service_cover_cnt} );;
    value_format_name: decimal_2
  }

  measure: rbe_other_check_avg_amt {
    label: "Cvrs RB&E Other Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_other_rev_amt}, ${rbe_other_cover_cnt} );;
    value_format_name: decimal_2
  }

}