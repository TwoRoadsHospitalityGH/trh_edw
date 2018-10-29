view: inntopia_dimcampaign {
  sql_table_name: PRAW_inntopia.dbo.dimcampaign ;;
  dimension:  CUSTOMERKEY {
    sql: ${TABLE}.CUSTOMERKEY ;;
  }
  dimension:  FAMILYKEY {
    sql: ${TABLE}.FAMILYKEY ;;
  }
  dimension:  EVENTADDRESS {
    sql: ${TABLE}.EVENTADDRESS ;;
  }
  dimension:  MAILINGNAME {
    sql: ${TABLE}.MAILINGNAME ;;
  }
  dimension:  MAILINGSENTDATE {
    hidden: yes
    sql: ${TABLE}.MAILINGSENTDATE ;;
  }
  dimension:  FIRSTOPENEDDATE {
    hidden:  yes
    sql: ${TABLE}.FIRSTOPENEDDATE ;;
  }
  dimension:  FIRSTCLICKEDDATE {
    hidden: yes
    sql: ${TABLE}.FIRSTCLICKEDDATE ;;
  }
  dimension:  LASTEVENTDATE {
    hidden: yes
    sql: ${TABLE}.LASTEVENTDATE ;;
  }
  dimension:  ISOPTOUT {
    sql: ${TABLE}.ISOPTOUT ;;
  }
  dimension:  REPORTID {
    sql: ${TABLE}.REPORTID ;;
  }
  dimension:  RESENDFLAG {
    sql: ${TABLE}.RESENDFLAG ;;
  }

  #---------------------------------------------------------------
  #----MEASURES-------------------------------------
  #---------------------------------------------------------------

  measure: received_cnt {
    label: "Received Count"
    description: "Count of campagins received"
    view_label: "  Measures"
    type: sum
    sql:  ${TABLE}.ISRECEIVED ;;
  }

  measure:  isblocked {
    label: "Blocked Count"
    description: "Count of campagins blocked"
    view_label: "  Measures"
    type: sum
    sql: ${TABLE}.ISBLOCKED ;;
  }

  measure:  isopened {
    label: "Opened Count"
    description: "Count of campagins opened"
    view_label: "  Measures"
    type: sum
    sql: ${TABLE}.ISOPENED ;;
  }

  measure:  isclicked {
    label: "Clicked Count"
    description: "Count of campagins clicked"
    view_label: "  Measures"
    type: sum
    sql: ${TABLE}.ISCLICKED ;;
  }
}
