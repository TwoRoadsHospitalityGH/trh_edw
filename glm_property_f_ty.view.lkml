view: glm_property_f_ty {
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
    sql: ${glm_property_f.act_bt} ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  measure: rev_amt {
    label: "Rev"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: AGOP {
    label: "AGOP"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.AGOP}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rooms_rev_amt {
    label: "Rev Rms"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rooms_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_rev_amt {
    label: "Rev RBE"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.rbe_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_rev_amt {
    label: "Rev RBE Banquet"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_banquet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_rev_amt {
    label: "Rev RBE Catering"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_catering_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_rev_amt {
    label: "Rev RBE Outlet"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_outlet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_conference_services_rev_amt {
    label: "Rev RBE Conference Services"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_conference_services_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_rev_amt {
    label: "Rev RBE Other"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_other_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

}
