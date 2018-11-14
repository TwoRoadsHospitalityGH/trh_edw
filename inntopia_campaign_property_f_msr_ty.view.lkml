view: inntopia_campaign_property_f_msr_ty {
  derived_table: {
    sql: select 1 as dimcampaignid ;;
  }

  dimension: dimcampaignid {
    primary_key: yes
    type: number
    sql: ${TABLE}.dimcampaignid ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: tyly_bt {
    sql: ${inntopia_campaign_property_f.ty_bt} ;;
    hidden: yes
  }

  #---------------------------------------------------------------
  #----MEASURES-------------------------------------
  #---------------------------------------------------------------

  measure: sent_cnt {
    label: "Ttl Sent"
    description: "Count of campaigns sent"
    type: sum
    sql:  ${TABLE}.isreceived ;;
  }

  measure:  isblocked {
    label: "Blocked"
    description: "Count of campaigns blocked"
    type: sum
    sql: ${TABLE}.isblocked ;;
  }

  measure:  isopened {
    label: "Opened"
    description: "Count of campagins opened"
    type: sum
    sql: ${TABLE}.isopened ;;
  }

  measure:  isclicked {
    label: "Clicked"
    description: "Count of campagins clicked"
    type: sum
    sql: ${TABLE}.isclicked ;;
  }

  measure: subscriber_cnt{
    label: "Subscriber Count"
    description: "Count of distinct emails"
    type: count_distinct
    sql:  ${TABLE}.emailaddress ;;
  }

  measure: open_rate {
    label: "Open Rate"
    description: "Opens/Sends"
    sql: ${isopened}/${sent_cnt} ;;
  }

  measure: sent_rate {
    label: "Sent Rate"
    description: "Sent/Emails"
    sql: ${isopened}/${sent_cnt} ;;
  }

  measure: click_rate{
    label: "Click Rate"
    description: "Clicks/Opens"
    sql:  ${isclicked}/${isopened} ;;
  }

  measure: click_rate_sends{
    label: "Click Rate (Sends)"
    description: "Clicks/Sends"
    sql:  ${isclicked}/${sent_cnt} ;;
  }
  measure: record_cnt {
    label: "Customer Count"
    description: "Count of distinct customers"
    type: number
    sql: count(distinct ${TABLE}.customerkey) ;;
  }
  measure: avg_customer_age{
    label: "Avg Age"
    description: "Average Customer Age"
    type: average
    sql:  ${TABLE}.age ;;
  }
  measure: family_cnt {
    label: "Family Count"
    description: "Count of distinct family's"
    type: number
    sql: count(distinct ${TABLE}.familykey) ;;
  }

}
