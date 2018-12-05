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
  #-- actual to LY: rev, AGOP, rooms_revenue, rbe
  #--------------------------------------------------------------------------------

  measure: revenue_toly_v {
    label: "Revenue Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${gl_balances_act.revenue} - ${gl_balances_ly.revenue} ;;
    value_format_name: decimal_0
  }

  measure: AGOP_toly_v {
    label: "AGOP Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${gl_balances_act.AGOP} - ${gl_balances_ly.AGOP} ;;
    value_format_name: decimal_0
  }

  measure: rooms_revenue_toly_v {
    label: "Rooms Revenue Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${gl_balances_act.rooms_revenue} - ${gl_balances_ly.rooms_revenue} ;;
    value_format_name: decimal_0
  }

  measure: rbe_revenue_toly_v {
    label: "RBE Revenue Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${gl_balances_act.rbe_revenue} - ${gl_balances_ly.rbe_revenue} ;;
    value_format_name: decimal_0
  }

  measure: rbe_banquet_revenue_toly_v {
    label: "RBE Banquet Revenue Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${gl_balances_act.rbe_banquet_revenue} - ${gl_balances_ly.rbe_banquet_revenue} ;;
    value_format_name: decimal_0
  }

  measure: rbe_catering_toly_v {
    label: "RBE Catering Revenue Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${gl_balances_act.rbe_catering_revenue} - ${gl_balances_ly.rbe_catering_revenue} ;;
    value_format_name: decimal_0
  }

  measure: rbe_outlet_revenue_toly_v {
    label: "RBE Outlet Revenue Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${gl_balances_act.rbe_outlet_revenue} - ${gl_balances_ly.rbe_outlet_revenue} ;;
    value_format_name: decimal_0
  }

  measure: rbe_other_revenue_toly_v {
    label: "RBE Other Revenue Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${gl_balances_act.rbe_other_revenue} - ${gl_balances_ly.rbe_other_revenue} ;;
    value_format_name: decimal_0
  }
}
