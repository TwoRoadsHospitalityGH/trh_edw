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
    sql:  iff( ${measure_bt} = 1, ${gl_base_fields_v.revenue}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: AGOP {
    type: sum
    sql:  iff( ${measure_bt} = 1, ${gl_base_fields_v.AGOP}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rooms_revenue {
    type: sum
    sql: iff( ${measure_bt} = 1, ${gl_base_fields_v.rooms_revenue}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_revenue {
    type: sum
    sql:  iff( ${measure_bt} = 1, ${gl_base_fields_v.rbe_revenue}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_revenue {
    type: sum
    sql: iff( ${measure_bt} = 1, ${gl_base_fields_v.rbe_banquet_revenue}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_revenue {
    type: sum
    sql: iff( ${measure_bt} = 1, ${gl_base_fields_v.rbe_catering_revenue}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_revenue {
    type: sum
    sql: iff( ${measure_bt} = 1, ${gl_base_fields_v.rbe_outlet_revenue}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_conference_services_revenue {
    type: sum
    sql: sql: iff( ${measure_bt} = 1, ${gl_base_fields_v.rbe_conference_services_revenue}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_revenue {
    type: sum
    sql: iff( ${measure_bt} = 1, ${gl_base_fields_v.rbe_other_revenue}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

}
