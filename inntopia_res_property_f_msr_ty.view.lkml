view: inntopia_res_property_f_msr_ty {
  derived_table: {
    sql: select 1 as key_no ;;
  }

  dimension: key_no {
    primary_key: yes
    type: number
    sql: ${TABLE}.key_no ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: tyly_bt {
    sql: ${inntopia_res_property_f.ty_bt} ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- measures
  #-------------------------------------------------------------------------------------------

  measure: record_cnt {
    label: "Records"
    description: "Records from table."
    type: sum
    sql: ${tyly_bt} ;;
    value_format_name: decimal_0
    hidden: yes
  }

  measure: reservation_cnt {
    label: "Reservations"
    description: "Count of distinct reservations"
    type: count_distinct
    sql: iff( ${tyly_bt} = 1, ${inntopia_res_property_f.reservation_key}, to_number( null ) );;
    value_format_name: decimal_0
  }

  measure: room_rev_amt {
    label: "Rev Rms $"
    description: "Revenue Rooms $"
    type: sum
    value_format_name: usd
    sql: ${inntopia_res_property_f.avg_daily_rate} * ${tyly_bt} ;;
  }

  measure: adr_amt {
    label: "ADR"
    description: "Average Daily Rate
    Rev Rms / Rms Nights"
    type: average
    sql: iff( ${tyly_bt} = 1, ${inntopia_res_property_f.avg_daily_rate}, to_decimal( null ) );;
    value_format_name: usd
  }

  measure: rooms_booked_cnt {
    label: "Rms Bkd"
    description: "Rooms Booked"
    type: sum
    sql: ${tyly_bt} ;;
    value_format_name: decimal_0
  }

  measure: length_of_stay_avg {
    label: "LOS Avg"
    description: "Avg Length of Stay"
    type: average_distinct
    sql: iif(${tyly_bt} = 1, datediff(day,${inntopia_res_property_f.arrival_dt},${inntopia_res_property_f.departure_dt}),to_number( null ) )  ;;
    value_format_name: decimal_0
  }

  measure: lead_time_avg {
    label: "Lead Time Avg"
    description: "Lead Time Avg"
    type: average_distinct
    sql: iif(${tyly_bt} = 1, datediff(day,${inntopia_res_property_f.booking_dt},${inntopia_res_property_f.arrival_dt}),to_number( null ) ) ;;
    value_format_name: decimal_0
  }



  }
