view: date_dm {

 sql_table_name: pedw.fact.date_dm ;;

  parameter: available_timeperiod {
    label: "Available Timeframe"
    type: string
    allowed_value: {label: "Prior Month" value: "prior_month"}
    allowed_value: {label: "Prior Month Last Year" value: "ly_prior_month"}
    allowed_value: {label: "Prior Year" value: "prior_year"}
    allowed_value: {label: "Prior Quarter" value: "prior_quarter"}
    allowed_value: {label: "Current Month" value: "current_month"}
    allowed_value: {label: "Current Month Last Year" value: "ly_current_month"}
    allowed_value: {label: "Current Year" value: "current_year"}
    allowed_value: {label: "Current Quarter" value: "current_quarter"}
    allowed_value: {label: "January" value: "jan"}
    allowed_value: {label: "Febraury" value: "feb"}
    allowed_value: {label: "March" value: "mar"}
    allowed_value: {label: "April" value: "apr"}
    allowed_value: {label: "May" value: "may"}
    allowed_value: {label: "June" value: "jun"}
    allowed_value: {label: "July" value: "jul"}
    allowed_value: {label: "August" value: "aug"}
    allowed_value: {label: "September" value: "sep"}
    allowed_value: {label: "October" value: "oct"}
    allowed_value: {label: "November" value: "nov"}
    allowed_value: {label: "December" value: "dec"}
    }


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
    description: "Date"
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
    drill_fields: [year, quarter, month, week, date]
    allow_fill: no
  }

  dimension: week {
    type: date_week
    label: "Week"
    description: "Week"
    convert_tz: no
    sql: ${cal_dt} ;;
    drill_fields: [date, day_of_week]
    allow_fill: no
  }

  dimension: month {
    type: date_month
    label: "Month"
    description: "Month"
    convert_tz: no
    sql: ${cal_dt} ;;
    drill_fields: [week, date, day_of_week]
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

  dimension: quarter {
    type: date_quarter
    label: "Quarter"
    description: "Quarter of year."
    convert_tz: no
    sql: ${cal_dt} ;;
    drill_fields: [month, week, date, day_of_week]
    allow_fill: no
  }

  dimension: quarter_of_year {
    type: date_quarter_of_year
    label: "Quarter of Year"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
    hidden: yes
  }

  dimension: year {
    type: date_year
    label: "Year"
    description: "Year"
    convert_tz: no
    sql: ${cal_dt} ;;
    allow_fill: no
    drill_fields: [quarter, month, week, date, day_of_week]
  }

  dimension: month_and_year {
    type: string
    label: "Month and Year"
    description: "Month and Year"
    sql: concat(concat(${month_name}, ', '), ${year}) ;;
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

  filter: current_period_wtd {
    label: "Current Week"
    description: "Within the current week."
    type: yesno
    sql: ${cal_dt} < current_date() and date_trunc( week, ${cal_dt} ) = date_trunc( week, dateadd( day, -1, current_date() ) );;
    hidden: no
  }

  filter: last_completed_mo {
    label: "Last Complete Month"
    description: "Last complete month."
    type: yesno
    sql: date_trunc( month, ${cal_dt} ) = date_trunc( month, dateadd( month, -1, current_date() ) );;
    hidden: no
  }

  filter: cal_ptd_bt {
    label: "Period-to-Date"
    description: "Restrict to Completed Periods Only"
    type: yesno
    sql: ${TABLE}.cal_ptd_bt = 1 ;;
  }

  #
  # Date Measures
  #

  measure: first_date {
    label: "First Date"
    sql: min(${cal_dt}) ;;
  }

  measure: last_date {
    label: "Last Date"
    sql: max(${cal_dt}) ;;
  }

  measure: months {
    label: "Months"
    description: "Count of months."
    type: count_distinct
    sql: ${cal_month_dt} ;;
  }

  measure: days {
    label: "Days"
    description: "Count of days."
    type: count_distinct
    sql: ${cal_dt} ;;
  }

  measure: date_range {
    label: "Date Range"
    description: "Dates included in selection. Monthly data will be represented as the first of each month."
    type: string
    sql:  concat(concat(to_char(min(${cal_dt}), 'mon dd, ''yy'), ' - ') , to_char(max(${cal_dt}), 'mon dd, ''yy') ) ;;
  }

  measure: month_range {
    label: "Month Range"
    description: "Month included in selection."
    type: string
    sql:  concat(concat(to_char(min(${cal_dt}), 'mon ''yy'), ' - ') , to_char(max(${cal_dt}), 'mon ''yy') ) ;;
  }


}
