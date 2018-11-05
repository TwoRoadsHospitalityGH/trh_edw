view: inntopia_res_property_f {
  sql_table_name: pedw.dev.inntopia_res_property_f ;;

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

  dimension: propertykey{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: booking_date_sid {
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

  dimension: cancellation_date_sid {
    type: number
    sql: ${TABLE}.cancellation_date_sid ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------
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

  dimension: reservation_no {
    view_label: "Reservation"
    label: "Reservation #"
    description: "Reservation Number"
    type: string
    sql: ${TABLE}.cenrezid ;;
  }

  dimension: market_segment_name {
    view_label: "Room"
    label: "Market Segment Name"
    description: "Report Market Segment"
    type: string
    sql: ${TABLE}.report_marketsegment ;;
  }

  dimension: sub_market_segment_name {
    view_label: "Room"
    label: "Sub Market Segment Name"
    description: "Market Segment Description"
    type: string
    sql: ${TABLE}.market_segment_description ;;
  }

  dimension: sub_source_channel_name {
    view_label: "Room"
    label: "Source Channel Name"
    description: "Source of Business Description"
    type: string
    sql: ${TABLE}.source_of_business_description ;;
  }
  dimension: source_channel_name {
    view_label: "Room"
    label: "Source Channel Group"
    description: "Source of Business Group"
    type: string
    sql: ${TABLE}.source_of_business_group ;;
  }
}
