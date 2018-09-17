view: user_property_fdm {
  sql_table_name: pedw.fact.user_property_fdm ;;

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
    hidden: yes
  }

  dimension: property_key {
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

}
