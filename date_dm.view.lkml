view: date_dm {
  sql_table_name: pedw.fact.DATE_DM ;;

  dimension: date_sid {
    sql:  ${TABLE}.DATE_SID ;;
    hidden: yes
  }

  dimension_group: Calendar {
    type: time
    timeframes: [
      raw
      ,date
      ,month
      ,month_num
      ,quarter
      ,quarter_of_year
      ,year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cal_dt ;;
    drill_fields: [property_dm.property_ds*]
  }

  #
  # restrict to up through prior month
  #

  filter: current_period_wtd {
    group_label: "Calendar Filters"
    label: "Current Week"
    type: yesno
    sql: ${TABLE}.cal_dt < current_date() and date_trunc( week, ${TABLE}.cal_dt ) = date_trunc( week, dateadd( day, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_mtd {
    group_label: "Calendar Filters"
    label: "Current Month"
    type: yesno
    sql: ${TABLE}.cal_dt < current_date() and date_trunc( month, ${TABLE}.cal_dt ) = date_trunc( month, dateadd( day, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_qtd {
    group_label: "Calendar Filters"
    label: "Quarter-to-Date"
    description: "Quarter of last complete month."
    type: yesno
    sql: ${TABLE}.cal_dt < date_trunc( month, current_date() ) and date_trunc( quarter, ${TABLE}.cal_dt ) = date_trunc( quarter, dateadd( month, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_ytd {
    group_label: "Calendar Filters"
    label: "Year-to-Date"
    description: "Year of last complete month."
    type: yesno
    sql: ${TABLE}.cal_dt < date_trunc( month, current_date() ) and date_trunc( year, ${TABLE}.cal_dt ) = date_trunc( year, dateadd( month, -1, current_date() ) );;
    hidden: no
  }

  filter: last_completed_mo {
    group_label: "Calendar Filters"
    label: "Last Complete Month"
    description: "Last complete month."
    type: yesno
    sql: ${TABLE}.cal_dt < current_date()
         and date_trunc( month, ${TABLE}.cal_dt ) = date_trunc( month, dateadd( month, -1, current_date() ) )
         and ${TABLE}.cal_ptd_bt = 1;;
    hidden: no
  }

}
