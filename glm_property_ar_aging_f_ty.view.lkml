view: glm_property_ar_aging_f_ty {
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

  #-- AR pieces


  measure: ar_00_30_day_amt {
    label: "AR 00 to 30 Day"
    description: "Seg 2: 999. Seg 3: 9961. Seg 4: 2939"
    type: sum
    sql:  ${glm_property_ar_aging_f.ar_00_30_day_amt} ;;
    value_format_name: decimal_0
  }

  measure: ar_31_60_day_amt {
    label: "AR 31 to 60 Day"
    description: "Seg 2: 999. Seg 3: 9961. Seg 4: 1005"
    type: sum
    sql:  ${glm_property_ar_aging_f.ar_31_60_day_amt} ;;
    value_format_name: decimal_0
  }

  measure: ar_61_90_day_amt {
    label: "AR 61 to 90 Day"
    description: "Seg 2: 999. Seg 3: 9961. Seg 4: 1015"
    type: sum
    sql: ${glm_property_ar_aging_f.ar_61_90_day_amt};;
    value_format_name: decimal_0
  }

  measure: ar_91_day_amt {
    label: "AR 91 Day"
    description: "Seg 2: 999. Seg 3: 9961. Seg 4: 1018"
    type: sum
    sql: ${glm_property_ar_aging_f.ar_91_day_amt} ;;
    value_format_name: decimal_0
  }

  measure: ar_amt {
    label: "AR Ttl"
    description: "( AR 0 to 30 Day ) + ( AR 31 to 60 Day ) + ( AR 61 to 90 Day ) + ( AR 91 Day )"
    type: sum
    sql: ${glm_property_ar_aging_f.ar_amt} ;;
    value_format_name: decimal_0
  }

  measure: ar_60_plus_amt {
    label: "AR 60+ Day"
    description: "( AR 61 to 90 Day ) + ( AR 91 Day )"
    type: sum
    sql: ${glm_property_ar_aging_f.ar_60_plus_amt} ;;
    value_format_name: decimal_0
  }

  measure: raw_ar_score_no {
    label: "AR Score Raw"
    description: "( AR 60+ Day ) / ( AR Ttl ) For the month before cumulative averaging"
    type: sum
    sql: ${glm_property_ar_aging_f.raw_ar_score_no} ;;
    value_format_name: decimal_2
  }

  measure: ar_score_no_amt {
    label: "AR Score Amt"
    description: "Sum of AR Score Raw for Period"
    type: sum
    sql: ${glm_property_ar_aging_f.ar_score_no_amt} ;;
    value_format_name: decimal_2
  }

  measure: ar_score_no_cnt {
    label: "AR Score Cnt"
    description: "Count of AR Scores that are not null"
    type: sum
    sql: ${glm_property_ar_aging_f.ar_score_no_cnt} ;;
    value_format_name: decimal_0
  }

  measure: ar_score_no {
    label: "AR Score"
    description: "Cumulative Average: ( Sum of AR Score Amt ) / ( Sum of AR Score Cnt )"
    type: sum
    sql: ${glm_property_ar_aging_f.ar_score_no} ;;
    value_format_name: percent_1
  }

}
