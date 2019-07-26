connection: "edw"

include: "*.view.lkml"                       # include all views in this project
label: "Revintel Property Pace (uat)"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.revintel_property_pace_f ;;
  max_cache_age: "8 hours"
}

explore: revintel_property_pace_f {
  group_label: "***Development***"
  label: "Revintel Property Pace (dev)"
  view_label: "  Measures"
  persist_with: model_caching_dg
  case_sensitive: no

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: looker_ldap_user_id
  }

  always_filter: {
    filters: {
      field: asof_date_dm.asof_date
      value: "today"
    }

    filters: {
      field:  agent_nm_first_letter_grp
      value: "is any value"
    }
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${revintel_property_pace_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: stay_date_dm{
    from: date_dm
    view_label: " Stay Date"
    sql_on: ${stay_date_dm.date_sid} = ${revintel_property_pace_f.stay_date_sid}  ;;
    sql_where: {% parameter stay_date_dm.available_timeperiod %} = ''
      or utl..udf_period_trunc_dt( {% parameter stay_date_dm.available_timeperiod %}, ${stay_date_dm.cal_dt} ) = utl..udf_period_dt( {% parameter stay_date_dm.available_timeperiod %}  ) ;;
    type: inner
    relationship: many_to_one
  }

  join: asof_date_dm{
    from: asof_date_dm
    view_label: "As Of Date"
    sql_on: ${asof_date_dm.date_sid} = ${revintel_property_pace_f.asof_date_sid}  ;;
    #sql_where: {% parameter asof_date_dm.available_timeperiod %} = ''
    # or utl..udf_period_trunc_dt( {% parameter asof_date_dm.available_timeperiod %}, ${asof_date_dm.cal_dt} ) = utl..udf_period_dt( {% parameter asof_date_dm.available_timeperiod %}  ) ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${revintel_property_pace_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }
}
