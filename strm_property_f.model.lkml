connection: "edw"
include: "*.view"         # include all views in this project

label: "STR Monthly"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.strm_property_f ;;
  max_cache_age: "8 hours"
}

explore: strm_property_f {
  group_label: "Property"
  label: "STR Monthly"
  persist_with: model_caching_dg
  view_label: "    Measures"
#   access_filter: {
#      field: user_property_fdm.user_id
#      user_attribute: atmp_userid
#    }

  join: date_dm {
    view_label: "  Date"
    sql_on: ${date_dm.date_sid} = ${strm_property_f.month_date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: date_month_parameter{
    view_label: "  Date"
    sql_on: ${date_month_parameter.date_sid} = ${strm_property_f.month_date_sid} ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${strm_property_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
