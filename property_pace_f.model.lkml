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
    view_label: "Stay Date"
    sql_on: ${date_dm.date_sid} = ${property_pace_f.pace_date_sid}  ;;
    sql_where: {% parameter date_dm.available_timeperiod %} = ''
    or utl..udf_period_trunc_dt( {% parameter date_dm.available_timeperiod %}, ${date_dm.cal_dt} ) = utl..udf_period_dt( {% parameter date_dm.available_timeperiod %}  ) ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: "Property"
    sql_on: ${property_dm.property_key} = ${property_pace_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  always_filter: {
    filters: {
      field: property_dm.management_company_name
      value: "CoralTree"
    }
  }

}
