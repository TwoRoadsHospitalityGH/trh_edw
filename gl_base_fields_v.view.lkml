view: gl_base_fields_v {
  sql_table_name: pedw.dev.glm_property_f ;;

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
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: measure_bt {
    sql: select 1 ;;
    hidden: yes
  }

  dimension: act_bt {
    type: number
    sql: ${TABLE}.act_bt ;;
    hidden: yes
  }

  dimension: act_ly_bt {
    type: number
    sql: ${TABLE}.act_ly_bt ;;
    hidden: yes
  }

  dimension: bdgt_bt {
    type: number
    sql: ${TABLE}.bdgt_bt ;;
    hidden: yes
  }

  dimension: fcst30_bt {
    type: number
    sql: ${TABLE}.fcst30_bt ;;
    hidden: yes
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.rev_amt ;;
    value_format_name: usd_0
  }

  dimension: AGOP {
    type: number
    sql: ${TABLE}.agop_amt ;;
    value_format_name: usd_0
  }

  dimension: rooms_revenue {
    type: number
    sql: ${TABLE}.rooms_rev_amt ;;
    value_format_name: usd_0
  }

  dimension: rbe_revenue {
    type: number
    sql: ${TABLE}.rbe_rev_amt ;;
    value_format_name: usd_0
  }

  dimension: rbe_banquet_revenue {
    type: number
    sql: ${TABLE}.rbe_banquet_rev_amt ;;
    value_format_name: usd_0
  }

  dimension: rbe_catering_revenue {
    type: number
    sql: ${TABLE}.rbe_catering_rev_amt ;;
    value_format_name: usd_0
  }

  dimension: rbe_outlet_revenue {
    type: number
    sql: ${TABLE}.rbe_outlet_rev_amt ;;
    value_format_name: usd_0
  }

  dimension: rbe_conference_services_revenue {
    type: number
    sql: ${TABLE}.rbe_conference_services_rev_amt ;;
    value_format_name: usd_0
  }

  dimension: rbe_other_revenue {
    type: number
    sql: ${TABLE}.rbe_other_rev_amt ;;
    value_format_name: usd_0
  }


  }
