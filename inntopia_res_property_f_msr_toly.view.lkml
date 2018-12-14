view: inntopia_res_property_f_msr_toly {
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
    sql: utl..udf_percent_var( ${inntopia_res_property_f_msr_ty.reservation_cnt}, ${inntopia_res_property_f_msr_ly.reservation_cnt} );;
    value_format_name: percent_1
  }

  measure: rooms_revenue_pct_toly {
    label: "Rev Rms $ TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${inntopia_res_property_f_msr_ty.room_rev_amt}, ${inntopia_res_property_f_msr_ly.room_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rooms_booked_cnt_pct_toly {
    label: "Rms Bkd TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${inntopia_res_property_f_msr_ty.rooms_booked_cnt}, ${inntopia_res_property_f_msr_ly.rooms_booked_cnt} );;
    value_format_name: percent_1
  }

  measure: adr_amtt_pct_toly {
    label: "ADR TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${inntopia_res_property_f_msr_ty.adr_amt}, ${inntopia_res_property_f_msr_ly.adr_amt} );;
    value_format_name: percent_1
  }


  measure: reservation_cnt_toly {
    label: "Reservations TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${inntopia_res_property_f_msr_ty.reservation_cnt} - ${inntopia_res_property_f_msr_ly.reservation_cnt} ;;
    value_format_name: decimal_0
  }

  measure: rooms_revenue_toly {
    label: "Rev Rms $ TY:LY - var"
    description: "TY - LY)"
    type: number
    sql: ${inntopia_res_property_f_msr_ty.room_rev_amt} - ${inntopia_res_property_f_msr_ly.room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rooms_booked_cnt_toly {
    label: "Rms Bkd TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${inntopia_res_property_f_msr_ty.rooms_booked_cnt} - ${inntopia_res_property_f_msr_ly.rooms_booked_cnt} ;;
    value_format_name: decimal_0
  }

  measure: adr_amtt_toly {
    label: "ADR TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${inntopia_res_property_f_msr_ty.adr_amt} - ${inntopia_res_property_f_msr_ly.adr_amt} ;;
    value_format_name: decimal_0
  }


}
