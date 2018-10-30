view: gs_hapi_res_property_f {
  sql_table_name: pedw.dev.hapi_res_property_f ;;

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: primary_key {
    primary_key: yes
    sql: ${stay_date_sid} || ${property_key}  ;;
    hidden: yes
  }

  dimension: property_key{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: stay_date_sid {
    type: number
    sql: ${TABLE}.stay_date_sid ;;
    hidden: yes
  }

  dimension: booked_date_sid {
    type: number
    sql: ${TABLE}.booked_date_sid ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: reservation_no {
    view_label: "Reservation"
    label: "Reservation #"
    description: "Reservation number."
    type: string
    sql: ${TABLE}.reservation_no ;;
  }

  dimension: state_provice_cd {
    view_label: "Guest"
    label: "State/Provice Cd"
    description: "State or provice code of guest."
    type: string
    sql: ${TABLE}.state_province_cd ;;
  }

  #-------------------------------------------------------------------------------------------
  #-- measures
  #-------------------------------------------------------------------------------------------

  measure: record_cnt {
    label: "Records"
    type: count
    hidden: no
  }

  measure: reservation_cnt {
    label: "Reservations"
    description: "Count of distinct reservations."
    type: count_distinct
    sql: ${reservation_no} ;;
  }

  measure: booked_rooms_cnt {
    label: "Rms Bkd"
    description: "Rooms Booked"
    type: count
  }

}
