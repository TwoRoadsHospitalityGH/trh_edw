view: gl_balance_rpt {
  sql_table_name: pedw.dev.gl_balance_rpt;;

  dimension: date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.DATE_SID ;;
    hidden: yes
  }

  dimension: gl_account_str_shk {
    type: string
    sql: ${TABLE}.GL_ACCOUNT_STR_SHK ;;
    hidden: yes
  }

  dimension: property_key {
    type: number
    sql: ${TABLE}.PROPERTY_KEY ;;
    hidden: yes
  }

  measure: act_net_dr_amt {
    label: "Actual Debit$"
    group_label: "Actual"
    description: "Actual Debit $"
    type: sum
    sql: ${TABLE}.act_net_dr_amt ;;
    value_format_name: usd_0
    hidden:  yes
  }

  measure: act_net_cr_amt {
    label: "Actual Credit$"
    group_label: "Actual"
    description: "Actual Credit $"
    type: sum
    sql: ${TABLE}.act_net_cr_amt ;;
    value_format_name: usd_0
    hidden:  yes
  }

  measure: act_net_amt {
    label: "Actual Amount$"
    group_label: "Actual"
    description: "Actual Balance (net of Debits and Credits) $"
    type: number
    sql: -(${act_net_cr_amt} - ${act_net_dr_amt}) ;;
    drill_fields: [act_net_dr_amt, act_net_cr_amt]
    value_format_name: usd_0
  }

  measure: act_gop_amt {
    label: "Actual GOP Amount$"
    group_label: "Actual"
    description: "Actual Gross Operating Profit $"
    type: number
    sql: -((${act_net_cr_amt} - ${act_net_dr_amt}) * MAX(${gl_account_dm.gop_bt})) ;;
#     drill_fields: [act_net_dr_amt, act_net_cr_amt]
    value_format_name: usd_0
    hidden:  no
  }

  measure: act_agop_amt {
    label: "Actual AGOP Amount$"
    group_label: "Actual"
    description: "Actual Adjusted Gross Operating Profit $"
    type: number
    sql: -((${act_net_cr_amt} - ${act_net_dr_amt}) * MAX(${gl_account_dm.agop_bt})) ;;
#     drill_fields: [act_net_dr_amt, act_net_cr_amt]
    value_format_name: usd_0
    hidden:  no
  }

#   measure: occupied_rooms {
#     hidden: no
#     label: "Actual OCC"
#     group_label: "Actual"
#     description: "Actual OCC"
#     type: number
#     sql:case when left(${gl_account_dm.segment2_cd}, 1) = 4
#                   and ${gl_account_dm.segment3_cd} between 9005 and 9075
#                   or  ${gl_account_dm.segment3_cd} = 9906
#              then -(${act_net_cr_amt} - ${act_net_dr_amt}) end ;;
#     drill_fields: [act_net_dr_amt, act_net_cr_amt]
#     value_format_name: usd_0
#   }
#
#   measure: per_occupied_rooms {
#     label: "Per Occupied Rooms"
#     group_label: "Actual"
#     description: "Actual Amount Per Occupied Room"
#     type: number
#     sql: -(${act_net_cr_amt} - ${act_net_dr_amt}) ;;
#     drill_fields: [act_net_dr_amt, act_net_cr_amt]
#     value_format_name: usd_0
#   }

  measure: act_amt_prev {
    label: "Actual Amount"
    description: "Actual"
    view_label: "1b - % Previous"
    type: percent_of_previous
    sql: ${act_net_amt}_net_amt} ;;
    value_format: "0.0\%"
  }

  # % total
  measure: act_amt_pttl {
    label: "Actual Amount$"
    description: "Actual Amount $"
    view_label: "1c - % Total"
    type: percent_of_total
    sql: ${act_net_amt} ;;
    value_format: "0.0\%"
  }

  measure: bgt_net_dr_amt {
    label: "Budget Debit$"
    group_label: "Budget"
    description: "Budget Debit $"
    type: sum
    sql: ${TABLE}.bgt_net_dr_amt ;;
    value_format_name: usd_0
    hidden:  yes
  }

  measure: bgt_net_cr_amt {
    label: "Budget Credit$"
    group_label: "Budget"
    description: "Budget Credit $"
    type: sum
    sql: ${TABLE}.bgt_net_cr_amt ;;
    value_format_name: usd_0
    hidden:  yes
  }

  measure: bgt_net_amt {
    label: "Budget Amount$"
    group_label: "Budget"
    description: "Budget Balance (net of Debits and Credits) $"
    type: number
    sql: -(${bgt_net_cr_amt} - ${bgt_net_dr_amt}) ;;
    value_format_name: usd_0
  }

  measure: bgt_amt_prev {
    label: "Budget Amount"
    description: "Budget"
    view_label: "1b - % Previous"
    type: percent_of_previous
    sql: ${bgt_net_amt} ;;
    value_format: "0.0\%"
  }

  measure: bgt_amt_pttl {
    label: "Budget Amount$"
    description: "Budget Amount $"
    view_label: "1c - % Total"
    type: percent_of_total
    sql: ${bgt_net_amt} ;;
    value_format: "0.0\%"
  }

  measure: fcst_net_dr_amt {
    label: "Forecast Debit$"
    group_label: "Forecast"
    description: "Forecast Debit $"
    type: sum
    sql: ${TABLE}.fcst_net_dr_amt ;;
    value_format_name: usd_0
    hidden:  yes
  }

  measure: fcst_net_cr_amt {
    label: "Forecast Credit$"
    group_label: "Forecast"
    description: "Forecast Credit $"
    type: sum
    sql: ${TABLE}.fcst_net_cr_amt ;;
    value_format_name: usd_0
    hidden:  yes
  }

  measure: fcst_net_amt {
    label: "Forecast Amount$"
    group_label: "Forecast"
    description: "Forecast Balance (net of Debits and Credits) $"
    type: number
    drill_fields: [  ]
    sql: -(${fcst_net_cr_amt} - ${fcst_net_dr_amt}) ;;
    value_format_name: usd_0
  }

  measure: fcst_amt_prev {
    label: "Forecast Amount"
    description: "Forecast"
    view_label: "1b - % Previous"
    type: percent_of_previous
    sql: ${fcst_net_amt} ;;
    value_format: "0.0\%"
  }

  measure: fcst_amt_pttl {
    label: "Forecast Amount$"
    description: "Forecast Amount $"
    view_label: "1c - % Total"
    type: percent_of_total
    sql: ${fcst_net_amt} ;;
    value_format: "0.0\%"
  }


  measure: prjc_net_dr_amt {
    label: "Projected Debit$"
    group_label: "Projected"
    description: "Projected Debit $"
    type: sum
    sql: ${TABLE}.prjc_net_dr_amt ;;
    value_format_name: usd_0
    hidden:  yes
  }

  measure: prjc_net_cr_amt {
    label: "Projected Credit$"
    group_label: "Projected"
    description: "Projected Credit $"
    type: sum
    sql: ${TABLE}.prjc_net_cr_amt ;;
    value_format_name: usd_0
    hidden:  yes
  }

  measure: prjc_net_amt {
    label: "Projected Amount$"
    group_label: "Projected"
    description: "Projected Balance (net of Debits and Credits) $"
    type: number
    sql: -(${prjc_net_cr_amt} - ${prjc_net_dr_amt}) ;;
    value_format_name: usd_0
  }

  measure: prjc_amt_prev {
    label: "Projected Amount"
    description: "Projected"
    view_label: "1b - % Previous"
    type: percent_of_previous
    sql: ${prjc_net_amt}_net_amt} ;;
    value_format: "0.0\%"
  }

  measure: prjc_amt_pttl {
    label: "Projected Amount$"
    description: "Projected Amount $"
    view_label: "1c - % Total"
    type: percent_of_total
    sql: ${prjc_net_amt} ;;
    value_format: "0.0\%"
  }


}
