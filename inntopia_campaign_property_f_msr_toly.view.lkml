view: inntopia_campaign_property_f_msr_toly {
  derived_table: {
    sql: select 1 as dimcampaignid ;;
  }

  dimension: dimcampaignid {
    primary_key: yes
    type: number
    sql: ${TABLE}.dimcampaignid ;;
    hidden: yes
  }

  #--------------------------------------------------------------------------------
  #-- actual to LY
  #--------------------------------------------------------------------------------
  measure: subscriber_cnt_pct_toly {
    label: "Subscribers TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${inntopia_campaign_property_f_msr_ty.subscriber_cnt}, ${inntopia_campaign_property_f_msr_ly.subscriber_cnt} );;
    value_format_name: percent_1
  }

  measure: sent_cnt_pct_toly {
    label: "Sent TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${inntopia_campaign_property_f_msr_ty.sent_cnt}, ${inntopia_campaign_property_f_msr_ly.sent_cnt} );;
    value_format_name: percent_1
  }

  measure: blocked_cnt_pct_toly {
    label: "Blocked TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var(  ${inntopia_campaign_property_f_msr_ty.isblocked}, ${inntopia_campaign_property_f_msr_ly.isblocked} );;
    value_format_name: percent_1
  }



}
