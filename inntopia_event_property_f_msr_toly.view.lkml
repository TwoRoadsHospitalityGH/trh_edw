view: inntopia_event_property_f_msr_toly {
  derived_table: {
    sql: select 1 as eventid ;;
  }

  dimension: eventid {
    primary_key: yes
    type: number
    sql: ${TABLE}.eventid ;;
    hidden: yes
  }

  #--------------------------------------------------------------------------------
  #-- actual to LY
  #--------------------------------------------------------------------------------
  measure: event_cnt_pct_toly {
    label: "Events TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${inntopia_event_property_f_msr_ty.event_cnt}, ${inntopia_event_property_f_msr_ly.event_cnt} );;
    value_format_name: percent_1
  }

  measure: event_cnt_toly {
    label: "Events TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${inntopia_event_property_f_msr_ty.event_cnt} - ${inntopia_event_property_f_msr_ly.event_cnt} ;;
  }

  measure: customer_cnt_pct_toly {
    label: "Customers TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${inntopia_event_property_f_msr_ty.customer_cnt}, ${inntopia_event_property_f_msr_ly.customer_cnt} );;
    value_format_name: percent_1
  }

  measure: customer_cnt_toly {
    label: "Customers TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${inntopia_event_property_f_msr_ty.customer_cnt} - ${inntopia_event_property_f_msr_ly.customer_cnt} ;;
  }

  measure: revenue_pct_toly {
    label: " Rev/TRev TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var(  ${inntopia_event_property_f_msr_ty.rev_amt}, ${inntopia_event_property_f_msr_ly.rev_amt} );;
    value_format_name: percent_1
  }

  measure: revenue_toly {
    label: " Rev/TRev TY:LY - var"
    description: "TY - LY"
    type: number
    sql:   ${inntopia_event_property_f_msr_ty.rev_amt} - ${inntopia_event_property_f_msr_ly.rev_amt} ;;
    value_format_name: percent_1
  }

  measure: room_pct_toly {
    label: " Rm Bkd TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var(  ${inntopia_event_property_f_msr_ty.room_amt}, ${inntopia_event_property_f_msr_ly.room_amt} );;
    value_format_name: percent_1
  }

  measure: room_toly {
    label: " Rm Bkd TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${inntopia_event_property_f_msr_ty.room_amt} - ${inntopia_event_property_f_msr_ly.room_amt} ;;
    value_format_name: percent_1
  }

  measure: customer_spend_pct_toly {
    label: " Customer/Rev TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var(  ${inntopia_event_property_f_msr_ty.customer_spend}, ${inntopia_event_property_f_msr_ly.customer_spend} );;
    value_format_name: percent_1
  }

  measure: customer_spend_toly {
    label: " Customer/Rev TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${inntopia_event_property_f_msr_ty.customer_spend} - ${inntopia_event_property_f_msr_ly.customer_spend} ;;
    value_format_name: percent_1
  }



}
