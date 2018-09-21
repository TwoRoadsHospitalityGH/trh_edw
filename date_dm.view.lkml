view: date_dm {
  sql_table_name: pedw.fact.DATE_DM ;;

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

  dimension: date {
    type: date
    label: "Date"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
  }

  dimension: month {
    type: date_month
    label: "Month"
    convert_tz: no
    sql: ${cal_month_dt} ;;
    allow_fill: no
  }

  dimension: month_num {
    type: date_month_num
    label: "Month Number"
    convert_tz: no
    sql: ${cal_month_dt} ;;
    allow_fill: no
  }

  dimension: month_name {
    type: date_month_name
    label: "Month Name"
    convert_tz: no
    sql: ${cal_month_dt} ;;
    allow_fill: no
  }

  dimension: quarter {
    type: date_quarter
    label: "Quarter"
    convert_tz: no
    sql: ${cal_month_dt} ;;
    allow_fill: no
  }

  dimension: quarter_of_year {
    type: date_quarter_of_year
    label: "Quarter of Year"
    convert_tz: no
    sql: ${cal_month_dt} ;;
    allow_fill: no
  }

  dimension: year {
    type: date_year
    label: "Year"
    convert_tz: no
    sql: ${cal_month_dt} ;;
    allow_fill: no
  }

  #
  # restrict to up through prior month
  #

  filter: current_period_wtd {
    group_label: "Calendar Filters"
    label: "Current Week"
    description: "Within the current week."
    type: yesno
    sql: ${cal_dt} < current_date() and date_trunc( week, ${cal_dt} ) = date_trunc( week, dateadd( day, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_mtd {
    group_label: "Calendar Filters"
    label: "Current Month"
    description: "Within the current month."
    type: yesno
    sql: ${cal_dt} < current_date() and date_trunc( month, ${cal_dt} ) = date_trunc( month, dateadd( day, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_qtd {
    group_label: "Calendar Filters"
    label: "Quarter-to-Date"
    description: "Quarter of last complete month."
    type: yesno
    sql: ${cal_dt} < date_trunc( month, current_date() ) and date_trunc( quarter, ${cal_dt} ) = date_trunc( quarter, dateadd( month, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_ytd {
    group_label: "Calendar Filters"
    label: "Year-to-Date"
    description: "Year of last complete month."
    type: yesno
    sql: ${cal_dt} < date_trunc( month, current_date() ) and date_trunc( year, ${cal_dt} ) = date_trunc( year, dateadd( month, -1, current_date() ) );;
    hidden: no
  }

  filter: last_completed_mo {
    group_label: "Calendar Filters"
    label: "Last Complete Month"
    description: "Last complete month."
    type: yesno
    sql: date_trunc( month, ${cal_dt} ) = date_trunc( month, dateadd( month, -1, current_date() ) );;
    hidden: no
  }

}
