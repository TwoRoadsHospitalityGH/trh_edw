view: glm_property_ar_aging_f {
  sql_table_name: pedw.fact.glm_property_ar_aging_f ;;

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

#-- AR pieces

  dimension: ar_00_30_day_amt {
    type: number
    sql: ${TABLE}.ar_00_30_day_amt ;;
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: ar_31_60_day_amt {
    type: number
    sql: ${TABLE}.ar_31_60_day_amt;;
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: ar_61_90_day_amt {
    type: number
    sql: ${TABLE}.ar_61_90_day_amt ;;
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: ar_91_day_amt {
    type: number
    sql: ${TABLE}.ar_91_day_amt ;;
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: ar_amt {
    type: number
    sql: ${TABLE}.ar_amt ;;
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: ar_60_plus_amt {
    type: number
    sql: ${TABLE}.ar_60_plus_amt ;;
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: raw_ar_score_no {
    type: number
    sql: ${TABLE}.raw_ar_score_no ;;
    value_format_name: decimal_2
    hidden: yes
  }

  dimension: ar_score_no_amt {
    type: number
    sql: ${TABLE}.ar_score_no_amt ;;
    value_format_name: decimal_2
    hidden: yes
  }

  dimension: ar_score_no_cnt {
    type: number
    sql: ${TABLE}.ar_score_no_cnt ;;
    value_format_name: decimal_0
    hidden: yes
  }

  dimension: ar_score_no {
    type: number
    sql: ${TABLE}.ar_score_no ;;
    value_format_name: percent_1
    hidden: yes
  }


}
