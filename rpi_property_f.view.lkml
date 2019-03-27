view: rpi_property_f {
  sql_table_name: pedw.fact.revintel_property_rate_code_f  ;;

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: property_key {
    primary_key: yes
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: date_sid {
    sql: ${TABLE}.date_sid ;;
    hidden: yes
  }

  dimension: ly_date_sid {
    type: number
    sql: ${TABLE}.ly_date_sid ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Dimensions
  #-------------------------------------------------------------------------------------------
  dimension: property_room_avail_cnt {
    type: number
    sql: ${TABLE}.property_room_avail_cnt ;;
    hidden: yes
  }

  dimension: property_room_sold_cnt {
    type: number
    sql: ${TABLE}.property_room_sold_cnt ;;
    hidden: yes
  }

  dimension: property_rev_amt {
    type: number
    sql: ${TABLE}.property_rev_amt ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- compset
  #-------------------------------------------------------------------------------------------

  dimension: compset_room_avail_cnt {
    type: number
    sql: ${TABLE}.compset_room_avail_cnt ;;
    hidden: yes
  }

  dimension: compset_room_sold_cnt {
    type: number
    sql: ${TABLE}.compset_room_sold_cnt ;;
    hidden: yes
  }

  dimension: compset_rev_amt {
    type: number
    sql: ${TABLE}.compset_rev_amt ;;
    hidden: yes
  }


  }
