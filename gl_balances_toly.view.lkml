view: gl_balances_toly {
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
  #-- actual to LY: rev, AGOP, rooms_rev_amt, rbe
  #--------------------------------------------------------------------------------

  measure: rev_amt_toly_v {
    label: "Rev Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rev_amt} - ${glm_property_f_ly.rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: AGOP_toly_v {
    label: "AGOP Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.AGOP} - ${glm_property_f_ly.AGOP} ;;
    value_format_name: decimal_0
  }

  measure: rooms_rev_amt_toly_v {
    label: "Rms Rev Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rooms_rev_amt} - ${glm_property_f_ly.rooms_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_rev_amt_toly_v {
    label: "RBE Rev Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_rev_amt} - ${glm_property_f_ly.rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_rev_amt_toly_v {
    label: "RBE Banquet Rev Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_banquet_rev_amt} - ${glm_property_f_ly.rbe_banquet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_toly_v {
    label: "RBE Catering rev_amt Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_catering_rev_amt} - ${glm_property_f_ly.rbe_catering_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_rev_amt_toly_v {
    label: "RBE Outlet Rev Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_outlet_rev_amt} - ${glm_property_f_ly.rbe_outlet_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_rev_amt_toly_v {
    label: "RBE Other Rev Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${glm_property_f_ty.rbe_other_rev_amt} - ${glm_property_f_ly.rbe_other_rev_amt} ;;
    value_format_name: decimal_0
  }
}
