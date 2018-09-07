view: percent_measures_f {
  sql_table_name: pedw.fact.mm_property_kpi_f ;;

# Keys

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

  dimension: property_key{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: performance_metric_shk {
    type: string
    sql: ${TABLE}.performance_metric_shk ;;
    hidden: yes
  }

  dimension: kpi_class_shk {
    type: string
    sql: ${TABLE}.kpi_class_shk ;;
    hidden: yes
  }

  dimension: property_metric_goal_shk {
    type: string
    sql: ${TABLE}.property_metric_goal_shk ;;
    hidden: yes
  }

  measure: property_cnt_over_kpi {
    type: number
    sql: sum( ${property_cnt} ) over( partition by ${performance_metric_dm.metric_name} ) ;;
    value_format: "0"
    hidden: yes
  }

  measure: property_cnt_pct {
    label: "% of Properties"
    description: "Percent of properties."
    type: number
    sql: ${property_cnt} / ${property_cnt_over_kpi} ;;
    value_format_name: percent_1
    hidden: no
    html: <div style="background-color: #AARRGGBB; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div> ;;
  }

  measure: amt_prev {
    group_label: "% Previous"
    label: "% Previous"
    description: "Percent to Previous Value"
    type: percent_of_previous
    sql: ${measure_kpi} ;;
    value_format_name: percent_1
    hidden: no
  }

  measure: property_cnt {
    label: "Properties"
    description: "Count of distinct properties."
    type: count_distinct
    sql: ${property_key} ;;
    value_format: "0"
    hidden: no
  }

  measure: measure_kpi {
    type: number
    label: "Metric Value"
    value_format_name: percent_1
    sql:  ${TABLE}.kpi_val ;;
    hidden: yes
  }

}
