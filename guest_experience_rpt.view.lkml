view: guest_experience_rpt {
  sql_table_name: pedw.dev.guest_experience_rpt ;;

# Keys

  dimension: property_key{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: response_date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.response_date_sid ;;
    hidden: yes
  }

  dimension: checkin_date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.checkin_date_sid ;;
    hidden: yes
  }

#--------------------------------------------------------------------------------
#-- dimensions
#--------------------------------------------------------------------------------
  dimension: response_type_name {
    view_label: "Question"
    label: "Response Type Name"
    description: "Review or Survey"
    type: string
    sql: ${TABLE}.response_type_name ;;
  }

  dimension: question_type_name {
    view_label: "Question"
    label: "Question Type Name"
    description: "Question type."
    type: string
    sql: ${TABLE}.question_type_name ;;
  }

  dimension: question_name {
    view_label: "Question"
    label: "Question Name"
    type: string
    sql: ${TABLE}.question_name ;;
  }

  dimension: room_type_cd {
    view_label: "Room"
    label: "Room Type Cd"
    type: string
    sql: ${TABLE}.room_type_cd ;;
  }

  dimension: room_no {
    view_label: "Room"
    label: "Room No."
    type: string
    sql: ${TABLE}.room_no ;;
  }

  dimension: rate_plan_cd {
    view_label: "Room"
    label: "Rate Plan Cd"
    type: string
    sql: ${TABLE}.rate_plan_cd ;;
  }

  dimension: guest_title_cd {
    view_label: "Guest"
    label: "Guest Title Cd"
    type: string
    sql: ${TABLE}.guest_title_cd ;;
  }

  dimension: guest_name {
    view_label: "Guest"
    label: "Guest Name"
    type: string
    sql: ${TABLE}.guest_name ;;
  }

  dimension: guest_location_name {
    view_label: "Guest"
    label: "Guest City"
    type: string
    sql: ${TABLE}.guest_location_name ;;
  }

  dimension: guest_state_cd {
    view_label: "Guest"
    label: "Guest State Cd"
    type: string
    sql: ${TABLE}.guest_state_cd ;;
  }

  dimension: booking_channel_cd {
    view_label: "Booking Channel"
    label: "Booking Channel Cd"
    type: string
    sql: ${TABLE}.booking_channel_cd ;;
  }

  dimension: review_site_name {
    view_label: "Review Site"
    label: "Review Site Name"
    type: string
    sql: ${TABLE}.review_site_name ;;
  }



#--------------------------------------------------------------------------------
#-- measures
#--------------------------------------------------------------------------------
  measure: property_cnt {
    label: "Properties"
    description: "Count of distinct properties."
    type: count_distinct
    sql: ${property_key} ;;
    value_format_name: decimal_0
  }

  measure: response_cnt {
    label: "Responses"
    description: "Count of distinct responses."
    type: count_distinct
    sql: ${TABLE}.review_id ;;
    value_format_name: decimal_0
  }

  measure: response_day_cnt {
    label: "Response Days"
    description: "Count of distinct days with responses."
    type: count_distinct
    sql: ${response_date_sid} ;;
    value_format_name: decimal_0
  }

  measure: response_score_no {
    label: "Score No"
    description: "Avg Response Score"
    type: average
    sql: ${TABLE}.question_score_no ;;
    value_format_name: decimal_1
  }

  measure: avg_daily_response_cnt {
    label: "Responses/Day"
    description: "Average responses per day."
    type: number
    sql: utl..udf_divide( ${response_cnt}, ${response_day_cnt} ) ;;
    value_format_name: decimal_1
  }

  measure: property_adr_index_pct_prev {
    view_label: "  % Previous"
    label: "Score No % Prev"
    description: "Score No"
    type: percent_of_previous
    sql: ${response_score_no} ;;
    value_format: "0.0\%"
    html:
        {% if value < 0 %}
        <p style="color: red; font-size:100%; text-align:centered">{{ rendered_value }}</p>
        {% endif %};;

  }

}
