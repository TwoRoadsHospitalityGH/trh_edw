view: dt_revinate_review_word_cnt {
  derived_table: {
    sql:
      select
         property_key
        ,review_id
        ,language_name
        ,review_word_str
        --
        ,sum( review_word_cnt )         as review_word_cnt
      from
        pedw.fact.guest_experience_review_word_count_f
      group by
         property_key
        ,review_id
        ,language_name
        ,review_word_str
      ;;
  }
  dimension: unique_identifier {
    type: number
    primary_key: yes
    sql: ${TABLE}.property_key || ${TABLE}.review_id || ${TABLE}.review_word_str;;
    hidden:  yes
  }
  dimension: property_key {
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }
  dimension: review_id {
    type:  string
    primary_key:  no
    sql: ${TABLE}.review_id ;;
    hidden:  yes
  }
  dimension: language_name {
    type:  string
    primary_key:  no
    view_label: "Guest Feedback"
    label: "Online Review Language Source"
    description: "Source language of the review."
    sql: ${TABLE}.language_name ;;
    hidden:  no
  }
  dimension: review_word_str {
    type:  string
    primary_key:  no
    view_label: "Guest Feedback"
    label: "Online Review Word"
    description: "Word that appeared in the online review that isn't a stop word."
    sql: ${TABLE}.review_word_str ;;
    hidden:  no
  }
  measure: dt_review_word_cnt {
    type: sum
    value_format_name: decimal_0
    view_label: "Stats"
    label: "Word Count"
    description: "Word count of online review"
    sql: ${TABLE}.review_word_cnt ;;
    hidden: no
  }
}
