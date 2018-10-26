connection: "edw"
include: "*.view"         # include all views in this project

label: "Inntopia"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from praw_inntopia.dbo.dimevent ;;
  max_cache_age: "8 hours"
}

explore: inntopia_dimevent {
  view_label: "Event Details"
  group_label: "***Development***"
  label: "Inntopia (dev)"
  persist_with: model_caching_dg
  case_sensitive: no


  join: inntopia_dimlodging {
    view_label: "Lodging Details"
    sql_on:     ${inntopia_dimevent.CUSTOMERKEY}      = ${inntopia_dimlodging.CUSTOMERKEY}
            and ${inntopia_dimevent.EVENTID}          = ${inntopia_dimlodging.EVENTID}
            and ${inntopia_dimevent.SOURCESYSTEMCODE} = ${inntopia_dimlodging.SOURCESYSTEMCODE};;
    type: inner
    relationship: one_to_many
  }

  join: inntopia_dimcustomer {
    view_label: "Customer Details"
    sql_on: ${inntopia_dimevent.CUSTOMERKEY} = ${inntopia_dimcustomer.CUSTOMERKEY} ;;
    type: inner
    relationship: one_to_many
  }

  join: date_dm{
    from: date_dm
    view_label: " Event Date"
    sql_on: ${date_dm.cal_dt} = ${inntopia_dimevent.EVENTDATE}  ;;
    type: inner
    relationship: one_to_many
  }
  join: book_date_dm{
    from: date_dm
    view_label: " Event Date"
    sql_on: ${date_dm.cal_dt} = ${inntopia_dimlodging.BOOKINGDATE}  ;;
    type: inner
    relationship: one_to_many
  }
  join: cancel_date_dm{
    from: date_dm
    view_label: " Event Date"
    sql_on: ${date_dm.cal_dt} = ${inntopia_dimlodging.CANCELLATIONDATE}  ;;
    type: inner
    relationship: one_to_many
  }
  join: arrival_date_dm{
    from: date_dm
    view_label: " Event Date"
    sql_on: ${date_dm.cal_dt} = ${inntopia_dimlodging.ARRIVALDATE}  ;;
    type: inner
    relationship: one_to_many
  }
}
