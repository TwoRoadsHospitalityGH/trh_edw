view: rpi_property_f {
  sql_table_name: pedw.dev.rpi_property_f  ;;

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: property_key {
    primary_key: yes
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: period_key {
    sql: ${TABLE}.period_key ;;
    hidden: yes
  }

  dimension: date_sid {
    sql: ${TABLE}.date_sid ;;
    hidden: yes
  }

  dimension: ty_bt {
    type: number
    sql: ${TABLE}.ty_bt ;;
    hidden: yes
  }

  dimension: ly_bt {
    type: number
    sql: ${TABLE}.ly_bt ;;
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

  dimension: property_room_rev_amt {
    type: number
    sql: ${TABLE}.property_room_rev_amt ;;
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

  dimension: compset_room_rev_amt {
    type: number
    sql: ${TABLE}.compset_room_rev_amt ;;
    hidden: yes
  }


  }
