view: asof_date_dm {

  sql_table_name: pedw.fact.date_dm ;;


  #parameter: available_timeperiod {
  #  label: "As Of Date"
  #  type: string
  #  allowed_value: {label: "today" value: "this day"}
  #}

  dimension: date_sid {
    sql:  ${TABLE}.DATE_SID ;;
    hidden: yes
  }

  dimension: cal_dt {
    sql: ${TABLE}.cal_dt ;;
    hidden: yes
  }

  dimension: cal_month_dt {
    sql: ${TABLE}.cal_month_dt ;;
    hidden: yes
  }

  dimension: asof_date {
    type: date
    label: "Date"
    description: "As Of Date"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }


}
