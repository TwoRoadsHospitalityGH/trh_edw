view: hapi_res_property_f_v_msr_ty {
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
    sql: ${hapi_res_property_f_v.ty_bt} ;;
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
    sql: iff( ${tyly_bt} = 1, ${hapi_res_property_f_v.reservation_key}, to_char( null ) );;
    value_format_name: decimal_0
  }

  measure: m_adults_cnt {
    label: "Adults"
    description: "Number of adults."
    type: sum_distinct
    sql_distinct_key: ${hapi_res_property_f_v.primary_key} ;;
    sql: ${hapi_res_property_f_v.adults_cnt} * ${tyly_bt} ;;
    value_format_name: decimal_0
  }

  measure: avg_adults_cnt {
    label: "Adults / Res"
    description: "Adults / Reservation"
    type: number
    sql:utl..udf_divide( ${m_adults_cnt}, ${reservation_cnt} ) ;;
    value_format_name: decimal_1
  }

  measure: m_children_cnt {
    label: "Children"
    description: "Number of children."
    type: sum_distinct
    sql_distinct_key: ${hapi_res_property_f_v.primary_key} ;;
    sql: ${hapi_res_property_f_v.children_cnt} * ${tyly_bt} ;;
    value_format_name: decimal_0
  }

  measure: avg_children_cnt {
    label: "Children / Res"
    description: "Children / Reservation"
    type: number
    sql:utl..udf_divide( ${m_children_cnt}, ${reservation_cnt} ) ;;
    value_format_name: decimal_1
  }

  measure: rooms_booked_cnt {
    label: "Rms Bkd"
    description: "Rooms Booked"
    type: sum
    sql: ${tyly_bt} ;;
    value_format_name: decimal_0
  }

  #measure: rooms_booked_tcnt {
  #  label: "Rms Bkd Total"
  #  type: sum_distinct
  #  sql_distinct_key: ${hapi_res_property_f_v.primary_key} ;;
  #  sql: ${hapi_res_property_f_v.stay_nights_tcnt} * ${tyly_bt} ;;
  #  value_format_name: decimal_0
  #}

  measure: avg_res_nights_cnt {
    label: "Rms Bkd / Res"
    description: "Rms Bkd / Reservations"
    type: number
    sql: utl..udf_divide( ${rooms_booked_cnt}, ${reservation_cnt} ) ;;
    value_format_name: decimal_1
  }

  #measure: stay_nights_tpct {
  #  label: "Rms Bkd % Total"
  #  description: "Rms Bkd / Rms Bkd Total"
  #  type: number
  #  sql: utl..udf_divide( ${rooms_booked_cnt}, ${rooms_booked_tcnt} ) ;;
  #  value_format_name: percent_1
  #}

  measure: room_rev_amt {
    label: "Rev Rms $"
    description: "Revenue Rooms $"
    type: sum
    value_format_name: usd
    sql: ${hapi_res_property_f_v.room_rate_amt} * ${tyly_bt} ;;
  }

  measure: adr_amt {
    label: "ADR"
    description: "Average Daily Rate
    Rev Rms / Rms Nights"
    type: average
    sql: iff( ${tyly_bt} = 1, ${hapi_res_property_f_v.room_rate_amt}, to_decimal( null ) );;
    value_format_name: usd
  }

}
