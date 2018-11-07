view: inntopia_dimcampaign {
  sql_table_name: PRAW_inntopia.dbo.dimcampaign ;;
  dimension:  CUSTOMERKEY {
    sql: ${TABLE}.CUSTOMERKEY ;;
    hidden: yes
  }
  dimension:  FAMILYKEY {
    sql: ${TABLE}.FAMILYKEY ;;
    hidden:  yes
  }

  dimension:  MAILINGNAME {
    sql: ${TABLE}.MAILINGNAME ;;
    label: "Mailing Name"
    view_label: "Campaign Details"
  }
  dimension:  MAILINGSENTDATE_SID {
    hidden: yes
    sql: utl..udf_date_to_julian(${TABLE}.MAILINGSENTDATE) ;;
  }
  dimension:  FIRSTOPENEDDATE_SID {
    hidden:  yes
    sql: utl..udf_date_to_julian(${TABLE}.FIRSTOPENEDDATE) ;;
  }
  dimension:  FIRSTCLICKEDDATE_SID {
    hidden: yes
    sql: utl..udf_date_to_julian(${TABLE}.FIRSTCLICKEDDATE) ;;
  }
  dimension:  LASTEVENTDATE_SID {
    hidden: yes
    sql: utl..udf_date_to_julian(${TABLE}.LASTEVENTDATE) ;;
  }
  dimension:  REPORTID {
    sql: ${TABLE}.REPORTID ;;
  }


  #---------------------------------------------------------------
  #----MEASURES-------------------------------------
  #---------------------------------------------------------------

  measure: sent_cnt {
    label: "Ttl Sent"
    description: "Count of campagins sent"
    type: sum
    sql:  ${TABLE}.ISRECEIVED ;;
  }

  measure:  isblocked {
    label: "Blocked"
    description: "Count of Campaigns blocked"
    type: sum
    sql: ${TABLE}.ISBLOCKED ;;
  }

  measure:  isopened {
    label: "Opened"
    description: "Count of campagins opened"
    type: sum
    sql: ${TABLE}.ISOPENED ;;
  }

  measure:  isclicked {
    label: "Clicked"
    description: "Count of campagins clicked"
    type: sum
    sql: ${TABLE}.ISCLICKED ;;
  }

  measure: subscriber_cnt{
    label: "Subscriber Count"
    description: "Count of distinct emails"
    type: count_distinct
    sql:  ${TABLE}.EMAILADDRESS ;;
  }

  measure: open_rate {
    label: "Open Rate"
    description: "Opens/Sends"
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
}
