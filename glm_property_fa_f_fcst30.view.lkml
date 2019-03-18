view: glm_property_fa_f_fcst30 {
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


  measure: fcst_30_day_rev_amt {
    label: "Rev $"
    description: "Fcst 30 Day Rev"
    type: sum
    sql: ${glm_property_fa_f.fcst_30_day_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: fcst_30_day_agop_amt {
    label: "AGOP $"
    description: "Fcst 30 Day AGOP"
    type: sum
    sql: ${glm_property_fa_f.fcst_30_day_agop_amt} ;;
    value_format_name: usd_0
  }

  measure: fcst_30_day_room_rev_amt {
    label: "Rev Rms $"
    description: "Fcst 30 Day Rev Rms"
    type: sum
    sql: ${glm_property_fa_f.fcst_30_day_room_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: fcst_30_day_rbe_rev_amt {
    label: "Rev RB&E $"
    description: "Fcst 30 Day Rev RB&E $"
    type: sum
    sql: ${glm_property_fa_f.fcst_30_day_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: fcst_30_day_rev_absvar_amt {
    label: "Rev Abs $ - var"
    description: "Absolute Value of Actual - Fcst 30"
    type: sum
    sql: ${glm_property_fa_f.fcst_30_day_rev_absvar_amt};;
    value_format_name: usd_0
  }

  measure: fcst_30_day_agop_absvar_amt {
    label: "AGOP Abs $ - var"
    description: "Absolute Value of Actual - Fcst 30"
    type: sum
    sql: ${glm_property_fa_f.fcst_30_day_agop_absvar_amt} ;;
    value_format_name: usd_0
  }

  measure: fcst_30_day_room_rev_absvar_amt {
    label: "Rev Rms Abs $ - var"
    description: "Absolute Value of Actual - Fcst 30"
    type: sum
    sql: ${glm_property_fa_f.fcst_30_day_room_rev_absvar_amt} ;;
    value_format_name: usd_0
  }

  measure: fcst_30_day_rbe_rev_absvar_amt {
    label: "Rev RB&E Abs $ - var"
    description: "Absolute Value of Actual - Fcst 60"
    type: sum
    sql: ${glm_property_fa_f.fcst_30_day_rbe_rev_absvar_amt} ;;
    value_format_name: usd_0
  }

}
