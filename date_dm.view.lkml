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

#   parameter: date_filter {
#     type: date_time
#     allowed_value: {
#       label: "Last Complete Month"
#       value: "Last Completed Month"
#     }
#
#     allowed_value: {
#       label: "Last month"
#       value: "Last Month"
#     }
#
#     allowed_value: {
#       label: "Last year"
#       value: "Last Year"
#     }
#   }

  dimension_group: Calendar {
    type: time
    timeframes: [
      raw
      ,date
      ,month
      ,month_num
      ,month_name
      ,quarter
      ,quarter_of_year
      ,year
    ]
    convert_tz: no
    datatype: date
    sql: ${cal_dt} ;;
    drill_fields: [property_dm.property_ds*]
  }

  #
  # restrict to up through prior month
  #

  dimension: cal_month_dt {
    group_label: "Calendar Filters"
    label: "Month"
    description: "Month."
    type: string
    sql: ${TABLE}.cal_month_dt;;
    hidden: no
  }

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

  filter: two_months_prior {
    group_label: "Calendar Filters"
    label: "Prior Month"
    description: "Prior month."
    type: yesno
    sql: date_trunc( month, ${cal_dt} ) = date_trunc( month, dateadd( month, -2, current_date() ) );;
    hidden: no
  }

}
