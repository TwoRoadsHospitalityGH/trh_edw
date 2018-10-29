view: hapi_res_property_f {
  sql_table_name: pedw.dev.hapi_res_property_f ;;

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: property_key{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: booked_date_sid {
    type: number
    sql: ${TABLE}.booked_date_sid ;;
    hidden: yes
  }

  dimension: arrival_date_sid {
    type: number
    sql: ${TABLE}.arrival_date_sid ;;
    hidden: yes
  }

  dimension: departure_date_sid {
    type: number
    sql: ${TABLE}.departure_date_sid ;;
    hidden: yes
  }

  dimension: stay_date_sid {
    type: number
    sql: ${TABLE}.stay_date_sid ;;
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

  dimension: property_cd {
    view_label: "Reservation"
    label: "Property Code"
    description: "PMS property code."
    type: string
    sql: ${TABLE}.property_cd ;;
  }

  dimension: room_rate_amt {
    view_label: "Room"
    label: "Rms Rate"
    description: "Room rate."
    type: number
    value_format_name: usd
    sql: ${TABLE}.rate_amt ;;
  }

  dimension: room_rate_tier {
    view_label: "Room"
    label: "Rms Rate Tier"
    description: "Room rate."
    type: tier
    tiers: [0, 100, 200, 250, 300, 350, 400, 500, 600, 800, 1000, 1500]
    style: relational
    sql: ${room_rate_amt} ;;
    value_format_name: usd_0
  }

  #-------------------------------------------------------------------------------------------
  #-- measures
  #-------------------------------------------------------------------------------------------

  measure: record_cnt {
    label: "Records"
    description: "Records from table."
    type: count
  }

  measure: res_nights_cnt {
    label: "Rms Nights"
    description: "Reservation nights."
    type: number
    sql: count( ${stay_date_sid} ) ;;
  }

  measure: room_rev_amt {
    label: "Rev Rms $"
    description: "Reservation nights."
    type: sum
    value_format_name: usd
    sql: ${room_rate_amt} ;;
  }

  measure: adr_amt {
    label: "ADR"
    description: "Average Daily Rate
    Rev Rms / Rms Nights"
    type: average
    sql: ${room_rate_amt};;
    value_format_name: usd
  }

}
