view: gl_raw_v {
  sql_table_name: pedw.dev.glm_property_f ;;

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

#   measure: revenue {
#     type: sum
#     sql: ${TABLE}.rev_amount ;;
#     value_format_name: usd_0
#   }
#
#   measure: revenue {
#     type: sum
#     sql: ${TABLE}.rev_amount ;;
#     value_format_name: usd_0
#   }
#
#   measure: revenue {
#     type: sum
#     sql: ${TABLE}.rev_amount ;;
#     value_format_name: usd_0
#   }
#
#   measure: revenue {
#     type: sum
#     sql: ${TABLE}.rev_amount ;;
#     value_format_name: usd_0
#   }
#
#   measure: revenue {
#     type: sum
#     sql: ${TABLE}.rev_amount ;;
#     value_format_name: usd_0
#   }
#
#   measure: revenue {
#     type: sum
#     sql: ${TABLE}.rev_amount ;;
#     value_format_name: usd_0
#   }
#
#   measure: revenue {
#     type: sum
#     sql: ${TABLE}.rev_amount ;;
#     value_format_name: usd_0
#   }
#
#   measure: revenue {
#     type: sum
#     sql: ${TABLE}.rev_amount ;;
#     value_format_name: usd_0
#   }

}
