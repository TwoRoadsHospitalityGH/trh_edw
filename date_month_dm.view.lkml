view: date_month_dm {
  sql_table_name: pedw.fact.date_dm ;;

    dimension: date_sid {
      sql:  ${TABLE}.DATE_SID ;;
      hidden: yes
    }

  dimension_group: Month {
    type: time
    label: ""
    timeframes: [
       month
      ,month_num
      ,month_name
      ,quarter
      ,quarter_of_year
      ,year
      ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cal_month_dt ;;
    drill_fields: [property_dm.property_ds*]
  }
  #
  # restrict to up through prior month
  #

  filter: current_period_wtd {
    group_label: "Calendar Filters"
    label: "Current Week"
    description: "Within the current week."
    type: yesno
    sql: ${TABLE}.cal_dt < current_date() and date_trunc( week, ${TABLE}.cal_dt ) = date_trunc( week, dateadd( day, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_mtd {
    group_label: "Calendar Filters"
    label: "Current Month"
    description: "Within the current month."
    type: yesno
    sql: ${TABLE}.cal_dt < current_date() and date_trunc( month, ${TABLE}.cal_dt ) = date_trunc( month, dateadd( day, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_qtd {
    group_label: "Calendar Filters"
    label: "QTD"
    description: "Quarter-to-Date."
    type: yesno
    sql: ${TABLE}.cal_dt < date_trunc( month, current_date() ) and date_trunc( quarter, ${TABLE}.cal_dt ) = date_trunc( quarter, dateadd( month, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_ytd {
    group_label: "Calendar Filters"
    label: "YTD"
    description: "Year-to-Date."
    type: yesno
    sql: ${TABLE}.cal_dt < date_trunc( month, current_date() ) and date_trunc( year, ${TABLE}.cal_dt ) = date_trunc( year, dateadd( month, -1, current_date() ) );;
    hidden: no
  }

  filter: last_completed_mo {
    group_label: "Calendar Filters"
    label: "Last Complete Month"
    description: "Last complete month."
    type: yesno
    sql: date_trunc( month, ${TABLE}.cal_dt ) = date_trunc( month, dateadd( month, -1, current_date() ) );;
    hidden: no
  }

  filter: two_months_prior {
    group_label: "Calendar Filters"
    label: "Prior Month"
    description: "Prior month."
    type: yesno
    sql: date_trunc( month, ${TABLE}.cal_dt ) = date_trunc( month, dateadd( month, -2, current_date() ) );;
    hidden: no
  }

}
