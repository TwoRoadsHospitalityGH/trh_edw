connection: "edw"
include: "*.view"         # include all views in this project

label: "Inntopia"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from praw_inntopia.dbo.dimlodging ;;
  max_cache_age: "8 hours"
}

explore: inntopia_dimlodging {
  group_label: "***Development***"
  label: "Inntopia Reservation (dev)"
  view_label: "  Measures"
  persist_with: model_caching_dg
  case_sensitive: no

  join: inntopia_dimcustomer {
    view_label: "  Measures"
    sql_on: ${inntopia_dimlodging.CUSTOMERKEY} = ${inntopia_dimcustomer.CUSTOMERKEY} ;;
    type: inner
    relationship: many_to_one
  }

  join: book_date_dm{
    from: date_dm
    view_label: " Booking Date"
    sql_on: ${book_date_dm.date_sid} = ${inntopia_dimlodging.BOOKINGDATE_SID}  ;;
    type: inner
    relationship: many_to_one
  }
  join: cancel_date_dm{
    from: date_dm
    view_label: " Cancellation Date"
    sql_on: ${cancel_date_dm.date_sid} = ${inntopia_dimlodging.CANCELLATIONDATE_SID}  ;;
    type: inner
    relationship: many_to_one
  }
  join: arrival_date_dm{
    from: date_dm
    view_label: " Arrival Date"
    sql_on: ${arrival_date_dm.date_sid} = ${inntopia_dimlodging.ARRIVALDATE_SID}  ;;
    type: inner
    relationship: many_to_one
  }
}
