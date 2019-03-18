view: glm_property_flow_f_bdgt {
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

  #-- Revenue

  measure: budget_rev_amt {
    label: "Rev $"
    description: "Seg 2: 400-799. Seg 3: 4000-4999"
    type: sum
    sql:  ${glm_property_flow_f.budget_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_rbe_banquet_catering_conference_services_rev_amt {
    label: "Rev RB&E Banquet Catering Conference Services $"
    description: "Seg 2: 510-518, 590-599. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_rbe_banquet_catering_conference_services_rev_amt};;
    value_format_name: usd_0
  }

  measure: budget_rbe_outlet_other_rev_amt {
    label: "Rev RB&E Outlet Other $"
    description: "Seg 2: 500, 530-549, 550-589. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_rbe_outlet_other_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_other_operated_rev_amt {
    label: "Rev Other Op. Dept. $"
    description: "Seg 2: 710-721, 735-740. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_other_operated_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_spa_fitness_recreation_rev_amt {
    label: "Rev Spa Fitness & Rec $"
    description: "Seg 2: 666, 650-664, 668-674. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_spa_fitness_recreation_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_retail_rev_amt {
    label: "Rev Retail $"
    description: "Seg 2: 750-769. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_retail_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_golf_rev_amt {
    label: "Rev Golf $"
    description: "Seg 2: 610-635. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_golf_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_property_mgmt_rev_amt {
    label: "Rev Mgmt Srvcs $"
    description: "Seg 2: 770-789. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_property_mgmt_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_nonoperating_realty_airport_rev_amt {
    label: "Rev Nonoperating Realty Airport $"
    description: "Seg 2: 680, 681-685, 725. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_nonoperating_realty_airport_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_nonoperating_util_rev_amt {
    label: "Rev Nonoperating Utility $"
    description: "Seg 2: 689-699. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_nonoperating_util_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_misc_rev_amt {
    label: "Rev Rentals & Other $"
    description: "Seg 2: 790-799. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_misc_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_undistributed_rev_amt {
    label: "Rev Undistributed $"
    description: "Seg 2: 800-876. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_undistributed_rev_amt} ;;
    value_format_name: usd_0
  }

  #-- ADR and rooms

  measure: budget_adr_amt {
    label: "ADR $"
    description: "Rms Rev / Rms Occ"
    type: sum
    sql: ${glm_property_flow_f.budget_adr_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_occupied_room_cnt {
    label: "Rms Occ"
    description: "Seg 2: 400-499. Seg 3: 9000-9075"
    type: sum
    sql: ${glm_property_flow_f.budget_occupied_room_cnt} ;;
    value_format_name: decimal_0
  }

  measure: budget_room_rev_amt {
    label: "Rev Rms $"
    description: "Seg 2: 400-499. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_room_rev_amt} ;;
    value_format_name: usd_0
  }


#-- Profit


  #measure: budget_profit_amt {
  #  label: "Profit $"
  #  type: sum
  #  sql:  ${glm_property_flow_f.budget_profit_amt} ;;
  #  value_format_name: usd_0
  #}

  measure: budget_rbe_banquet_catering_conference_services_profit_amt {
    label: "Profit RB&E Banquet Catering Conference Services $"
    description: "Seg 2: 510-518, 590-599. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_rbe_banquet_catering_conference_services_profit_amt};;
    value_format_name: usd_0
  }

  measure: budget_rbe_outlet_other_profit_amt {
    label: "Profit RB&E Outlet Other $"
    description: "Seg 2: 500, 530-549, 550-589. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_rbe_outlet_other_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_other_operated_profit_amt {
    label: "Profit Other Op. Dept. $"
    description: "Seg 2: 710-721, 735-740. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_other_operated_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_spa_fitness_recreation_profit_amt {
    label: "Profit Spa Fitness & Rec $"
    description: "Seg 2: 666, 650-664, 668-674. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_spa_fitness_recreation_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_retail_profit_amt {
    label: "Profit Retail $"
    description: "Seg 2: 750-769. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_retail_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_golf_profit_amt {
    label: "Profit Golf $"
    description: "Seg 2: 610-635. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_golf_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_property_mgmt_profit_amt {
    label: "Profit Mgmt Srvcs $"
    description: "Seg 2: 770-789. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_property_mgmt_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_nonoperating_realty_airport_profit_amt {
    label: "Profit Nonoperating Realty Airport $"
    description: "Seg 2: 680, 681-685, 725. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_nonoperating_realty_airport_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_nonoperating_util_profit_amt {
    label: "Profit Nonoperating Utility $"
    description: "Seg 2: 689-699. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_nonoperating_util_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_misc_profit_amt {
    label: "Profit Rentals & Other $"
    description: "Seg 2: 790-799. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_misc_profit_amt} ;;
    value_format_name: usd_0
  }

  measure: budget_undistributed_profit_amt {
    label: "Profit Undistributed $"
    description: "Seg 2: 400-499. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_flow_f.budget_undistributed_profit_amt} ;;
    value_format_name: usd_0
  }

  #-- ADR and rooms

  measure: budget_room_profit_amt {
    label: "Profit Rms $"
    description: "Seg 2: 400-499. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_flow_f.budget_room_profit_amt} ;;
    value_format_name: usd_0
  }


}
