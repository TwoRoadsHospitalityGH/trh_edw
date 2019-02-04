view: mm_property_fc_f {
  sql_table_name: pedw.dev.mm_property_fc_f ;;

# filters

  measure: max_month_name {
    type: max
    sql:  ${date_dm.month_name} ;;
    hidden: yes
  }

  measure: max_year {
    type: max
    sql:  ${date_dm.year} ;;
    hidden: yes
  }

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

# KPI Measure Amounts

  measure: budget_agop_amt {
    label: "AGOP Budg"
    description: "AGOP Budget"
    type: number
    sql: max(${TABLE}.budget_agop_amt) ;;
    hidden: no
  }

  measure: fcst_agop_amt {
    label: "AGOP Fcst"
    description: "AGOP Forecast"
    type: number
    sql: max(${TABLE}.fcst_agop_amt) ;;
    hidden: no
  }

  measure: fc_budget_rev_pct {
    label: "Rev/TRev Fcst:Act %"
    description: "Rev/TRev Fcst:Act %t"
    type: number
    sql: max(${TABLE}.fc_budget_rev_pct) ;;
    hidden: no
  }

  measure: budget_rev_amt {
    label: "Rev/TRev Budg"
    description: "Total Revenue Budget"
    type: number
    sql: max(${TABLE}.budget_rev_amt) ;;
    hidden: no
  }

  measure: fcst_rev_amt {
    label: "Rev/TRev Fcst"
    description: "Total Revenue Forecast"
    type: number
    sql: max(${TABLE}.fcst_rev_amt) ;;
    hidden: no
  }

  measure: fc_budget_agop_pct {
    label: "AGOP Fcst:Act %"
    description: "AGOP Fcst:Act %"
    type: number
    sql: max(${TABLE}.fc_budget_agop_pct) ;;
    hidden: no
  }

  measure: ty_property_rpi_no {
    label: "CY Rev PAR $ Index:Cs "
    description: "Rev PAR $ Index:Cs "
    type: number
    sql: max(${TABLE}.ty_property_rpi_no) ;;
    hidden: no
  }

  measure: ly_property_rpi_no {
    label: "PY Rev PAR $ Index:Cs "
    description: "PY Rev PAR $ Index:Cs "
    type: number
    sql: max(${TABLE}.ly_property_rpi_no) ;;
    hidden: no
  }

  measure: property_rpi_yoy_var_no {
    label: "Rev PAR Index Act:LY Compset "
    description: "Rev PAR Index Act:LY Compset "
    type: number
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
