connection: "edw"
include: "*.view"         # include all views in this project

label: "Focus Critcial Metrics"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.mm_property_fc_f ;;
  max_cache_age: "8 hours"
}

explore: mm_property_fc_f {
  group_label: "***User Acceptance Testing***"
  label: "Focus Critical Metrics (uat)"
  persist_with: model_caching_dg
  view_label: "    Measures"
  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: looker_ldap_user_id
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${mm_property_fc_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: date_dm {
    from: date_dm
    view_label: "  Date"
    sql_on: ${date_dm.date_sid} = ${mm_property_fc_f.month_date_sid};;
    sql_where: {% parameter date_dm.available_timeperiod %} = ''
    or utl..udf_period_trunc_dt( {% parameter date_dm.available_timeperiod %}, ${date_dm.cal_dt} ) = utl..udf_period_dt( {% parameter date_dm.available_timeperiod %}  ) ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    view_label: " Property"
    sql_on: ${mm_property_fc_f.property_key} = ${property_dm.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
