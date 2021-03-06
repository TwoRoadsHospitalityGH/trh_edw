view: performance_metric_dm {
    sql_table_name: pedw.fact.performance_metric_dm ;;

#   Keys

    dimension: performance_metric_shk {
    sql: ${TABLE}.performance_metric_shk ;;
    hidden: yes
  }

# Format & sort

  dimension: metric_sort_no  {
    type: number
    sql: ${TABLE}.metric_sort_no ;;
    hidden: yes
  }

  measure:  value_format_str_m {
    type: max
    sql: ${TABLE}.value_format_str ;;
    hidden:  yes
  }

  dimension:  value_format_str {
    type: string
    sql: ${TABLE}.value_format_str ;;
    hidden:  yes
  }

# Goal

 dimension: goal_exceed_val{
    type: number
    value_format: "0%"
    sql:${TABLE}.goal_exceed_val ;;
    hidden: yes
  }

  measure: goal_exceed_val_m{
    type: average
    value_format: "0%"
    sql:${TABLE}.goal_exceed_val ;;
    hidden: yes
  }

  dimension: goal_above_val{
    type: number
    value_format: "0%"
    sql: ${TABLE}.goal_above_val ;;
    hidden: yes
  }

  measure: goal_above_val_m{
    type: average
    value_format: "0%"
    sql: ${TABLE}.goal_above_val ;;
    hidden: yes
  }

  dimension: goal_below_val{
    type: number
    value_format: "0%"
    sql:${TABLE}.goal_below_val ;;
    hidden: yes
  }

  measure: goal_below_val_m{
    type: average
    value_format: "0%"
    sql:${TABLE}.goal_below_val ;;
    hidden: yes
  }

  dimension: goal_exceed_rule_dscr{
    label: "Exceed"
    description: "Exceeding above goal."
    type: string
    sql: ${TABLE}.goal_exceed_rule_dscr ;;
    hidden: no
    value_format:"0.0\%"
    html: <div style="color: black; background-color: #63BE7B; font-size:100%; text-align:center">{{ rendered_value }}</div>;;
  }

  dimension: goal_above_rule_dscr{
    label: "Above"
    description: "Perfoming above goal."
    type: string
    sql: ${TABLE}.goal_above_rule_dscr ;;
    hidden: no
    html: <div style="color: black; background-color: #C3DA81; font-size:100%; text-align:center">{{ rendered_value }}</div>;;
  }

  dimension: goal_below_rule_dscr{
    label: "Below"
    description: "Performing below goal."
    type: string
    sql: ${TABLE}.goal_below_rule_dscr ;;
    hidden: no
    html: <div style="color: black; background-color: #FDD27F; font-size:100%; text-align:center">{{ rendered_value }}</div>;;
  }

  dimension: goal_atrisk_rule_dscr{
    label: "At Risk"
    description: "At risk."
    type: string
    sql: ${TABLE}.goal_atrisk_rule_dscr ;;
    hidden: no
    html: <div style="color: black; background-color: #F87B6E; font-size:100%; text-align:center">{{ rendered_value }}</div>;;
  }

# Scorecard and weighting

  filter: fsc_bt{
    label: "Finance Scorecard"
    description: "Is included within Finance Scorecard."
    type: yesno
    sql: ${TABLE}.fsc_rpt_bt = 1  ;;
    hidden: no
}

  dimension: fsc_weight_no{
    label: "Weighting - Finance Scorecard Metric"
    description: "Weight applied to metric within Finance Scorecard"
    type: number
    sql: ${TABLE}.fsc_rpt_weight_no  ;;
    hidden: no
    value_format: "0.0"
    html: <div style="color: black; font-size:100%; text-align:center">{{ rendered_value }}</div>;;
  }

  filter: bsc_bt{
    label: "Balanced Scorecard"
    description: "Is included within Balanced Scorecard"
    type: yesno
    sql: ${TABLE}.bsc_rpt_bt = 1  ;;
    hidden: no
  }

  dimension: bsc_weight_no{
    label: "Weighting - Balanced Scorecard Metric"
    description: "Weight applied to metric within Balanced Scorecard"
    type: number
    sql: ${TABLE}.bsc_rpt_weight_no  ;;
    hidden: no
  }

  filter: rbe_bt{
    label: "RBE Balanced Scorecard"
    description: "Is included within RBE Balanced Scorecard"
    type: yesno
    sql: ${TABLE}.rbe_rpt_bt = 1  ;;
    hidden: no
  }

  dimension: rbe_weight_no{
    label: "Weighting - RBE Balanced Scorecard Metric"
    description: "Weight applied to metric within RBE Balanced Scorecard"
    type: number
    sql: ${TABLE}.rbe_rpt_weight_no  ;;
    hidden: no
  }

  filter: gs_rpt_bt{
    label: "Guest Metrics"
    description: "Guest metrics."
    type: yesno
    sql: ${TABLE}.gs_rpt_bt = 1  ;;
    hidden: no
  }

  filter: ms_rpt_bt{
    label: "Meeting Metrics"
    description: "Meeting metrics."
    type: yesno
    sql: ${TABLE}.ms_rpt_bt = 1  ;;
    hidden: no
  }

  filter: gsms_rpt_bt{
    label: "Guest & Meeting Metrics"
    description: "Guest and meeting metrics."
    type: yesno
    sql: ${TABLE}.gs_rpt_bt = 1 or ${TABLE}.ms_rpt_bt = 1  ;;
    hidden: no
  }

  filter: fc_rpt_bt{
    label: "Focus Critical Metrics"
    description: "Focus and Critical metrics."
    type: yesno
    sql: ${TABLE}.fc_rpt_bt = 1 ;;
    hidden: no
  }

  dimension: max_possible_str{
    label: "Maximum Points Available"
    type: string
    sql: ${TABLE}.max_possible_str  ;;
    hidden: yes
  }

# Measures
    dimension: metric_cd  {
      type: string
      sql: ${TABLE}.metric_cd ;;
      hidden: yes
    }

    dimension: common_dscr {
      label: "Description"
      type: string
      sql: ${TABLE}.common_dscr ;;
      hidden: no
      html: {{value | newline_to_br }}  ;;
    }

    dimension: calc_dscr {
    label: "Calculation Description"
    type: string
    sql: ${TABLE}.calc_dscr ;;
    hidden: yes
    }

    dimension: metric_name {
      label: "Metric Name"
      description: "Key Performance Indicator"
      type: string
      sql: ${TABLE}.metric_name ;;
      order_by_field: metric_sort_no
      hidden:  no
    }

 }
