connection: "edw"
include: "*.view"         # include all views in this project

label: "Reservations (HAPI) new"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.hapi_res_property_f ;;
  max_cache_age: "8 hours"
}

explore: hapi_res_property_f_v {
  from: hapi_res_property_f_v
  sql_table_name: pedw.dev.hapi_res_property_f ;;
  group_label: "***Development***"
  label: "Reservations (HAPI) (dev) new"
  persist_with: model_caching_dg

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: atmp_userid
  }

  join: hapi_res_property_f_v_msr {
    from: hapi_res_property_f_v_msr
    view_label: "    Measures"
    type: cross
    relationship: one_to_one
  }

  join: hapi_res_property_f_v_msr_ly {
    from: hapi_res_property_f_v_msr_ly
    view_label: "   LY"
    type: cross
    relationship: one_to_one
  }

  join: hapi_res_property_f_v_msr_toly {
    from: hapi_res_property_f_v_msr_toly
    view_label: "    Measures"
    type: cross
    relationship: one_to_one
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${hapi_res_property_f_v.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: booked_date_dm {
    from: date_dm
    view_label: "  Booked Date"
    sql_on: ${booked_date_dm.date_sid} = ${hapi_res_property_f_v.booked_date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: stay_date_dm {
    from: date_dm
    view_label: "  Stay Date"
    sql_on: ${stay_date_dm.date_sid} = ${hapi_res_property_f_v.stay_date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${hapi_res_property_f_v.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
