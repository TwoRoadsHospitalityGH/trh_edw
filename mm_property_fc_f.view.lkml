view: mm_property_fc_f {
  sql_table_name: pedw.dev.mm_property_fc_f ;;

# keys

  dimension: month_date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.month_date_sid ;;
    hidden: yes
  }

  dimension: property_key{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

# KPI Dimensions
  dimension: fc_budget_agop_pct_class_cd {
    label: "AGOP Class Code"
    description: "AGOP Budget/Fcst Class Code"
    view_label: "NonCritical/Critical"
    type: string
    sql: ${TABLE}.fc_budget_agop_pct_class_cd ;;
    hidden: no
  }

  dimension: fc_budget_rev_pct_class_cd {
    label: "Rev/TRev Class Code"
    description: "Rev/TRev Budget/Fcst Class Code"
    view_label: "NoCritical/Critical"
    type: string
    sql: ${TABLE}.fc_budget_rev_pct_class_cd ;;
    hidden: no
  }

  dimension: property_rpi_yoy_var_no_class_cd {
    label: "RPI Class Code"
    description: "RPI Budget/Fcst Class Code"
    view_label: "NoCritical/Critical"
    type: string
    sql: ${TABLE}.property_rpi_yoy_var_no_class_cd ;;
    hidden: no
  }


# KPI Measure Amounts

  measure: budget_agop_amt {
    label: "AGOP Budg"
    description: "AGOP Budget"
    type: sum
    value_format_name: usd_0
    sql: ${TABLE}.budget_agop_amt ;;
    hidden: no
  }

  measure: fcst_agop_amt {
    label: "AGOP Fcst"
    description: "AGOP Forecast"
    type: sum
    value_format_name: usd_0
    sql: ${TABLE}.fcst_agop_amt ;;
    hidden: no
  }

  measure: fc_budget_agop_pct {
    label: "AGOP Fcst:Act %"
    description: "AGOP Fcst:Act %"
    type: sum
    value_format_name: percent_1
    sql: ${TABLE}.fc_budget_agop_pct ;;
    hidden: no
  }


  measure: fc_budget_rev_pct {
    label: "Rev/TRev Fcst:Act %"
    description: "Rev/TRev Fcst:Act %t"
    type: number
    value_format_name: percent_1
    sql: max(${TABLE}.fc_budget_rev_pct) ;;
    hidden: no
  }

  measure: budget_rev_amt {
    label: "Rev/TRev Budg"
    description: "Total Revenue Budget"
    value_format_name: usd_0
    type: number
    sql: max(${TABLE}.budget_rev_amt) ;;
    hidden: no
  }

  measure: fcst_rev_amt {
    label: "Rev/TRev Fcst"
    description: "Total Revenue Forecast"
    type: number
    value_format_name: usd_0
    sql: max(${TABLE}.fcst_rev_amt) ;;
    hidden: no
  }

  measure: ty_property_rpi_no {
    label: "CY Rev PAR $ Index:Cs "
    description: "Rev PAR $ Index:Cs "
    type: number
    value_format_name: percent_2
    sql: max(${TABLE}.ty_property_rpi_no) ;;
    hidden: no
  }

  measure: ly_property_rpi_no {
    label: "PY Rev PAR $ Index:Cs "
    description: "PY Rev PAR $ Index:Cs "
    type: number
    value_format_name: percent_1
    sql: max(${TABLE}.ly_property_rpi_no) ;;
    hidden: no
  }

  measure: property_rpi_yoy_var_no {
    label: "Rev PAR Index Act:LY Compset "
    description: "Rev PAR Index Act:LY Compset "
    type: number
    value_format_name: percent_1
    sql: max(${TABLE}.property_rpi_yoy_var_no) ;;
    hidden: no
  }

  measure: property_fc_score_no {
    label: "Focus Critical Score"
    description: "Focus Critical Score"
    type: number
    sql: max(${TABLE}.property_fc_score_no) ;;
    hidden: no
  }




}
