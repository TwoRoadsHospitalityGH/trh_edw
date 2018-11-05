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



}
