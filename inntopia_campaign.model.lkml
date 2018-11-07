connection: "edw"
include: "*.view"         # include all views in this project

label: "Inntopia"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from praw_inntopia.dbo.dimcampaign ;;
  max_cache_age: "8 hours"
}

explore: inntopia_dimcampaign {
  group_label: "***Development***"
  label: "Inntopia Campaign (dev)"
  view_label: "  Measures"
  persist_with: model_caching_dg
  case_sensitive: no

  join: inntopia_dimcustomer {
    view_label: "  Measures"
    sql_on: ${inntopia_dimcampaign.CUSTOMERKEY} = ${inntopia_dimcustomer.CUSTOMERKEY} ;;
    type: inner
    relationship: many_to_one
  }

  join: first_open_date_dm{
    from: date_dm
    view_label: " First Opened Date"
    sql_on: ${first_open_date_dm.date_sid} = ${inntopia_dimcampaign.FIRSTOPENEDDATE_SID}  ;;
    type: inner
    relationship: many_to_one
  }
  join: first_click_date_dm{
    from: date_dm
    view_label: " First Clicked Date"
    sql_on: ${first_click_date_dm.date_sid} = ${inntopia_dimcampaign.FIRSTCLICKEDDATE_SID} ;;
    type: inner
    relationship: many_to_one
  }
  join: last_event_date_dm{
    from: date_dm
    view_label: " Last Event Date"
    sql_on: ${last_event_date_dm.date_sid} = ${inntopia_dimcampaign.LASTEVENTDATE_SID} ;;
    type: inner
    relationship: many_to_one
  }
  join: mailing_sent_date_dm{
    from: date_dm
    view_label: " Mailing Sent Date"
    sql_on: ${mailing_sent_date_dm.date_sid} = ${inntopia_dimcampaign.MAILINGSENTDATE_SID} ;;
    type: inner
    relationship: many_to_one
  }
}
