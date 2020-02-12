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

  #dimension: asof_date_str {
  #  type:  string
  #  label: "As Of Date Filter"
  #  description: "As Of Date Filter"
  #  sql: to_char( ${cal_dt} ) ;;
  #  #allow_fill: no
  #}

  dimension: asof_date {
    type: date
    label: "As Of Date"
    description: "As Of Date"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }

  dimension: day_of_month_num {
    type: date_day_of_month
    label: "Day Number"
    description: "Day of Month Number"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }

  dimension: day_of_week {
    type: date_day_of_week
    label: "Day of Week"
    description: "Day"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }

  dimension: week {
    type: date_week
    label: "Week"
    description: "Week"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }

  dimension: month {
    type: date_month
    label: "Month"
    description: "Month"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }

  dimension: month_num {
    type: date_month_num
    label: "Month Number"
    description: "Month Number"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }

  dimension: month_name {
    type: date_month_name
    label: "Month Name"
    description: "Month Name"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }

  dimension: year {
    type: date_year
    label: "Year"
    description: "Year"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }

  dimension: month_and_year {
    type: string
    label: "Month, Year"
    description: "Month and Year"
    sql: concat(concat(${month_name}, ', '), ${year}) ;;
    order_by_field: month
  }
}
