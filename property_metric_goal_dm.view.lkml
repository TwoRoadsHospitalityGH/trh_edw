view: property_metric_goal_dm {
  sql_table_name: pedw.fact.property_metric_goal_dm ;;

  dimension: property_metric_goal_shk {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_metric_goal_shk ;;
    hidden: yes
  }

  dimension: property_key  {
    type: number
    sql: ${TABLE}.PROPERTY_KEY ;;
    hidden: yes
  }

  dimension: fiscal_year  {
    type: number
    sql: ${TABLE}.fiscal_year ;;
    hidden: yes
  }

  dimension: metric_cd  {
    type: string
    sql: ${TABLE}.metric_cd ;;
    hidden: yes
  }

  dimension: status_cd  {
    type: string
    sql: ${TABLE}.status_cd ;;
    hidden: yes
  }

  dimension: goal  {
    group_label: "Goals"
    type: number
    sql: ${TABLE}.goal ;;
    hidden: no
  }

  dimension: above_goal  {
    group_label: "Goals"
    type: number
    sql: ${TABLE}.above_goal ;;
    hidden: no
  }

  dimension: below_goal  {
    group_label: "Goals"
    type: number
    sql: ${TABLE}.below_goal ;;
    hidden: no
  }

}
