view: period_type_dm {
  sql_table_name: pedw.fact.period_type_dm ;;

  dimension: period_type_shk {
    type: string
    sql: ${TABLE}.period_type_shk ;;
    hidden: yes
  }

  dimension: period_type_name {
    label: "Mertic Aggregation"
    description: "Period of time to be applied (Month/Year)."
    type: string
    sql: ${TABLE}.period_type_name ;;
    hidden: no
    }
  }
