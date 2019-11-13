view: glm_property_f {
  sql_table_name: pedw.fact.glm_property_f ;;

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
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: measure_bt {
    sql: select 1 ;;
    hidden: yes
  }

  dimension: act_bt {
    type: number
    sql: ${TABLE}.act_bt ;;
    hidden: yes
  }

  dimension: act_ly_bt {
    type: number
    sql: ${TABLE}.act_ly_bt ;;
    hidden: yes
  }

  dimension: bdgt_bt {
    type: number
    sql: ${TABLE}.bdgt_bt ;;
    hidden: yes
  }

  dimension: fcst30_bt {
    type: number
    sql: ${TABLE}.fcst30_bt ;;
    hidden: yes
  }

  dimension: fcst60_bt {
    type: number
    sql: ${TABLE}.fcst60_bt ;;
    hidden: yes
  }

  #dimension: fcst_bt {
  #  type: number
  #  sql: ${TABLE}.fcst_bt ;;
  #  hidden: yes
  #}

  dimension: rev_amt {
    type: number
    sql: ${TABLE}.rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: agop_amt {
    type: number
    sql: ${TABLE}.agop_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #dimension: agop_abs_amt {
  #  type: number
  #  sql: ${TABLE}.agop_abs_amt ;;
  #  value_format_name: usd_0
  #  hidden: yes
  #}

  dimension: gop_amt {
    type: number
    sql: ${TABLE}.gop_amt ;;
    value_format_name: usd_0
    hidden: yes
  }


  #-- Revenues

  dimension: room_rev_amt {
    type: number
    sql: ${TABLE}.room_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: other_rev_amt {
    type: number
    sql: ${TABLE}.other_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_rev_amt {
    type: number
    sql: ${TABLE}.rbe_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_banquet_rev_amt {
    type: number
    sql: ${TABLE}.rbe_banquet_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_catering_rev_amt {
    type: number
    sql: ${TABLE}.rbe_catering_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_outlet_rev_amt {
    type: number
    sql: ${TABLE}.rbe_outlet_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_conference_services_rev_amt {
    type: number
    sql: ${TABLE}.rbe_conference_services_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_banquet_catering_conference_services_rev_amt {
    type: number
    sql: ${TABLE}.rbe_banquet_catering_conference_services_rev_amt;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_room_service_rev_amt {
    type: number
    sql: ${TABLE}.rbe_room_service_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_other_rev_amt {
    type: number
    sql: ${TABLE}.rbe_other_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #dimension: rbe_outlet_other_rev_amt {
  #  type: number
  #  sql: ${TABLE}.rbe_outlet_other_rev_amt ;;
  #  value_format_name: usd_0
  #  hidden: yes
  #}


  dimension: food_rbe_rev_amt {
    type: number
    sql: ${TABLE}.food_rbe_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: food_rbe_banquet_rev_amt {
    type: number
    sql: ${TABLE}.food_rbe_banquet_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: food_rbe_catering_rev_amt {
    type: number
    sql: ${TABLE}.food_rbe_catering_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: food_rbe_outlet_rev_amt {
    type: number
    sql: ${TABLE}.food_rbe_outlet_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: food_rbe_conference_services_rev_amt {
    type: number
    sql: ${TABLE}.food_rbe_conference_services_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: food_rbe_room_service_rev_amt {
    type: number
    sql: ${TABLE}.food_rbe_room_service_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: food_rbe_other_rev_amt {
    type: number
    sql: ${TABLE}.food_rbe_other_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }


  dimension: beverage_rbe_rev_amt {
    type: number
    sql: ${TABLE}.beverage_rbe_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: beverage_rbe_banquet_rev_amt {
    type: number
    sql: ${TABLE}.beverage_rbe_banquet_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: beverage_rbe_catering_rev_amt {
    type: number
    sql: ${TABLE}.beverage_rbe_catering_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: beverage_rbe_outlet_rev_amt {
    type: number
    sql: ${TABLE}.beverage_rbe_outlet_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: beverage_rbe_conference_services_rev_amt {
    type: number
    sql: ${TABLE}.beverage_rbe_conference_services_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: beverage_rbe_room_service_rev_amt {
    type: number
    sql: ${TABLE}.beverage_rbe_room_service_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: beverage_rbe_other_rev_amt {
    type: number
    sql: ${TABLE}.beverage_rbe_other_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: spa_rev_amt {
    type: number
    sql: ${TABLE}.spa_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: golf_rev_amt {
    type: number
    sql: ${TABLE}.golf_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fitness_recreation_rev_amt {
    type: number
    sql: ${TABLE}.fitness_recreation_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: parking_transportation_rev_amt {
    type: number
    sql: ${TABLE}.parking_transportation_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: telecom_rev_amt {
    type: number
    sql: ${TABLE}.telecom_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: retail_rev_amt {
    type: number
    sql: ${TABLE}.retail_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: spa_fitness_recreation_rev_amt {
    type: number
    sql: ${TABLE}.spa_fitness_recreation_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: other_operated_rev_amt {
    type: number
    sql: ${TABLE}.other_operated_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: property_mgmt_rev_amt {
    type: number
    sql: ${TABLE}.property_mgmt_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: misc_rev_amt {
    type: number
    sql: ${TABLE}.misc_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_realty_rev_amt {
    type: number
    sql: ${TABLE}.nonoperating_realty_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_airport_rev_amt {
    type: number
    sql: ${TABLE}.nonoperating_airport_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_util_rev_amt {
    type: number
    sql: ${TABLE}.nonoperating_util_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: undistributed_rev_amt {
    type: number
    sql: ${TABLE}.undistributed_util_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- Expenses

  dimension: exp_amt {
    type: number
    sql: ${TABLE}.exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: room_exp_amt {
    type: number
    sql: ${TABLE}.room_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_exp_amt {
    type: number
    sql: ${TABLE}.rbe_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: spa_exp_amt {
    type: number
    sql: ${TABLE}.spa_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: golf_exp_amt {
    type: number
    sql: ${TABLE}.golf_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fitness_recreation_exp_amt {
    type: number
    sql: ${TABLE}.fitness_recreation_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: parking_transportation_exp_amt {
    type: number
    sql: ${TABLE}.parking_transportation_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: telecom_exp_amt {
    type: number
    sql: ${TABLE}.telecom_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: retail_exp_amt {
    type: number
    sql: ${TABLE}.retail_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: other_operated_exp_amt {
    type: number
    sql: ${TABLE}.other_operated_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: property_mgmt_exp_amt {
    type: number
    sql: ${TABLE}.property_mgmt_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: administrative_general_exp_amt {
    type: number
    sql: ${TABLE}.administrative_general_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: information_technology_exp_amt {
    type: number
    sql: ${TABLE}.information_technology_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: sales_marketing_exp_amt {
    type: number
    sql: ${TABLE}.sales_marketing_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: property_operations_maintenance_exp_amt {
    type: number
    sql: ${TABLE}.property_operations_maintenance_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: misc_exp_amt {
    type: number
    sql: ${TABLE}.misc_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_realty_exp_amt {
    type: number
    sql: ${TABLE}.nonoperating_realty_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_airport_exp_amt {
    type: number
    sql: ${TABLE}.nonoperating_airport_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_util_exp_amt {
    type: number
    sql: ${TABLE}.nonoperating_util_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }


  #-- Other Expenses

  dimension: other_exp_amt {
    type: number
    sql: ${TABLE}.other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: room_other_exp_amt {
    type: number
    sql: ${TABLE}.room_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_other_exp_amt {
    type: number
    sql: ${TABLE}.rbe_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: spa_other_exp_amt {
    type: number
    sql: ${TABLE}.spa_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: golf_other_exp_amt {
    type: number
    sql: ${TABLE}.golf_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fitness_recreation_other_exp_amt {
    type: number
    sql: ${TABLE}.fitness_recreation_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: parking_transportation_other_exp_amt {
    type: number
    sql: ${TABLE}.parking_transportation_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: telecom_other_exp_amt {
    type: number
    sql: ${TABLE}.telecom_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: retail_other_exp_amt {
    type: number
    sql: ${TABLE}.retail_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: other_operated_other_exp_amt {
    type: number
    sql: ${TABLE}.other_operated_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: property_mgmt_other_exp_amt {
    type: number
    sql: ${TABLE}.property_mgmt_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: administrative_general_other_exp_amt {
    type: number
    sql: ${TABLE}.administrative_general_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: information_technology_other_exp_amt {
    type: number
    sql: ${TABLE}.information_technology_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: sales_marketing_other_exp_amt {
    type: number
    sql: ${TABLE}.sales_marketing_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: property_operations_maintenance_other_exp_amt {
    type: number
    sql: ${TABLE}.property_operations_maintenance_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: misc_other_exp_amt {
    type: number
    sql: ${TABLE}.misc_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_realty_other_exp_amt {
    type: number
    sql: ${TABLE}.nonoperating_realty_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_airport_other_exp_amt {
    type: number
    sql: ${TABLE}.nonoperating_airport_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_util_other_exp_amt {
    type: number
    sql: ${TABLE}.nonoperating_util_other_exp_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- Payroll

#   dimension: payroll_amt {
#     type: number
#     sql: ${TABLE}.payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: room_payroll_amt {
#     type: number
#     sql: ${TABLE}.room_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: rbe_payroll_amt {
#     type: number
#     sql: ${TABLE}.rbe_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: spa_payroll_amt {
#     type: number
#     sql: ${TABLE}.spa_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: golf_payroll_amt {
#     type: number
#     sql: ${TABLE}.golf_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: fitness_recreation_payroll_amt {
#     type: number
#     sql: ${TABLE}.fitness_recreation_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: parking_transportation_payroll_amt {
#     type: number
#     sql: ${TABLE}.parking_transportation_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: telecom_payroll_amt {
#     type: number
#     sql: ${TABLE}.telecom_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: retail_payroll_amt {
#     type: number
#     sql: ${TABLE}.retail_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: other_operated_payroll_amt {
#     type: number
#     sql: ${TABLE}.other_operated_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: property_mgmt_payroll_amt {
#     type: number
#     sql: ${TABLE}.property_mgmt_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: administrative_general_payroll_amt {
#     type: number
#     sql: ${TABLE}.administrative_general_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: information_technology_payroll_amt {
#     type: number
#     sql: ${TABLE}.information_technology_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: sales_marketing_payroll_amt {
#     type: number
#     sql: ${TABLE}.sales_marketing_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: property_operations_maintenance_payroll_amt {
#     type: number
#     sql: ${TABLE}.property_operations_maintenance_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: misc_payroll_amt {
#     type: number
#     sql: ${TABLE}.misc_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: nonoperating_realty_payroll_amt {
#     type: number
#     sql: ${TABLE}.nonoperating_realty_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: nonoperating_airport_payroll_amt {
#     type: number
#     sql: ${TABLE}.nonoperating_airport_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: nonoperating_util_payroll_amt {
#     type: number
#     sql: ${TABLE}.nonoperating_util_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }
#
#   dimension: rbe_outlet_payroll_amt {
#     type: number
#     sql: ${TABLE}.rbe_outlet_payroll_amt ;;
#     value_format_name: usd_0
#     hidden: yes
#   }

  #-- Covers

  dimension: rbe_cover_cnt {
    type: number
    sql: ${TABLE}.rbe_cover_cnt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_banquet_cover_cnt {
    type: number
    sql: ${TABLE}.rbe_banquet_cover_cnt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_catering_cover_cnt {
    type: number
    sql: ${TABLE}.rbe_catering_cover_cnt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_outlet_cover_cnt {
    type: number
    sql: ${TABLE}.rbe_outlet_cover_cnt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_room_service_cover_cnt {
    type: number
    sql: ${TABLE}.rbe_room_service_cover_cnt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_other_cover_cnt {
    type: number
    sql: ${TABLE}.rbe_other_cover_cnt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- Treatments

  dimension: spa_treatment_cnt {
    type: number
    sql: ${TABLE}.spa_treatment_cnt ;;
    hidden: yes
  }

  dimension: golf_round_cnt {
    type: number
    sql: ${TABLE}.golf_round_cnt ;;
    hidden: yes
  }

  #-- Rooms

  dimension: arrival_cnt {
    type: number
    sql: ${TABLE}.arrival_cnt ;;
    hidden: yes
  }

  dimension: occupied_room_cnt {
    type: number
    sql: ${TABLE}.occupied_room_cnt ;;
    hidden: yes
  }

  dimension: occupied_transient_room_cnt {
    type: number
    sql: ${TABLE}.occupied_transient_room_cnt ;;
    hidden: yes
  }

  dimension: occupied_group_room_cnt {
    type: number
    sql: ${TABLE}.occupied_group_room_cnt ;;
    hidden: yes
  }

  dimension: occupied_contract_room_cnt {
    type: number
    sql: ${TABLE}.occupied_contract_room_cnt ;;
    hidden: yes
  }

  dimension: avail_room_cnt {
    type: number
    sql: ${TABLE}.avail_room_cnt ;;
    hidden: yes
  }

  dimension: occupied_owner_room_cnt {
    type: number
    sql: ${TABLE}.occupied_owner_room_cnt ;;
    hidden: yes
  }

  dimension: comp_room_cnt {
    type: number
    sql: ${TABLE}.comp_room_cnt ;;
    hidden: yes
  }

  dimension: net_avail_room_cnt {
    type: number
    sql: ${TABLE}.net_avail_room_cnt ;;
    hidden: yes
  }

  #-- Group/Transient

  dimension: transient_room_rev_amt {
    type: number
    sql: ${TABLE}.transient_room_rev_amt ;;
    hidden: yes
  }

  dimension: group_room_rev_amt {
    type: number
    sql: ${TABLE}.group_room_rev_amt ;;
    hidden: yes
  }

  dimension: contract_room_rev_amt {
    type: number
    sql: ${TABLE}.contract_room_rev_amt ;;
    hidden: yes
  }

  dimension: no_show_room_rev_amt {
    type: number
    sql: ${TABLE}.no_show_room_rev_amt ;;
    hidden: yes
  }

  dimension: service_charge_room_rev_amt {
    type: number
    sql: ${TABLE}.service_charge_incl_room_rev_amt ;;
    hidden: yes
  }

  dimension: service_charge_incl_room_rev_amt {
    type: number
    sql: ${TABLE}.service_charge_incl_room_rev_amt ;;
    hidden: yes
  }

  dimension: other_room_rev_amt {
    type: number
    sql: ${TABLE}.other_room_rev_amt ;;
    hidden: yes
  }

  #-- Profit

  dimension: profit_amt {
    type: number
    sql: ${TABLE}.profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: room_profit_amt {
    type: number
    sql: ${TABLE}.room_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_profit_amt {
    type: number
    sql: ${TABLE}.rbe_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_banquet_profit_amt {
    type: number
    sql: ${TABLE}.rbe_banquet_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_catering_profit_amt {
    type: number
    sql: ${TABLE}.rbe_catering_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_outlet_profit_amt {
    type: number
    sql: ${TABLE}.rbe_outlet_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #dimension: rbe_outlet_other_profit_amt {
  #  type: number
  #  sql: ${TABLE}.rbe_outlet_other_profit_amt ;;
  #  value_format_name: usd_0
  #  hidden: yes
  #}

  dimension: rbe_conference_services_profit_amt {
    type: number
    sql: ${TABLE}.rbe_conference_services_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #dimension: rbe_banquet_catering_conference_services_profit_amt {
  #  type: number
  #  sql: ${TABLE}.rbe_banquet_catering_conference_services_profit_amt ;;
  #  value_format_name: usd_0
  #  hidden: yes
  #}

  dimension: rbe_room_service_profit_amt {
    type: number
    sql: ${TABLE}.rbe_room_service_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_other_profit_amt {
    type: number
    sql: ${TABLE}.rbe_other_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: spa_profit_amt {
    type: number
    sql: ${TABLE}.spa_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: golf_profit_amt {
    type: number
    sql: ${TABLE}.golf_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fitness_recreation_profit_amt {
    type: number
    sql: ${TABLE}.fitness_recreation_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: parking_transportation_profit_amt {
    type: number
    sql: ${TABLE}.parking_transportation_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: telecom_profit_amt {
    type: number
    sql: ${TABLE}.telecom_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: retail_profit_amt {
    type: number
    sql: ${TABLE}.retail_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #dimension: spa_fitness_recreation_profit_amt {
  #  type: number
  #  sql: ${TABLE}.spa_fitness_recreation_profit_amt ;;
  #  value_format_name: usd_0
  #  hidden: yes
  #}

  dimension: other_operated_profit_amt {
    type: number
    sql: ${TABLE}.other_operated_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: property_mgmt_profit_amt {
    type: number
    sql: ${TABLE}.property_mgmt_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: misc_profit_amt {
    type: number
    sql: ${TABLE}.misc_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_realty_profit_amt {
    type: number
    sql: ${TABLE}.nonoperating_realty_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_airport_profit_amt {
    type: number
    sql: ${TABLE}.nonoperating_airport_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_util_profit_amt {
    type: number
    sql: ${TABLE}.nonoperating_util_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: undistributed_profit_amt {
    type: number
    sql: ${TABLE}.undistributed_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- Cost

  dimension: cost_of_sales_amt {
    type: number
    sql: ${TABLE}.cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: room_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.room_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.rbe_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_banquet_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.rbe_banquet_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_catering_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.rbe_catering_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_outlet_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.rbe_outlet_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_conference_services_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.rbe_conference_services_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_room_service_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.rbe_room_service_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_other_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.rbe_other_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: spa_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.spa_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: golf_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.golf_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fitness_recreation_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.fitness_recreation_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: parking_transportation_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.parking_transportation_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: telecom_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.telecom_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: retail_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.retail_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: other_operated_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.other_operated_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: property_mgmt_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.property_mgmt_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: misc_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.misc_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_airport_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.nonoperating_airport_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_util_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.nonoperating_util_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_realty_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.nonoperating_realty_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: food_rbe_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.food_rbe_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: beverage_rbe_cost_of_sales_amt {
    type: number
    sql: ${TABLE}.beverage_rbe_cost_of_sales_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- Rental property splits
  dimension: room_rental_mgmt_2_19_rev_amt {
    type: number
    sql: ${TABLE}.room_rental_mgmt_2_19_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: avail_room_rental_mgmt_2_19_cnt {
    type: number
    sql: ${TABLE}.avail_room_rental_mgmt_2_19_cnt ;;
    hidden: yes
  }

  dimension: occupied_owner_room_rental_mgmt_2_19_cnt {
    type: number
    sql: ${TABLE}.occupied_owner_room_rental_mgmt_2_19_cnt ;;
    hidden: yes
  }

  dimension: net_avail_room_rental_mgmt_2_19_cnt {
    type: number
    sql: ${TABLE}.net_avail_room_rental_mgmt_2_19_cnt ;;
    hidden: yes
  }

  dimension: occupied_room_rental_mgmt_2_19_cnt {
    type: number
    sql: ${TABLE}.occupied_room_rental_mgmt_2_19_cnt ;;
    hidden: yes
  }

  dimension: transient_room_rental_mgmt_2_19_rev_amt {
    type: number
    sql: ${TABLE}.transient_room_rental_mgmt_2_19_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: group_room_rental_mgmt_2_19_rev_amt {
    type: number
    sql: ${TABLE}.group_room_rental_mgmt_2_19_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: contract_room_rental_mgmt_2_19_rev_amt {
    type: number
    sql: ${TABLE}.contract_room_rental_mgmt_2_19_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }
  dimension: occupied_transient_room_rental_mgmt_2_19_cnt {
    type: number
    sql: ${TABLE}.occupied_transient_room_rental_mgmt_2_19_cnt ;;
    hidden: yes
  }

  dimension: occupied_group_room_rental_mgmt_2_19_cnt {
    type: number
    sql: ${TABLE}.occupied_group_room_rental_mgmt_2_19_cnt ;;
    hidden: yes
  }

  dimension: occupied_contract_room_rental_mgmt_2_19_cnt {
    type: number
    sql: ${TABLE}.occupied_contract_room_rental_mgmt_2_19_cnt ;;
    hidden: yes
  }



}
