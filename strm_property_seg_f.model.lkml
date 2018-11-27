connection: "edw"
include: "*.view"         # include all views in this project
#include: "str_monthly*.dashboard"

label: "STR Monthly"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.strm_property_seg_f ;;
  max_cache_age: "8 hours"
}

explore: str_property_seg_v {
  from: str_property_seg_v
  sql_table_name: pedw.fact.strm_property_seg_f ;;
  group_label: "Property"
  label: "STR Monthly"
  persist_with: model_caching_dg
  case_sensitive: no

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: looker_ldap_user_id
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${str_property_seg_v.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: str_property_seg_v_ty {
    from: str_property_seg_v_ty
    view_label: "    TY"
    type: cross
    relationship: one_to_one
  }

  join: str_property_seg_v_ly {
    from: str_property_seg_v_ly
    view_label: "   LY"
    type: cross
    relationship: one_to_one
  }

  join: str_property_seg_v_toly {
    from: str_property_seg_v_toly
    view_label: "    TY"
    type: cross
    relationship: one_to_one
  }

  join: date_dm {
    from: date_dm
    view_label: "  Date"
    sql_on: ${date_dm.date_sid} = ${str_property_seg_v.date_sid};;
    sql_where: {% parameter date_dm.available_timeperiod %} = ''
      or utl..udf_period_trunc_dt( {% parameter date_dm.available_timeperiod %}, ${date_dm.cal_dt} ) = utl..udf_period_dt( {% parameter date_dm.available_timeperiod %}  ) ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${str_property_seg_v.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
