view: hapi_res_property_f_v_msr_toly {
  derived_table: {
    sql: select 1 as key_no ;;
  }

  dimension: key_no {
    primary_key: yes
    type: number
    sql: ${TABLE}.key_no ;;
    hidden: yes
  }

  #--------------------------------------------------------------------------------
  #-- actual to LY
  #--------------------------------------------------------------------------------
  measure: reservation_cnt_pct_toly {
    label: "Reservations TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${hapi_res_property_f_v_msr.reservation_cnt}, ${hapi_res_property_f_v_msr_ly.reservation_cnt} );;
    value_format_name: percent_1
  }

  measure: rooms_booked_cnt_pct_toly {
    label: "Rms Bkd TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${hapi_res_property_f_v_msr.rooms_booked_cnt}, ${hapi_res_property_f_v_msr_ly.rooms_booked_cnt} );;
    value_format_name: percent_1
  }

  measure: adr_amtt_pct_toly {
    label: "ADR TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${hapi_res_property_f_v_msr.adr_amt}, ${hapi_res_property_f_v_msr_ly.adr_amt} );;
    value_format_name: percent_1
  }

}
