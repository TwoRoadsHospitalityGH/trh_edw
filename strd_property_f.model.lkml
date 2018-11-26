connection: "edw"
include: "*.view"         # include all views in this project

label: "STR Daily (old)"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.strd_property_f ;;
  max_cache_age: "8 hours"
}

explore: str_property_v {
  from: str_property_v
  sql_table_name: pedw.fact.strd_property_f ;;
  group_label: "***Development***"
  label: "STR Daily (old)"
  persist_with: model_caching_dg
  view_label: "    Measures"

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: looker_ldap_user_id
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${str_property_v.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: str_property_v_ly {
    from: str_property_v_ly
    sql_table_name: pedw.fact.strd_property_f ;;
    view_label: "   LY"
    sql_on: ${str_property_v_ly.property_key} = ${str_property_v.property_key}
        and ${str_property_v_ly.date_sid}     = ${str_property_v.ly_date_sid} ;;
    type: left_outer
    relationship: one_to_one
  }

  join: strd_property_f_toly {
    from: str_property_v_toly
    view_label: "    Measures"
    type: cross
    relationship: one_to_one
  }

  join: date_dm {
    from: date_dm
    view_label: "  Date"
    sql_on: ${date_dm.date_sid} = ${str_property_v.date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: date_month_parameter{
    from:  date_month_parameter
    view_label: "  Date"
    sql_on: ${date_month_parameter.date_sid} = ${str_property_v.date_sid} ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${str_property_v.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
