view: rpi_property_f_toly {
  #--------------------------------------------------------------------------------
  #-- property to LY: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------

  measure: property_room_rev_amt_toly_v {
    label: "Rev Rms $  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rpi_property_f_ty.property_room_rev_amt} - ${rpi_property_f_ly.property_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_room_rev_amt_toly {
    label: "Rev Rms $  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.property_room_rev_amt}, ${rpi_property_f_ly.property_room_rev_amt} );;
    value_format_name: percent_1
  }


  measure: property_room_sold_cnt_toly_v {
    label: "Rms Occ  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rpi_property_f_ty.property_room_sold_cnt} - ${rpi_property_f_ly.property_room_sold_cnt} ;;
    value_format_name: decimal_0
  }

  measure: property_room_sold_cnt_toly {
    label: "Rms Occ  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.property_room_sold_cnt}, ${rpi_property_f_ly.property_room_sold_cnt} );;
    value_format_name: percent_1
  }

  measure: property_occupancy_rate_pct_toly {
    label: "Rms Occ %  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.property_occupancy_rate_pct}, ${rpi_property_f_ly.property_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: property_adr_amt_toly_v {
    label: "ADR  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rpi_property_f_ty.property_adr_amt} - ${rpi_property_f_ly.property_adr_amt} ;;
    value_format_name: usd
  }

  measure: property_adr_amt_toly {
    label: "ADR  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.property_adr_amt}, ${rpi_property_f_ly.property_adr_amt} );;
    value_format_name: percent_1
  }

  measure: property_revpar_amt_toly_v {
    label: "RevPAR  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${rpi_property_f_ty.property_revpar_amt} - ${rpi_property_f_ly.property_revpar_amt} ;;
    value_format_name: usd
  }

  measure: property_revpar_amt_toly {
    label: "RevPAR  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.property_revpar_amt}, ${rpi_property_f_ly.property_revpar_amt} );;
    value_format_name: percent_1
  }

  #--------------------------------------------------------------------------------
  #-- property indexes to compset to LY
  #--------------------------------------------------------------------------------
  measure: property_occ_index_pct_toly {
    label: "Rms Occ % Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.property_occ_index_pct}, ${rpi_property_f_ly.property_occ_index_pct} );;
    value_format_name: percent_1
  }

  measure: property_adr_index_pct_toly {
    label: "ADR Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.property_adr_index_pct}, ${rpi_property_f_ly.property_adr_index_pct} );;
    value_format_name: percent_1
  }

  measure: property_trevpar_index_pct_toly {
    label: "TRevPAR Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.property_revpar_index_pct}, ${rpi_property_f_ly.property_revpar_index_pct} );;
    value_format_name: percent_1
  }



  #--------------------------------------------------------------------------------
  #-- compset to LY: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------
  measure: compset_occupancy_rate_pct_toly {
    label: "Rms Occ % Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.compset_occupancy_rate_pct}, ${rpi_property_f_ly.compset_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: compset_adr_amt_toly {
    label: "ADR Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.compset_adr_amt}, ${rpi_property_f_ly.compset_adr_amt} );;
    value_format_name: percent_1
  }

  measure: compset_revpar_amt_toly {
    label: "RevPAR Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${rpi_property_f_ty.compset_revpar_amt}, ${rpi_property_f_ly.compset_revpar_amt} );;
    value_format_name: percent_1
  }

}


# view: rpi_property_f_toly {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
