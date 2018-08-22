view: period_type_dm {
  sql_table_name: pedw.fact.period_type_dm ;;

  dimension: period_type_shk {
    type: string
    sql: ${TABLE}.period_type_shk ;;
    hidden: yes
  }

  dimension: period_type_name {
    label: "Period Type"
    type: string
    sql: ${TABLE}.period_type_name ;;
    hidden: no
    }

  filter: aggregation_type_filter{
    type: string
    default_value: "Month"
  }

  }
