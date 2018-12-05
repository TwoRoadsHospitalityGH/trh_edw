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
  #-- actual to LY: rev, AGOP, rooms_revenue, rbe,
  #--------------------------------------------------------------------------------

  measure: revenue_toly_v {
    type: number
    sql: ${gl_balances_act.revenue} - ${gl_balances_ly.revenue} ;;
    value_format_name: usd_0
  }

  measure: AGOP {
    type: sum
    sql: ${TABLE}.agop_amt ;;
    value_format_name: usd_0
  }

  measure: rooms_revenue {
    type: sum
    sql: ${TABLE}.rooms_rev_amt ;;
    value_format_name: usd_0
  }

  measure: rbe_revenue {
    type: sum
    sql: ${TABLE}.rbe_rev_amt ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_revenue {
    type: sum
    sql: ${TABLE}.rbe_banquet_rev_amt ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_revenue {
    type: sum
    sql: ${TABLE}.rbe_catering_rev_amt ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_revenue {
    type: sum
    sql: ${TABLE}.rbe_outlet_rev_amt ;;
    value_format_name: usd_0
  }

  measure: rbe_conference_services_revenue {
    type: sum
    sql: ${TABLE}.rbe_conference_services_rev_amt ;;
    value_format_name: usd_0
  }

  measure: rbe_other_revenue {
    type: sum
    sql: ${TABLE}.rbe_other_rev_amt ;;
    value_format_name: usd_0
  }

}
