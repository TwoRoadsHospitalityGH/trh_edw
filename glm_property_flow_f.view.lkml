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


#-- Profit


  dimension: actual_profit_amt {
    type: number
    sql: ${TABLE}.actual_profit_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

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




}
