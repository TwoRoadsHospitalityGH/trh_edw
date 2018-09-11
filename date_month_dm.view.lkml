view: date_month_dm {
  sql_table_name: pedw.fact.date_dm ;;

    dimension: date_sid {
      sql:  ${TABLE}.DATE_SID ;;
      hidden: yes
    }

    dimension: cal_dt {
      sql: ${TABLE}.cal_dt ;;
      hidden: yes
    }

  dimension: month {
    type: date_month
    label: "Month"
    convert_tz: no
    sql: ${TABLE}.cal_month_dt ;;
    allow_fill: no
  }

  dimension: month_num {
    type: date_month_num
    label: "Month Number"
    convert_tz: no
    sql: ${TABLE}.cal_month_dt ;;
    allow_fill: no
  }

  dimension: month_name {
    type: date_month_name
    label: "Month Name"
    convert_tz: no
    sql: ${TABLE}.cal_month_dt ;;
    allow_fill: no
  }

  dimension: quarter {
    type: date_quarter
    label: "Quarter"
    convert_tz: no
    sql: ${TABLE}.cal_month_dt ;;
    allow_fill: no
  }

  dimension: quarter_of_year {
    type: date_quarter_of_year
    label: "Quarter of Year"
    convert_tz: no
    sql: ${TABLE}.cal_month_dt ;;
    allow_fill: no
  }

  dimension: year {
    type: date_year
    label: "Year"
    convert_tz: no
    sql: ${TABLE}.cal_month_dt ;;
    allow_fill: no
  }

  #
  # restrict to up through prior month
  #

  filter: current_period_mtd {
    label: "Current Month"
    description: "Within the current month."
    type: yesno
    sql: date_trunc( month, ${cal_dt} ) = date_trunc( month, dateadd( day, -1, current_date() ) );;
    hidden: no
  }

  filter: current_period_qtd {
    label: "QTD"
    description: "Quarter-to-Date."
    type: yesno
    sql: date_trunc( quarter, ${cal_dt} ) = date_trunc( quarter, dateadd( month, -1, dateadd( day, -1, current_date() ) ) );;
    hidden: no
  }

  filter: current_period_ytd {
    label: "YTD"
    description: "Year-to-Date."
    type: yesno
    sql: date_trunc( year, ${cal_dt} ) = date_trunc( year, dateadd( month, -1, dateadd( day, -1, current_date() ) ) );;
    hidden: no
  }

  filter: prior_month {
    label: "Prior Month"
    description: "Prior month."
    type: yesno
    sql: date_trunc( month, ${cal_dt} ) = date_trunc( month, dateadd( month, -1, dateadd( day, -1, current_date() ) ) );;
    hidden: no
  }

# note: this filter is intended to be used with the ytd filter

  # or other date filter to isolate a year and provide a view of
  # months and ytd value based on the current date
  filter: monthly_plus_ytd {
    group_label: "Calendar Filters"
    label: "Monthly + YTD"
    description: "TBD"
    type: yesno
    sql: (    month( ${cal_dt} ) <= month( current_date() )
          and period_type_dm.period_type_cd = 'month'
         )
      or (    month( ${cal_dt} ) = month( current_date() )
          and period_type_dm.period_type_cd = 'year'
         );;
  }


}
