view: glm_property_fa_f_ty {
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

  #-- FA pieces


  measure: actual_rev_amt {
    label: "Rev $"
    description: "Seg 2: 400-499. Seg 3: 4000-4999"
    type: sum
    sql:  ${glm_property_fa_f.actual_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_rev_abs_amt {
    label: "Rev Abs $"
    description: "Absolute Value of Rev $"
    type: sum
    sql:  ${glm_property_fa_f.actual_rev_abs_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_agop_amt {
    label: "AGOP $"
    description: "Seg 2: 400-876, 905, 910-919. Seg 3: 4000-8999"
    type: sum
    sql: ${glm_property_fa_f.actual_agop_amt};;
    value_format_name: usd_0
  }

  measure: actual_agop_abs_amt {
    label: "AGOP Abs $"
    description: "Absolute Value of AGOP $"
    type: sum
    sql: ${glm_property_fa_f.actual_agop_abs_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_room_rev_amt {
    label: "Rev Rms $"
    description: "Seg 2: 400-499. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_fa_f.actual_room_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_room_rev_abs_amt {
    label: "Rev Rms Abs $"
    description: "Absolute Value of Rev Rms $"
    type: sum
    sql: ${glm_property_fa_f.actual_room_rev_abs_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_rbe_rev_amt {
    label: "Rev RB&E $"
    description: "Seg 2: 500-599. Seg 3: 4000-4999"
    type: sum
    sql: ${glm_property_fa_f.actual_rbe_rev_amt} ;;
    value_format_name: usd_0
  }

  measure: actual_rbe_rev_abs_amt {
    label: "Rev RB&E Abs $"
    description: "Absolute Value of Rev RB&E $"
    type: sum
    sql: ${glm_property_fa_f.actual_rbe_rev_abs_amt} ;;
    value_format_name: usd_0
  }

  measure: fa_rev_absvar_actual_amt {
    label: "FA Rev Abs $"
    description: "( Fcst 30 Rev Abs $ var * 0.80 ) + ( Fcst 60 Rev Abs $ var * 0.20 )"
    type: sum
    sql: ${glm_property_fa_f.fa_rev_absvar_actual_amt} ;;
    value_format_name: usd_0
  }

  measure: fa_agop_absvar_actual_amt {
    label: "FA AGOP Abs $"
    description: "( Fcst 30 AGOP Abs $ var * 0.80 ) + ( Fcst 60 AGOP Abs $ var * 0.20 )"
    type: sum
    sql: ${glm_property_fa_f.fa_agop_absvar_actual_amt} ;;
    value_format_name: usd_0
  }

  measure: fa_room_rev_absvar_actual_amt {
    label: "FA Rev Rms Abs $"
    description: "( Fcst 30 Rev Rms Abs $ var * 0.80 ) + ( Fcst 60 Rev Rms Abs $ var * 0.20 )"
    type: sum
    sql: ${glm_property_fa_f.fa_room_rev_absvar_actual_amt} ;;
    value_format_name: usd_0
  }

  measure: fa_rbe_rev_absvar_actual_amt {
    label: "FA Rev RB&E Abs $"
    description: "( Fcst 30 Rev RB&E Abs $ var * 0.80 ) + ( Fcst 60 Rev RB&E Abs $ var * 0.20 )"
    type: sum
    sql: ${glm_property_fa_f.fa_rbe_rev_absvar_actual_amt} ;;
    value_format_name: usd_0
  }

  measure: fa_rev_pct {
    label: "FA Rev %"
    description: "FA Rev Abs $ / Rev Abs $"
    type: sum
    sql: ${glm_property_fa_f.fa_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: fa_agop_pct {
    label: "FA AGOP %"
    description: "FA AGOP Abs $ / AGOP Abs $"
    type: sum
    sql: ${glm_property_fa_f.fa_agop_pct} ;;
    value_format_name: percent_1
  }

  measure: fa_room_rev_pct {
    label: "FA Rev Rms %"
    description: "FA Rev Rms Abs $ / Rev Rms Abs $"
    type: sum
    sql: ${glm_property_fa_f.fa_room_rev_pct} ;;
    value_format_name: percent_1
  }

  measure: fa_rbe_rev_pct  {
    label: "FA Rev RB&E %"
    description: "FA Rev RB&E Abs $ / Rev RB&E Abs $ "
    type: sum
    sql: ${glm_property_fa_f.fa_rbe_rev_pct} ;;
    value_format_name: percent_1
  }

}
