connection: "edw"
include: "*.view"         # include all views in this project

label: "Focus Critcial Metrics"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.mm_property_fc_f ;;
  max_cache_age: "8 hours"
}

explore: mm_property_fc_f {
  group_label: "***Development***"
  label: "Focus Critical Metrics"
  persist_with: model_caching_dg
  view_label: "    Measures"
#   access_filter: {
#      field: user_property_fdm.user_id
#      user_attribute: atmp_userid
#    }

  join: date_dm {
    from: date_dm
    view_label: "  Date"
    sql_on: ${date_dm.date_sid} = ${mm_property_fc_f.month_date_sid};;
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
