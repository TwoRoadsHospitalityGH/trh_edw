view: two_roads_extract {
  sql_table_name: PRAW_REVINTEL.MAIN.TWO_ROADS_EXTRACT ;;

  dimension:  DW_ASOF_DT  {
    sql: ${TABLE}.DW_ASOF_DT ;;
  }

  dimension:  HOTEL  {
    sql: ${TABLE}.HOTEL ;;
  }

  dimension:  CALENDAR  {
    sql: ${TABLE}.CALENDAR ;;
  }

  dimension:  MAJORMARKET  {
    sql: ${TABLE}.MAJORMARKET ;;
  }

  dimension:  MINORMARKET  {
    sql: ${TABLE}.MINORMARKET ;;
  }

  dimension:  CONTRIBUTIONCHANNEL  {
    sql: ${TABLE}.CONTRIBUTIONCHANNEL ;;
  }

  dimension:  MAJORCHANNEL  {
    sql: ${TABLE}.MAJORCHANNEL ;;
  }

  dimension:  MINORCHANNEL  {
    sql: ${TABLE}.MINORCHANNEL ;;
  }

  dimension:  REGION  {
    sql: ${TABLE}.REGION ;;
  }

  dimension:  SUBREGION  {
    sql: ${TABLE}.SUBREGION ;;
  }

  dimension:  COUNTRY  {
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension:  STATE  {
    sql: ${TABLE}.STATE ;;
  }

  dimension:  MAJORROOMPRODUCT  {
    sql: ${TABLE}.MAJORROOMPRODUCT ;;
  }

  dimension:  MINORROOMPRODUCT  {
    sql: ${TABLE}.MINORROOMPRODUCT ;;
  }

  dimension:  ROOMTYPE  {
    sql: ${TABLE}.ROOMTYPE ;;
  }

  dimension:  COMPANY  {
    sql: ${TABLE}.COMPANY ;;
  }

  dimension:  AGENT  {
    sql: ${TABLE}.AGENT ;;
  }

  dimension:  IATA  {
    sql: ${TABLE}.IATA ;;
  }

  measure: ROOMSAVAILABLE {
    sql: ${TABLE}.ROOMSAVAILABLE ;;
  }

  measure: CYROOMSSOLD {
    sql: ${TABLE}.CYROOMSSOLD ;;
  }

  measure: CYROOMREVENUE {
    sql: ${TABLE}.CYROOMREVENUE ;;
  }

  measure: CYFOODREVENUE {
    sql: ${TABLE}.CYFOODREVENUE ;;
  }

  measure: CYOTHERREVENUE {
    sql: ${TABLE}.CYOTHERREVENUE ;;
  }

  measure: PYROOMSSOLD {
    sql: ${TABLE}.PYROOMSSOLD ;;
  }

  measure: PYROOMREVENUE {
    sql: ${TABLE}.PYROOMREVENUE ;;
  }

  measure: PYFOODREVENUE {
    sql: ${TABLE}.PYFOODREVENUE ;;
  }

  measure: PYOTHERREVENUE {
    sql: ${TABLE}.PYOTHERREVENUE ;;
  }

}
