view: two_roads_extract_pace {
    sql_table_name: PRAW_REVINTEL.MAIN.TWO_ROADS_EXTRACT_PACE ;;

  dimension: DW_ASOF_DT {
    sql: ${TABLE}.DW_ASOF_DT ;;
  }

  dimension: HOTEL_CD {
    sql: ${TABLE}.HOTEL_CD ;;
  }

  dimension: HOTEL_NM {
    sql: ${TABLE}.HOTEL_NM ;;
  }

  dimension: MAJOR_CHANNEL_NM {
    sql: ${TABLE}.MAJOR_CHANNEL_NM ;;
  }

  dimension: MINOR_CHANNEL_NM {
    sql: ${TABLE}.MINOR_CHANNEL_NM ;;
  }

  dimension: RATE_CD {
    sql: ${TABLE}.RATE_CD ;;
  }

  dimension: RATE_CODE_NM {
    sql: ${TABLE}.RATE_CODE_NM ;;
  }

  dimension: MAJOR_ROOM_PRODUCT_NM {
    sql: ${TABLE}.MAJOR_ROOM_PRODUCT_NM ;;
  }

  dimension: MINOR_ROOM_PRODUCT_NM {
    sql: ${TABLE}.MINOR_ROOM_PRODUCT_NM ;;
  }

  dimension: ROOM_TYPE_NM {
    sql: ${TABLE}.ROOM_TYPE_NM ;;
  }

  dimension: BUSINESS_UNIT_NM {
    sql: ${TABLE}.BUSINESS_UNIT_NM ;;
  }

  dimension: CALENDAR_DT {
    sql: ${TABLE}.CALENDAR_DT ;;
  }

  measure: CYROOMSSOLDNR {
    sql: ${TABLE}.CYROOMSSOLDNR ;;
  }

  measure: CYROOMREVENUE {
    sql: ${TABLE}.CYROOMREVENUE ;;
  }

  measure: PYROOMSSOLDNR {
    sql: ${TABLE}.PYROOMSSOLDNR ;;
  }

  measure: PYROOMREVENUE {
    sql: ${TABLE}.PYROOMREVENUE ;;
  }


}
