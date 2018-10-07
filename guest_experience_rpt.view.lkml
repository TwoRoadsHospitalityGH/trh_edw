view: guest_experience_rpt {
  sql_table_name: pedw.dev.guest_experience_f ;;

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
  dimension: review_id {
    view_label: "Guest Feedback"
    label: "Review ID"
    description: "Review ID within Revinate."
    type: string
    sql: ${TABLE}.review_id ;;
  }

  dimension: review_title {
    view_label: "Guest Feedback"
    label: "Review Title"
    description: "Review title entered by guest."
    type: string
    sql: ${TABLE}.review_title ;;
  }

  dimension: review_site_name {
    view_label: "Guest Feedback"
    label: "Review Site Name"
    type: string
    sql: ${TABLE}.review_site_name ;;
  }

  dimension: review_site_url {
    view_label: "Guest Feedback"
    label: "Review Site URL"
    type: string
    sql: ${TABLE}.review_site_url ;;
  }

  dimension: review_subratings_str {
    view_label: "Guest Feedback"
    label: "Review Subratings"
    description: "Review Subratings"
    type: string
    sql: ${TABLE}.review_subratings_str ;;
  }

  dimension: response_type_name {
    view_label: "Guest Feedback"
    label: "Response Type Name"
    description: "Guest/Meeting Review/Survey"
    type: string
    sql: ${TABLE}.response_type_name ;;
  }

  dimension: question_group_name {
    view_label: "Guest Feedback"
    label: "Question Group Name"
    description: "Goals, Other, etc."
    type: string
    sql: ${TABLE}.question_group_name ;;
  }

  dimension: question_type_name {
    view_label: "Guest Feedback"
    label: "Feedback Type Name"
    description: "Type of answer: Score, YesNo, Freeform, etc."
    type: string
    sql: ${TABLE}.question_answer_type_name ;;
  }

  dimension: question_name {
    view_label: "Guest Feedback"
    label: "Question Name"
    description: "Full name of the question."
    type: string
    sql: ${TABLE}.question_name ;;
  }

  dimension: question_answer_score {
    view_label: "Guest Feedback"
    label: "Feedback Score"
    description: "Question score."
    type: number
    sql: ${TABLE}.question_score_no ;;
  }

  dimension: question_answer_str {
    view_label: "Guest Feedback"
    label: "Feedback Text"
    description: "Text answer to review/survey question."
    type: string
    sql: ${TABLE}.question_answer_str ;;
  }

  dimension: booking_channel_cd {
    view_label: "Guest Stay"
    label: "Booking Channel Cd"
    type: string
    sql: ${TABLE}.booking_channel_cd ;;
  }

  dimension: guest_title_cd {
    view_label: "Guest Stay"
    label: "Guest Title Cd"
    type: string
    sql: ${TABLE}.guest_title_cd ;;
  }

  dimension: guest_name {
    view_label: "Guest Stay"
    label: "Guest Name"
    type: string
    sql: ${TABLE}.guest_name ;;
  }

  dimension: guest_location_name {
    view_label: "Guest Stay"
    label: "Guest City"
    type: string
    sql: ${TABLE}.guest_location_name ;;
  }

  dimension: guest_state_cd {
    view_label: "Guest Stay"
    label: "Guest State Cd"
    type: string
    sql: ${TABLE}.guest_state_cd ;;
  }

  dimension: room_type_cd {
    view_label: "Guest Stay"
    label: "Room Type Cd"
    type: string
    sql: ${TABLE}.room_type_cd ;;
  }

  dimension: room_no {
    view_label: "Guest Stay"
    label: "Room No."
    type: string
    sql: ${TABLE}.room_no ;;
  }

  dimension: rate_plan_cd {
    view_label: "Guest Stay"
    label: "Rate Plan Cd"
    type: string
    sql: ${TABLE}.rate_plan_cd ;;
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
        <font color="red">{{ rendered_value }}</font>
        {% endif %};;
  }

}
