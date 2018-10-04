connection: "edw"
include: "*.view"         # include all views in this project

label: "STR Daily"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.strd_property_f ;;
  max_cache_age: "8 hours"
}

explore: strd_property_f {
  group_label: "***Alpha Releases***"
  label: "STR Daily (alpha)"
  persist_with: model_caching_dg
  view_label: "    Measures"

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: atmp_userid
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${strd_property_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: strd_property_f_ly {
    from: strd_property_f_ly
    view_label: "   LY"
    sql_on: ${strd_property_f_ly.property_key} = ${strd_property_f.property_key}
      and ${strd_property_f_ly.date_sid}       = ${strd_property_f.ly_date_sid} ;;
    type: left_outer
    relationship: one_to_one
  }

  join: strd_property_f_toly {
    from: strd_property_f_toly
    view_label: "    Measures"
    type: cross
    relationship: one_to_one
  }

  join: date_dm {
    from: date_dm
    view_label: "  Date"
    sql_on: ${date_dm.date_sid} = ${strd_property_f.date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: date_month_parameter{
    from:  date_month_parameter
    view_label: "  Date"
    sql_on: ${date_month_parameter.date_sid} = ${strd_property_f.date_sid} ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${strd_property_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
