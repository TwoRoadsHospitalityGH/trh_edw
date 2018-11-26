connection: "edw"
include: "*.view"         # include all views in this project
#include: "*.dashboard"

label: "STR Daily"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.strd_property_f_seg ;;
  max_cache_age: "8 hours"
}

explore: str_property_v_seg {
  from: str_property_v_seg
  sql_table_name: pedw.fact.strd_property_f_seg ;;
  group_label: "Property"
  label: "STR Daily"
  persist_with: model_caching_dg
  case_sensitive: no

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: looker_ldap_user_id
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${str_property_v_seg.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: str_property_v_ty_seg {
    from: str_property_v_ty_seg
    view_label: "    TY"
    type: cross
    relationship: one_to_one
  }

  join: str_property_v_ly_seg {
    from: str_property_v_ly_seg
    view_label: "   LY"
    type: cross
    relationship: one_to_one
  }

  join: str_property_v_toly_seg {
    from: str_property_v_toly_seg
    view_label: "    TY"
    type: cross
    relationship: one_to_one
  }

  join: date_dm {
    from: date_dm
    view_label: "  Date"
    sql_on: ${date_dm.date_sid} = ${str_property_v_seg.date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${str_property_v_seg.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
