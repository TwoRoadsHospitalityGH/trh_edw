view: gl_balances_act {
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
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: property_key {
    type:  number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.date_sid ;;
    hidden: yes
  }

  dimension: gl_posting_type_cd {
    type: string
    sql: ${TABLE}.gl_posting_type_cd ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Dimensions
  #-------------------------------------------------------------------------------------------

  dimension: measure_bt {
    sql: ${gl_base_fields_v.act_bt} ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  measure: revenue {
    type: sum
    sql: ${TABLE}.rev_amt ;;
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
