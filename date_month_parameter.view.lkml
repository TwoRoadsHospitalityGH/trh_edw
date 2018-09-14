view: date_month_parameter {
  derived_table: {
   sql:
      select  date_sid
      from    pedw.fact.date_dm
      where
        pedw.fact.date_dm.cal_dt =  utl..udf_lkrp_month_dt( {% parameter available_months %} )
      ;;
  }

  dimension: date_sid {
    type: string
    sql: ${TABLE}.date_sid ;;
    hidden: yes
  }

  parameter: available_months {
    type: string
    allowed_value: {label: "Prior Month" value: "prior"}
    allowed_value: {label: "Current Month" value: "current"}
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

 }
