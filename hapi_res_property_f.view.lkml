view: hapi_res_property_f {
  sql_table_name: pedw.dev.hapi_res_property_f ;;

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

  dimension: primary_key {
    primary_key: yes
    sql: ${TABLE}.primary_key ;;
    hidden: yes
  }

  dimension: reservation_key {
    sql: ${TABLE}.reservation_key ;;
    hidden: yes
  }

  dimension: stay_date_key {
    sql: ${TABLE}.stay_date_key ;;
    hidden: yes
  }

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

  dimension: profile_id {
    view_label: "Guest"
    label: "Profile ID"
    description: "Guest Profile ID."
    type: number
    sql: ${TABLE}.profile_id ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  #-- reservation

  dimension: reservation_no {
    view_label: "Reservation"
    label: "Reservation #"
    description: "Reservation Number"
    type: string
    sql: ${TABLE}.reservation_no ;;
  }

  dimension: chain_cd {
    view_label: "Reservation"
    label: "Chain Cd"
    description: "Chain Code"
    type: string
    sql: ${TABLE}.chain_cd ;;
  }

  dimension: property_cd {
    view_label: "Reservation"
    label: "Property Cd"
    description: "Property Code"
    type: string
    sql: ${TABLE}.property_cd ;;
  }

  dimension: booking_confirmation_id {
    view_label: "Reservation"
    label: "Confirmation Cd"
    description: "Confirmation Code"
    type: string
    sql: ${TABLE}.booking_confirmation_id ;;
  }

  dimension: originator_cd {
    view_label: "Reservation"
    label: "Originator Cd"
    description: "Originator Code"
    type: string
    sql: ${TABLE}.originator_cd ;;
  }

  dimension: adults_cnt {
    view_label: "Reservation"
    label: "Adults"
    description: "Number of adults."
    type: number
    sql: ${TABLE}.adults_cnt ;;
  }

  dimension: children_cnt {
    view_label: "Reservation"
    label: "Children"
    description: "Number of children."
    type: number
    sql: ${TABLE}.children_cnt ;;
  }

  #-- guest

  dimension: profile_type_cd {
    view_label: "Guest"
    label: "Profile Type Cd"
    description: "Profile Type Code"
    type: string
    sql: ${TABLE}.profile_type_cd ;;
  }

  dimension: profile_creator_cd {
    view_label: "Guest"
    label: "Profile Creator Cd"
    description: "Profile Creator Code"
    type: string
    sql: ${TABLE}.profile_creator_cd ;;
  }

  dimension: adrs_type_cd {
    view_label: "Guest"
    label: "Address Type Cd"
    description: "Address Type Code"
    type: string
    sql: ${TABLE}.adrs_type_cd ;;
  }

  dimension: city_name {
    view_label: "Guest"
    label: "Address City"
    description: "Address City"
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: country_cd {
    view_label: "Guest"
    label: "Address Country"
    description: "Address Country"
    type: string
    sql: ${TABLE}.country_cd ;;
  }

  dimension: state_province_cd {
    view_label: "Guest"
    label: "Address State/Province Cd"
    description: "Address State/Province Code"
    type: string
    sql: ${TABLE}.state_province_cd ;;
  }

  #-- room

  dimension: channel_cd {
    view_label: "Room"
    label: "Channel Cd"
    description: "Channel Code"
    type: string
    sql: ${TABLE}.channel_cd ;;
  }

  dimension: complimentary_cd {
    view_label: "Room"
    label: "Complimentary Cd"
    description: "Complimentary Code"
    type: string
    sql: ${TABLE}.complimentary_cd ;;
  }

  dimension: confidential_rate_cd {
    view_label: "Room"
    label: "Confidential Rate Cd"
    description: "Confidential Rate Code"
    type: string
    sql: ${TABLE}.confidential_rate_cd ;;
  }

  dimension: guarantee_type_cd {
    view_label: "Room"
    label: "Guarantee Type Cd"
    description: "Guarantee Type Code"
    type: string
    sql: ${TABLE}.guarantee_type_cd ;;
  }

  dimension: market_cd {
    view_label: "Room"
    label: "Market Cd"
    description: "Market Code"
    type: string
    sql: ${TABLE}.market_cd ;;
  }

  dimension: reservation_status_cd {
    view_label: "Room"
    label: "Reservation Status Cd"
    description: "Reservation Status Code"
    type: string
    sql: ${TABLE}.reservation_status_cd ;;
  }

  dimension: room_no {
    view_label: "Room"
    label: "Room #"
    description: "Room Number"
    type: string
    sql: ${TABLE}.room_no ;;
  }

  dimension: room_type_cd {
    view_label: "Room"
    label: "Room Type Cd"
    description: "Room Type Code"
    type: string
    sql: ${TABLE}.room_type_cd ;;
  }

  dimension: stay_source_cd {
    view_label: "Room"
    label: "Source Cd"
    description: "Source Code"
    type: string
    sql: ${TABLE}.stay_source_cd ;;
  }

  dimension: rate_plan_cd {
    view_label: "Room"
    label: "Rate Plan Cd"
    description: "Rate Plan Code"
    type: string
    sql: ${TABLE}.rate_plan_cd ;;
  }

  dimension: room_rate_amt {
    view_label: "Room"
    label: "Room Rate"
    description: "Room Rate"
    type: number
    value_format_name: usd
    sql: ${TABLE}.rate_amt ;;
  }

  dimension: room_rate_tier {
    view_label: "Room"
    label: "Room Rate Tier"
    description: "Room Rate Tier"
    type: tier
    tiers: [0, 100, 200, 250, 300, 350, 400, 500, 600, 800, 1000, 1500]
    style: relational
    sql: ${room_rate_amt} ;;
    value_format_name: usd_0
  }

  dimension: currency_cd {
    view_label: "Room"
    label: "Currency Cd"
    description: "Currency Code"
    type: string
    sql: ${TABLE}.currency_cd ;;
  }

  #-------------------------------------------------------------------------------------------
  #-- measures
  #-------------------------------------------------------------------------------------------

  measure: record_cnt {
    label: "Records"
    description: "Records from table."
    type: count
    value_format_name: decimal_0
    }

  measure: reservation_cnt {
    label: "Reservations"
    description: "Count of distinct reservations"
    type: count_distinct
    sql: ${reservation_key};;
    value_format_name: decimal_0
  }

  measure: m_adults_cnt {
    label: "Adults"
    description: "Number of adults."
    type: sum_distinct
    sql_distinct_key: ${reservation_key} ;;
    sql: ${adults_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avg_adults_cnt {
    label: "Adults / Res"
    description: "Adults / Reservation"
    type: number
    sql:utl..udf_divide( ${m_adults_cnt}, ${reservation_cnt} ) ;;
    value_format_name: decimal_1
  }

  measure: m_children_cnt {
    label: "Children"
    description: "Number of children."
    type: sum_distinct
    sql_distinct_key: ${reservation_key} ;;
    sql: ${children_cnt} ;;
    value_format_name: decimal_0
  }

  measure: avg_children_cnt {
    label: "Children / Res"
    description: "Children / Reservation"
    type: number
    sql:utl..udf_divide( ${m_children_cnt}, ${reservation_cnt} ) ;;
    value_format_name: decimal_1
  }

  measure: rooms_booked_cnt {
    label: "Rms Bkd"
    description: "Rooms Booked"
    type: number
    sql: count( ${stay_date_sid} ) ;;
    value_format_name: decimal_0
    }

  measure: rooms_booked_tcnt {
    label: "Rms Bkd Total"
    type: sum_distinct
    sql_distinct_key: ${stay_date_key} ;;
    sql: ${TABLE}.stay_nights_tcnt ;;
    value_format_name: decimal_0
  }

  measure: avg_res_nights_cnt {
    label: "Rms Bkd / Res"
    description: "Rms Bkd / Reservations"
    type: number
    sql: utl..udf_divide( ${rooms_booked_cnt}, ${reservation_cnt} ) ;;
    value_format_name: decimal_1
    }

  measure: stay_nights_tpct {
    label: "Rms Bkd % Total"
    description: "Rms Bkd / Rms Bkd Total"
    type: number
    sql: utl..udf_divide( ${rooms_booked_cnt}, ${rooms_booked_tcnt} ) ;;
    value_format_name: percent_1
  }

  measure: room_rev_amt {
    label: "Rev Rms $"
    description: "Revenue Rooms $"
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
