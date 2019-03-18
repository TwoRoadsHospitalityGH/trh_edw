view: glm_property_fa_f {
  sql_table_name: pedw.fact.glm_property_fa_f ;;

  dimension: property_key {
    type:  number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: month_date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.month_date_sid ;;
    hidden: yes
  }

  dimension: period_type_shk {
    type: string
    sql: ${TABLE}.period_type_shk ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: measure_bt {
    sql: select 1 ;;
    hidden: yes
  }

#-- FA pieces

  dimension: actual_rev_amt {
    type: number
    sql: ${TABLE}.actual_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_rev_abs_amt {
    type: number
    sql: ${TABLE}.actual_rev_abs_amt;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_agop_amt {
    type: number
    sql: ${TABLE}.actual_agop_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_agop_abs_amt {
    type: number
    sql: ${TABLE}.actual_agop_abs_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_room_rev_amt {
    type: number
    sql: ${TABLE}.actual_room_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_room_rev_abs_amt {
    type: number
    sql: ${TABLE}.actual_room_rev_abs_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_rbe_rev_amt {
    type: number
    sql: ${TABLE}.actual_rbe_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: actual_rbe_rev_abs_amt {
    type: number
    sql: ${TABLE}.actual_rbe_rev_abs_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_30_day_rev_amt {
    type: number
    sql: ${TABLE}.fcst_30_day_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_60_day_rev_amt {
    type: number
    sql: ${TABLE}.fcst_60_day_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_30_day_agop_amt {
    type: number
    sql: ${TABLE}.fcst_30_day_agop_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_60_day_agop_amt {
    type: number
    sql: ${TABLE}.fcst_60_day_agop_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_30_day_room_rev_amt {
    type: number
    sql: ${TABLE}.fcst_30_day_room_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_60_day_room_rev_amt {
    type: number
    sql: ${TABLE}.fcst_60_day_room_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_30_day_rbe_rev_amt {
    type: number
    sql: ${TABLE}.fcst_30_day_rbe_rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_60_day_rbe_rev_amt {
    type: number
    sql: ${TABLE}.fcst_60_day_rbe_rev_amt;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_30_day_rev_absvar_amt {
    type: number
    sql: ${TABLE}.fcst_30_day_rev_absvar_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_60_day_rev_absvar_amt {
    type: number
    sql: ${TABLE}.fcst_60_day_rev_absvar_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_30_day_agop_absvar_amt {
    type: number
    sql: ${TABLE}.fcst_30_day_agop_absvar_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_60_day_agop_absvar_amt {
    type: number
    sql: ${TABLE}.fcst_60_day_agop_absvar_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_30_day_room_rev_absvar_amt {
    type: number
    sql: ${TABLE}.fcst_30_day_room_rev_absvar_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_60_day_room_rev_absvar_amt {
    type: number
    sql: ${TABLE}.fcst_60_day_room_rev_absvar_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_30_day_rbe_rev_absvar_amt {
    type: number
    sql: ${TABLE}.fcst_30_day_rbe_rev_absvar_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fcst_60_day_rbe_rev_absvar_amt {
    type: number
    sql: ${TABLE}.fcst_60_day_rbe_rev_absvar_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fa_rev_absvar_actual_amt {
    type: number
    sql: ${TABLE}.fa_rev_absvar_actual_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fa_agop_absvar_actual_amt {
    type: number
    sql: ${TABLE}.fa_agop_absvar_actual_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fa_room_rev_absvar_actual_amt {
    type: number
    sql: ${TABLE}.fa_room_rev_absvar_actual_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fa_rbe_rev_absvar_actual_amt {
    type: number
    sql: ${TABLE}.fa_rbe_rev_absvar_actual_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: fa_rev_pct {
    type: number
    sql: ${TABLE}.fa_rev_pct;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: fa_agop_pct {
    type: number
    sql: ${TABLE}.fa_agop_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: fa_room_rev_pct {
    type: number
    sql: ${TABLE}.fa_room_rev_pct ;;
    value_format_name: percent_1
    hidden: yes
  }

  dimension: fa_rbe_rev_pct {
    type: number
    sql: ${TABLE}.fa_rbe_rev_pct ;;
    value_format_name: percent_1
    hidden: yes
  }


}
