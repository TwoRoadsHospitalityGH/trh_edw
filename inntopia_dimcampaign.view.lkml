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

  measure: received_cnt {
    label: "Received"
    description: "Count of campagins received"
    view_label: "  Measures"
    type: sum
    sql:  ${TABLE}.ISRECEIVED ;;
  }

  measure:  isblocked {
    label: "Blocked"
    description: "Count of campagins blocked"
    view_label: "  Measures"
    type: sum
    sql: ${TABLE}.ISBLOCKED ;;
  }

  measure:  isopened {
    label: "Opened"
    description: "Count of campagins opened"
    view_label: "  Measures"
    type: sum
    sql: ${TABLE}.ISOPENED ;;
  }

  measure:  isclicked {
    label: "Clicked"
    description: "Count of campagins clicked"
    view_label: "  Measures"
    type: sum
    sql: ${TABLE}.ISCLICKED ;;
  }
}
