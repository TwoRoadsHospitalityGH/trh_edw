connection: "edw"
include: "*.view"         # include all views in this project

label: "Portfolio Pace (uat)"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.fact.property_pace_f ;;
  max_cache_age: "8 hours"
}

explore: property_pace_f {
  group_label: "***User Acceptance Testing***"
  label: "Portfolio Pace (uat)"
  view_label: "  Measures"
  persist_with: model_caching_dg
  case_sensitive: no

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: looker_ldap_user_id
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${property_pace_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: date_dm{
    from: date_dm
    view_label: " Stay Date"
    sql_on: ${date_dm.date_sid} = ${property_pace_f.pace_date_sid}  ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${property_pace_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }
}
