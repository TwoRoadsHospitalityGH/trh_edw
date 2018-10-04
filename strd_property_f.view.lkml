include: "strm_property_f.view.lkml"

view: strd_property_f {
  extends: [strm_property_f]
  sql_table_name: pedw.fact.strd_property_f ;;

  dimension: date_sid {
    type: number
    sql: ${TABLE}.date_sid ;;
    hidden: yes
  }

  dimension: ly_date_sid {
    type: number
    sql: ${TABLE}.ly_date_sid ;;
    hidden: yes
  }

}
