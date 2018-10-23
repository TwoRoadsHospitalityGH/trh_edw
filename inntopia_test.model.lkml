connection: "edw"
include: "*.view"         # include all views in this project

label: "Inntopia"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from praw_inntopia.dbo.dimevent ;;
  max_cache_age: "8 hours"
}

explore: inntopia_dimevent {
  view_label: "Event"
  group_label: "***Development***"
  label: "Inntopia Test (dev)"
  persist_with: model_caching_dg
  case_sensitive: no


  join: inntopia_dimlodging {
    view_label: "Lodging"
    sql_on:     ${inntopia_dimevent.CUSTOMERKEY}      = ${inntopia_dimlodging.CUSTOMERKEY}
            and ${inntopia_dimevent.EVENTID}          = ${inntopia_dimlodging.EVENTID}
            and ${inntopia_dimevent.SOURCESYSTEMCODE} = ${inntopia_dimlodging.SOURCESYSTEMCODE};;
    type: inner
    relationship: many_to_one
  }

  join: inntopia_dimcustomer {
    view_label: "Customer"
    sql_on: ${inntopia_dimevent.CUSTOMERKEY} = ${inntopia_dimcustomer.CUSTOMERKEY} ;;
    type: inner
    relationship: many_to_one
  }

  join: date_dm{
    from: date_dm
    view_label: "Event Date"
    fields: [ date_dm.cal_dt
      , date_dm.cal_month_dt
      , date_dm.month
      , date_dm.month_num
      , date_dm.month_name
      , date_dm.quarter
      , date_dm.quarter_of_year
      , date_dm.year
      , current_period_qtd
      , current_period_ytd
    ]
    sql_on: ${date_dm.cal_dt} = ${inntopia_dimevent.EVENTDATE}  ;;
    type: inner
    relationship: many_to_one
  }

}
