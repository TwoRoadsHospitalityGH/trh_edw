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
  persist_with: model_caching_dg
  case_sensitive: no

  join: inntopia_dimcustomer {
    view_label: "Customer Details"
    sql_on: ${inntopia_dimcampaign.CUSTOMERKEY} = ${inntopia_dimcustomer.CUSTOMERKEY} ;;
    type: inner
    relationship: one_to_many
  }

  join: first_open_date_dm{
    from: date_dm
    view_label: " Booking Date"
    sql_on: ${first_open_date_dm.cal_dt} = ${inntopia_dimcampaign.FIRSTOPENEDDATE}  ;;
    type: inner
    relationship: one_to_many
  }
  join: first_click_date_dm{
    from: date_dm
    view_label: " Cancellation Date"
    sql_on: ${first_click_date_dm.cal_dt} = ${inntopia_dimcampaign.FIRSTCLICKEDDATE} ;;
    type: inner
    relationship: one_to_many
  }
  join: last_event_date_dm{
    from: date_dm
    view_label: " Arrival Date"
    sql_on: ${last_event_date_dm.cal_dt} = ${inntopia_dimcampaign.LASTEVENTDATE} ;;
    type: inner
    relationship: one_to_many
  }
}
