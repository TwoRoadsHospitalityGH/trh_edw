view: glm_property_flow_f_ty {
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

  dimension: month_date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.month_date_sid ;;
    hidden: yes
  }


  #-------------------------------------------------------------------------------------------
  #-- Dimensions
  #-------------------------------------------------------------------------------------------

  #dimension: measure_bt {
  #  sql: ${glm_property_f.act_bt} ;;
  #  hidden: yes
  #}

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  #-- Actuals

  #-- Rev

  measure: actual_rev_amt {
    label: "Rev $"
    description: "Seg 2: 400-799. Seg 3: 4000-4999"
    type: sum
    sql:  ${glm_property_flow_f.actual_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_rbe_banquet_catering_conference_services_rev_amt {
    label: "Rev RB&E Banquet Catering Conference Services $"
    description: "Seg 2: 510-518, 590-599. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_rbe_banquet_catering_conference_services_rev_amt};;
    value_format_name: usd_0
  }

  measure: actual_rbe_outlet_other_rev_amt {
    label: "Rev RB&E Outlet Other $"
    description: "Seg 2: 500, 530-549, 550-589. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_rbe_outlet_other_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_other_operated_rev_amt {
    label: "Rev Other Op. Dept. $"
    description: "Seg 2: 710-721, 735-740. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_other_operated_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_spa_fitness_recreation_rev_amt {
    label: "Rev Spa Fitness & Rec $"
    description: "Seg 2: 666, 650-664, 668-674. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_spa_fitness_recreation_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_retail_rev_amt {
    label: "Rev Retail $"
    description: "Seg 2: 750-769. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_retail_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_golf_rev_amt {
    label: "Rev Golf $"
    description: "Seg 2: 610-635. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_golf_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_property_mgmt_rev_amt {
    label: "Rev Mgmt Srvcs $"
    description: "Seg 2: 770-789. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_property_mgmt_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_nonoperating_realty_airport_rev_amt {
    label: "Rev Nonoperating Realty Airport $"
    description: "Seg 2: 680, 681-685, 725. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_nonoperating_realty_airport_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_nonoperating_util_rev_amt {
    label: "Rev Nonoperating Utility $"
    description: "Seg 2: 689-699. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_nonoperating_util_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_misc_rev_amt {
    label: "Rev Rentals & Other $"
    description: "Seg 2: 790-799. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_misc_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_undistributed_rev_amt {
    label: "Rev Undistributed $"
    description: "Seg 2: 800-876. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_undistributed_rev_amt} ;;
    value_format_name: usd_0
  }

  #-- ADR and rooms

  measure: actual_adr_amt {
    label: "ADR $"
    description: "Rev Rms $ / Rms Occ"
    type: sum
    sql: ${glm_property_flow_f.actual_adr_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_occupied_room_cnt {
    label: "Rms Occ"
    description: "Seg 2: 400-499. Seg 3: 9000-9075"
    type: sum
    sql: ${glm_property_flow_f.actual_occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: actual_room_rev_amt {
    label: "Rev Rms $"
    description: "Seg 2: 400-499. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_room_rev_amt} ;;
    value_format_name: usd_0
  }


#-- Profit


  #measure: actual_profit_amt {
  #  label: "Profit $"
  #  type: sum
  #  sql:  ${glm_property_flow_f.actual_profit_amt} ;;
  #  value_format_name: usd_0
  #}

  measure: actual_rbe_banquet_catering_conference_services_profit_amt {
    label: "Profit RB&E Banquet Catering Conference Services $"
    description: "Seg 2: 510-518, 590-599. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_rbe_banquet_catering_conference_services_profit_amt};;
    value_format_name: usd_0
  }

  measure: actual_rbe_outlet_other_profit_amt {
    label: "Profit RB&E Outlet Other $"
    description: "Seg 2: 500, 530-549, 550-589. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_rbe_outlet_other_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_other_operated_profit_amt {
    label: "Profit Other Op. Dept. $"
    description: "Seg 2: 710-721, 735-740. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_other_operated_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_spa_fitness_recreation_profit_amt {
    label: "Profit Spa Fitness & Rec $"
    description: "Seg 2: 666, 650-664, 668-674. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_spa_fitness_recreation_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_retail_profit_amt {
    label: "Profit Retail $"
    description: "Seg 2: 750-769. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_retail_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_golf_profit_amt {
    label: "Profit Golf $"
    description: "Seg 2: 610-635. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_golf_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_property_mgmt_profit_amt {
    label: "Profit Mgmt Srvcs $"
    description: "Seg 2: 770-789. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_property_mgmt_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_nonoperating_realty_airport_profit_amt {
    label: "Profit Nonoperating Realty Airport $"
    description: "Seg 2: 680, 681-685, 725. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_nonoperating_realty_airport_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_nonoperating_util_profit_amt {
    label: "Profit Nonoperating Utility $"
    description: "Seg 2: 689-699. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_nonoperating_util_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_misc_profit_amt {
    label: "Profit Rentals & Other $"
    description: "Seg 2: 790-799. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_misc_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_undistributed_profit_amt {
    label: "Profit Undistributed $"
    description: "Seg 2: 800-876. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.actual_undistributed_profit_amt} ;;
    value_format_name: usd_0
  }


  #-- ADR and rooms

  measure: actual_room_profit_amt {
    label: "Profit Rms $"
    description: "Seg 2: 400-499. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.actual_room_profit_amt} ;;
    value_format_name: usd_0
  }

 #-- Actual to Budget

 #-- Rev Var to Optimals

  measure: actual_to_budget_rev_var_amt {
    label: "Rev $ Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_rev_var_amt} ;;
    value_format_name: decimal_2
  }

  measure: actual_to_budget_adr_var_amt {
    label: "ADR $ Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_adr_var_amt} ;;
    value_format_name: decimal_2
  }

  measure: actual_to_budget_occupied_room_var_amt {
    label: "Rms Occ Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_occupied_room_var_amt} ;;
    value_format_name: decimal_0
  }

  measure: actual_to_budget_rbe_banquet_catering_conference_rev_var_amt {
    label: "Rev RB&E Banquet Catering Conference Srvcs Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_rbe_banquet_catering_conference_rev_var_amt} ;;
    value_format_name: usd_0
  }


  measure: actual_to_budget_rbe_outlet_other_rev_var_amt {
    label: "Rev RB&E Outlet Other Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_rbe_outlet_other_rev_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_budget_spa_fitness_recreation_rev_var_amt {
    label: "Rev Spa Fitness & Rec Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_spa_fitness_recreation_rev_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_budget_golf_rev_var_amt {
    label: "Rev Golf Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_golf_rev_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_budget_retail_rev_var_amt {
    label: "Rev Retail Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_retail_rev_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_budget_other_operated_rev_var_amt {
    label: "Rev Other Op. Dept. Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_other_operated_rev_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_budget_property_mgmt_rev_var_amt {
    label: "Rev Mgmt Srvcs Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_property_mgmt_rev_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_budget_nonoperating_realty_airport_rev_var_amt {
    label: "Rev Nonoperating Realty Airport Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_nonoperating_realty_airport_rev_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_budget_nonoperating_util_rev_var_amt {
    label: "Rev Nonoperating Utility Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_nonoperating_util_rev_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_budget_misc_rev_var_amt {
    label: "Rev Rentals & Other Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_misc_rev_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_budget_undistributed_rev_var_amt {
    label: "Rev Undistributed Act:Bdgt - var"
    description: "Actual - Bdgt"
    type: sum
    sql: ${glm_property_flow_f.actual_to_budget_undistributed_rev_var_amt} ;;
    value_format_name: usd_0
  }



  #-- Flow, Flex, Optimals

  measure: adr_flex_flow_pct {
    label: "Flex/Flow ADR %"
    type: sum
    sql: ${glm_property_flow_f.adr_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: occupied_flex_flow_pct  {
    label: "Flex/Flow Occ Rms %"
    type: sum
    sql: ${glm_property_flow_f.occupied_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_catering_conference_flex_flow_pct {
    label: "Flex/Flow RB&E Banquet Catering Conference Srvcs %"
    type: sum
    sql: ${glm_property_flow_f.rbe_banquet_catering_conference_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_other_flex_flow_pct {
    label: "Flex/Flow RB&E Outlet Other %"
    type: sum
    sql: ${glm_property_flow_f.rbe_outlet_other_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: spa_fitness_recreation_flex_flow_pct {
    label: "Flex/Flow Spa Fitness & Rec %"
    type: sum
    sql: ${glm_property_flow_f.spa_fitness_recreation_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: golf_flex_flow_pct {
    label: "Flex/Flow Golf %"
    type: sum
    sql: ${glm_property_flow_f.golf_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: retail_flex_flow_pct {
    label: "Flex/Flow Retail %"
    type: sum
    sql: ${glm_property_flow_f.retail_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: other_operated_flex_flow_pct {
    label: "Flex/Flow Other Op. Dept. %"
    type: sum
    sql: ${glm_property_flow_f.other_operated_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_flex_flow_pct {
    label: "Flex/Flow Mgmt Srvcs %"
    type: sum
    sql: ${glm_property_flow_f.property_mgmt_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_airport_flex_flow_pct {
    label: "Flex/Flow Nonoperating Realty Airport %"
    type: sum
    sql: ${glm_property_flow_f.nonoperating_realty_airport_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_flex_flow_pct {
    label: "Flex/Flow Nonoperating Utility %"
    type: sum
    sql: ${glm_property_flow_f.nonoperating_util_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: misc_flex_flow_pct {
    label: "Flex/Flow Rentals & Other %"
    type: sum
    sql: ${glm_property_flow_f.misc_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: undistributed_flex_flow_pct {
    label: "Flex/Flow Undistributed %"
    type: sum
    sql: ${glm_property_flow_f.undistributed_flex_flow_pct} ;;
    value_format_name: percent_1
  }

  measure: adr_profit_impact_amt {
    label: "Profit Impact ADR $"
    description: "(( Actual ADR $ - Budget ADR $ ) * Rms Occ ) * Flex/Flow Multiplier"
    type: sum
    sql: ${glm_property_flow_f.adr_profit_impact_amt} ;;
    value_format_name: usd_0
  }

  measure: occupied_profit_impact_amt {
    label: "Profit Impact Occ Rms $"
    description: "(( Actual Rms Occ - Budget Rms Occ ) * Actual ADR $ ) * Flex/Flow Multiplier"
    type: sum
    sql: ${glm_property_flow_f.occupied_profit_impact_amt} ;;
    value_format_name: usd_0
  }

#-- Optimals

  measure: rbe_banquet_catering_conference_optimal_amt {
    label: "Optimal RB&E Banquet Catering Conference Srvcs $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.rbe_banquet_catering_conference_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_other_optimal_amt {
    label: "Optimal RB&E Outlet Other $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.rbe_outlet_other_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: spa_fitness_recreation_optimal_amt {
    label: "Optimal Spa Fitness & Rec $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.spa_fitness_recreation_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: golf_optimal_amt {
    label: "Optimal Golf $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.golf_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: retail_optimal_amt {
    label: "Optimal Retail $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.retail_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: other_operated_optimal_amt {
    label: "Optimal Other Op. Dept. $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.other_operated_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_optimal_amt {
    label: "Otimal Mgmt Srvcs $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.property_mgmt_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_airport_optimal_amt {
    label: "Optimal Nonoperating Realty Airport $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.nonoperating_realty_airport_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_optimal_amt {
    label: "Optimal Nonoperating Utility $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.nonoperating_util_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: misc_optimal_amt {
    label: "Optimal Rentals & Other $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.misc_optimal_amt} ;;
    value_format_name: usd_0
  }

  measure: undistributed_optimal_amt {
    label: "Optimal Undistributed $"
    description: "( Actual Dept. Rev $ - Budget Dept. Rev $ ) * Flex/Flow Multiplier + Budget Dept. Profit $"
    type: sum
    sql: ${glm_property_flow_f.undistributed_optimal_amt} ;;
    value_format_name: usd_0
  }

#-- Total Optimal

  measure: optimal_amt {
    label: "Optimal Ttl $"
    description: "Sum of Dept. Optimals"
    type: sum
    sql: ${glm_property_flow_f.optimal_amt} ;;
    value_format_name: usd_0
  }

#-- Var to Optimals

  measure: actual_to_optimal_rbe_banquet_catering_conference_profit_var_amt {
    label: "Profit RB&E Banquet Catering Conference Srvcs Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_rbe_banquet_catering_conference_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_optimal_rbe_outlet_other_profit_var_amt {
    label: "Profit RB&E Outlet Other Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_rbe_outlet_other_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_optimal_spa_fitness_recreation_profit_var_amt {
    label: "Profit Spa Fitness & Rec Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_spa_fitness_recreation_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_optimal_golf_profit_var_amt {
    label: "Profit Golf Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_golf_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_optimal_retail_profit_var_amt {
    label: "Profit Retail Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_retail_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_optimal_other_operated_profit_var_amt {
    label: "Profit Other Operated Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_other_operated_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure:actual_to_optimal_property_mgmt_profit_var_amt {
    label: "Profit Mgmt Srvcs Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_property_mgmt_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_optimal_nonoperating_realty_airport_profit_var_amt {
    label: "Profit Nonoperating Realty Airport Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_nonoperating_realty_airport_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_optimal_nonoperating_util_profit_var_amt {
    label: "Profit Nonoperating Utility Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_nonoperating_util_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_optimal_misc_profit_var_amt {
    label: "Profit Rentals & Other Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_misc_profit_var_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_to_optimal_undistributed_profit_var_amt {
    label: "Profit Undistributed Act:Optimal - var"
    description: "Actual - Optimal"
    type: sum
    sql: ${glm_property_flow_f.actual_to_optimal_undistributed_profit_var_amt} ;;
    value_format_name: usd_0
  }


 #-- Total Optimal Var

  measure: optimal_var_amt {
    label: "Profit Ttl Act:Optimal - var"
    description: "Ttl Actual - Ttl Optimal"
    type: sum
    sql: ${glm_property_flow_f.optimal_var_amt} ;;
    value_format_name: usd_0
  }

  measure: profit_impact_amt {
    label: "Profit Impact $"
    description: "ADR Profit Impact $ + Rms Occ Profit Impact $ + Bdgt Profit Rms $"
    type: sum
    sql: ${glm_property_flow_f.profit_impact_amt} ;;
    value_format_name: usd_0
  }

  measure: optimal_profit_impact_amt {
    label: "Optimal Profit Impact $"
    description: "TTl Optimal + Profit Impact"
    type: sum
    sql: ${glm_property_flow_f.optimal_profit_impact_amt} ;;
    value_format_name: usd_0
  }

  #-- Flow

  measure: flow_var_pct {
    label: "Flow %"
    description: "Overall Flow %"
    type: sum
    sql: ${glm_property_flow_f.flow_var_pct} ;;
    value_format_name: percent_1
  }

}
