view: gl_balances_tobdgt {

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

    measure: revenue_tobdgt_v {
      label: "Revenue Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${gl_balances_act.revenue} - ${gl_balances_bdgt.revenue} ;;
      value_format_name: decimal_0
    }

    measure: AGOP_tobdgt_v {
      label: "AGOP Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${gl_balances_act.AGOP} - ${gl_balances_bdgt.AGOP} ;;
      value_format_name: decimal_0
    }

    measure: rooms_revenue_tobdgt_v {
      label: "Rooms Revenue Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${gl_balances_act.rooms_revenue} - ${gl_balances_bdgt.rooms_revenue} ;;
      value_format_name: decimal_0
    }

    measure: rbe_revenue_tobdgt_v {
      label: "RBE Revenue Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${gl_balances_act.rbe_revenue} - ${gl_balances_bdgt.rbe_revenue} ;;
      value_format_name: decimal_0
    }

    measure: rbe_banquet_revenue_tobdgt_v {
      label: "RBE Banquet Revenue Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${gl_balances_act.rbe_banquet_revenue} - ${gl_balances_bdgt.rbe_banquet_revenue} ;;
      value_format_name: decimal_0
    }

    measure: rbe_catering_tobdgt_v {
      label: "RBE Catering Revenue Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${gl_balances_act.rbe_catering_revenue} - ${gl_balances_bdgt.rbe_catering_revenue} ;;
      value_format_name: decimal_0
    }

    measure: rbe_outlet_revenue_tobdgt_v {
      label: "RBE Outlet Revenue Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${gl_balances_act.rbe_outlet_revenue} - ${gl_balances_bdgt.rbe_outlet_revenue} ;;
      value_format_name: decimal_0
    }

    measure: rbe_other_revenue_tobdgt_v {
      label: "RBE Other Revenue Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${gl_balances_act.rbe_other_revenue} - ${gl_balances_bdgt.rbe_other_revenue} ;;
      value_format_name: decimal_0
    }
  }
