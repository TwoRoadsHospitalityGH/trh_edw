view: glm_property_flow_f {
  sql_table_name: pedw.fact.glm_property_flow_f ;;

  dimension: property_key {
    type:  number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: month_date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.month_date_sid ;;
    hidden: yes
  }

  dimension: period_type_shk {
    type: string
    sql: ${TABLE}.period_type_shk ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: measure_bt {
    sql: select 1 ;;
    hidden: yes
  }

#-- Revenue


  dimension: actual_rev_amt {
    type: number
    sql: ${TABLE}.actual_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_rbe_banquet_catering_conference_services_rev_amt {
    type: number
    sql: ${TABLE}.actual_rbe_banquet_catering_conference_services_rev_amt;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_rbe_outlet_other_rev_amt {
    type: number
    sql: ${TABLE}.actual_rbe_outlet_other_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_other_operated_rev_amt {
    type: number
    sql: ${TABLE}.actual_other_operated_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_spa_fitness_recreation_rev_amt {
    type: number
    sql: ${TABLE}.actual_spa_fitness_recreation_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_retail_rev_amt {
    type: number
    sql: ${TABLE}.actual_retail_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_golf_rev_amt {
    type: number
    sql: ${TABLE}.actual_golf_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_property_mgmt_rev_amt {
    type: number
    sql: ${TABLE}.actual_property_mgmt_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_nonoperating_realty_airport_rev_amt {
    type: number
    sql: ${TABLE}.actual_nonoperating_realty_airport_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_nonoperating_util_rev_amt {
    type: number
    sql: ${TABLE}.actual_nonoperating_util_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_misc_rev_amt {
    type: number
    sql: ${TABLE}.actual_misc_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_undistributed_rev_amt {
    type: number
    sql: ${TABLE}.actual_undistributed_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- ADR and rooms

  dimension: actual_adr_amt {
    type: number
    sql: ${TABLE}.actual_adr_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_room_rev_amt {
    type: number
    sql: ${TABLE}.actual_room_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_occupied_room_cnt {
    type: number
    sql: ${TABLE}.actual_occupied_room_cnt ;;
    value_format_name: usd_0
    hidden: yes
  }


#-- Profit


  #dimension: actual_profit_amt {
  #  type: number
  #  sql: ${TABLE}.actual_profit_amt ;;
  #  value_format_name: usd_0
  #  hidden: yes
  #}

  dimension: actual_rbe_banquet_catering_conference_services_profit_amt {
    type: number
    sql: ${TABLE}.actual_rbe_banquet_catering_conference_services_profit_amt;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_rbe_outlet_other_profit_amt {
    type: number
    sql: ${TABLE}.actual_rbe_outlet_other_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_other_operated_profit_amt {
    type: number
    sql: ${TABLE}.actual_other_operated_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_spa_fitness_recreation_profit_amt {
    type: number
    sql: ${TABLE}.actual_spa_fitness_recreation_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_retail_profit_amt {
    type: number
    sql: ${TABLE}.actual_retail_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_golf_profit_amt {
    type: number
    sql: ${TABLE}.actual_golf_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_property_mgmt_profit_amt {
    type: number
    sql: ${TABLE}.actual_property_mgmt_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_nonoperating_realty_airport_profit_amt {
    type: number
    sql: ${TABLE}.actual_nonoperating_realty_airport_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_nonoperating_util_profit_amt {
    type: number
    sql: ${TABLE}.actual_nonoperating_util_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_misc_profit_amt {
    type: number
    sql: ${TABLE}.actual_misc_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_undistributed_profit_amt {
    type: number
    sql: ${TABLE}.actual_undistributed_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- ADR and rooms


  dimension: actual_room_profit_amt {
    type: number
    sql: ${TABLE}.actual_room_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }




  #-- Budget



  dimension: budget_rev_amt {
    type: number
    sql: ${TABLE}.budget_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_rbe_banquet_catering_conference_services_rev_amt {
    type: number
    sql: ${TABLE}.budget_rbe_banquet_catering_conference_services_rev_amt;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_rbe_outlet_other_rev_amt {
    type: number
    sql: ${TABLE}.budget_rbe_outlet_other_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_other_operated_rev_amt {
    type: number
    sql: ${TABLE}.budget_other_operated_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_spa_fitness_recreation_rev_amt {
    type: number
    sql: ${TABLE}.budget_spa_fitness_recreation_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_retail_rev_amt {
    type: number
    sql: ${TABLE}.budget_retail_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_golf_rev_amt {
    type: number
    sql: ${TABLE}.budget_golf_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_property_mgmt_rev_amt {
    type: number
    sql: ${TABLE}.budget_property_mgmt_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_nonoperating_realty_airport_rev_amt {
    type: number
    sql: ${TABLE}.budget_nonoperating_realty_airport_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_nonoperating_util_rev_amt {
    type: number
    sql: ${TABLE}.budget_nonoperating_util_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_misc_rev_amt {
    type: number
    sql: ${TABLE}.budget_misc_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_undistributed_rev_amt {
    type: number
    sql: ${TABLE}.budget_undistributed_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }


#-- Profit


  #dimension: budget_profit_amt {
  #  type: number
  #  sql: ${TABLE}.budget_profit_amt ;;
  #  value_format_name: usd_0
  #  hidden: yes
  #}

  dimension: budget_rbe_banquet_catering_conference_services_profit_amt {
    type: number
    sql: ${TABLE}.budget_rbe_banquet_catering_conference_services_profit_amt;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_rbe_outlet_other_profit_amt {
    type: number
    sql: ${TABLE}.budget_rbe_outlet_other_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_other_operated_profit_amt {
    type: number
    sql: ${TABLE}.budget_other_operated_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_spa_fitness_recreation_profit_amt {
    type: number
    sql: ${TABLE}.budget_spa_fitness_recreation_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_retail_profit_amt {
    type: number
    sql: ${TABLE}.budget_retail_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_golf_profit_amt {
    type: number
    sql: ${TABLE}.budget_golf_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_property_mgmt_profit_amt {
    type: number
    sql: ${TABLE}.budget_property_mgmt_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_nonoperating_realty_airport_profit_amt {
    type: number
    sql: ${TABLE}.budget_nonoperating_realty_airport_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_nonoperating_util_profit_amt {
    type: number
    sql: ${TABLE}.budget_nonoperating_util_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_misc_profit_amt {
    type: number
    sql: ${TABLE}.budget_misc_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_undistributed_profit_amt {
    type: number
    sql: ${TABLE}.budget_undistributed_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }


  #-- ADR and rooms


  dimension: budget_adr_amt {
    type: number
    sql: ${TABLE}.budget_adr_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_room_rev_amt {
    type: number
    sql: ${TABLE}.budget_room_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: budget_occupied_room_cnt {
    type: number
    sql: ${TABLE}.budget_occupied_room_cnt ;;
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: budget_room_profit_amt {
    type: number
    sql: ${TABLE}.budget_room_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }



# Act to Bdgt


  dimension: actual_to_budget_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_adr_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_adr_var_amt ;;
    value_format_name: decimal_2
    hidden: yes
  }

  dimension: actual_to_budget_occupied_room_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_occupied_room_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_rbe_banquet_catering_conference_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_rbe_banquet_catering_conference_rev_var_amt;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_rbe_outlet_other_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_rbe_outlet_other_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_other_operated_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_other_operated_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_spa_fitness_recreation_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_spa_fitness_recreation_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_retail_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_retail_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_golf_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_golf_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_property_mgmt_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_property_mgmt_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_nonoperating_realty_airport_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_nonoperating_realty_airport_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_nonoperating_util_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_nonoperating_util_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_misc_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_misc_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_budget_undistributed_rev_var_amt {
    type: number
    sql: ${TABLE}.actual_to_budget_undistributed_rev_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }




  #-- Flow, Flex, and Optimals

  dimension: adr_flex_flow_pct {
    type: number
    sql: ${TABLE}.adr_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: occupied_flex_flow_pct {
    type: number
    sql: ${TABLE}.occupied_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: rbe_banquet_catering_conference_flex_flow_pct {
    type: number
    sql: ${TABLE}.rbe_banquet_catering_conference_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: rbe_outlet_other_flex_flow_pct {
    type: number
    sql: ${TABLE}.rbe_outlet_other_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: spa_fitness_recreation_flex_flow_pct {
    type: number
    sql: ${TABLE}.spa_fitness_recreation_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: golf_flex_flow_pct {
    type: number
    sql: ${TABLE}.golf_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: retail_flex_flow_pct {
    type: number
    sql: ${TABLE}.retail_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: other_operated_flex_flow_pct {
    type: number
    sql: ${TABLE}.other_operated_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: property_mgmt_flex_flow_pct {
    type: number
    sql: ${TABLE}.property_mgmt_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: nonoperating_realty_airport_flex_flow_pct {
    type: number
    sql: ${TABLE}.nonoperating_realty_airport_flex_flow_pct ;;
    value_format_name:percent_1
    hidden: yes
  }

  dimension: nonoperating_util_flex_flow_pct {
    type: number
    sql: ${TABLE}.nonoperating_util_flex_flow_pct ;;
    value_format_name:percent_1
    hidden: yes
  }

  dimension: misc_flex_flow_pct {
    type: number
    sql: ${TABLE}.misc_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: undistributed_flex_flow_pct {
    type: number
    sql: ${TABLE}.undistributed_flex_flow_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: adr_profit_impact_amt {
    type: number
    sql: ${TABLE}.adr_profit_impact_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: occupied_profit_impact_amt {
    type: number
    sql: ${TABLE}.occupied_profit_impact_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- Optimals

  dimension: rbe_banquet_catering_conference_optimal_amt {
    type: number
    sql: ${TABLE}.rbe_banquet_catering_conference_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: rbe_outlet_other_optimal_amt {
    type: number
    sql: ${TABLE}.rbe_outlet_other_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: spa_fitness_recreation_optimal_amt {
    type: number
    sql: ${TABLE}.spa_fitness_recreation_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: golf_optimal_amt {
    type: number
    sql: ${TABLE}.golf_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: retail_optimal_amt {
    type: number
    sql: ${TABLE}.retail_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: other_operated_optimal_amt {
    type: number
    sql: ${TABLE}.other_operated_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: property_mgmt_optimal_amt {
    type: number
    sql: ${TABLE}.property_mgmt_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_realty_airport_optimal_amt {
    type: number
    sql: ${TABLE}.nonoperating_realty_airport_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: nonoperating_util_optimal_amt {
    type: number
    sql: ${TABLE}.nonoperating_util_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: misc_optimal_amt {
    type: number
    sql: ${TABLE}.misc_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: undistributed_optimal_amt {
    type: number
    sql: ${TABLE}.undistributed_optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }


  #-- Optimal Vars

  dimension: actual_to_optimal_rbe_banquet_catering_conference_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_rbe_banquet_catering_conference_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_rbe_outlet_other_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_rbe_outlet_other_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_spa_fitness_recreation_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_spa_fitness_recreation_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_golf_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_golf_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_retail_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_retail_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_other_operated_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_other_operated_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_property_mgmt_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_property_mgmt_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_nonoperating_realty_airport_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_nonoperating_realty_airport_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_nonoperating_util_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_nonoperating_util_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_misc_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_misc_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_to_optimal_undistributed_profit_var_amt {
    type: number
    sql: ${TABLE}.actual_to_optimal_undistributed_profit_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- Optimal ttl and ttl var

  dimension: optimal_amt {
    type: number
    sql: ${TABLE}.optimal_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: optimal_var_amt {
    type: number
    sql: ${TABLE}.optimal_var_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  #-- For Calc

  dimension: profit_impact_amt {
    type: number
    sql: ${TABLE}.profit_impact_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: optimal_var_impact_diff_amt {
    type: number
    sql: ${TABLE}.optimal_var_impact_diff_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: optimal_profit_impact_amt {
    type: number
    sql: ${TABLE}.optimal_profit_impact_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: flow_var_pct {
    type: number
    sql: ${TABLE}.flow_var_pct ;;
    value_format_name: percent_1
    hidden: yes
  }


}
