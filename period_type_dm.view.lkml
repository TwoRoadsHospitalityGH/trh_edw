view: period_type_dm {
  sql_table_name: pedw.fact.period_type_dm ;;
  label: "Metric Aggregation"

  dimension: period_type_shk {
    type: string
    sql: ${TABLE}.period_type_shk ;;
    hidden: yes
  }

  dimension: period_type_name {
    label: "Metric Aggregation"
    description: "Period of time to be applied (Month/Year)."
    type: string
    sql: ${TABLE}.period_type_name ;;
    hidden: no
    }


# note: this filter is intended to be used with the ytd filter

# or other date filter to isolate a year and provide a view of
# months and ytd value based on the current date
filter: monthly_plus_ytd {
label: "Monthly + YTD"
  description: "Monthly & YTD through current month."
  type: yesno
  sql: (    month( date_dm.cal_dt ) <= month( current_date() )
          and period_type_dm.period_type_cd = 'month'
         )
      or (    month( date_dm.cal_dt ) = month( current_date() )
          and period_type_dm.period_type_cd = 'year'
         );;
}
}
