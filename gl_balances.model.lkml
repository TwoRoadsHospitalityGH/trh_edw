connection: "edw"

include: "*.view.lkml"                       # include all views in this project


label: "Monthly GL Balances"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.glm_property_f ;;
  max_cache_age: "8 hours"
}


explore: gl_base_fields_v {
    from: gl_base_fields_v
    sql_table_name: pedw.dev.glm_property_f ;;
    group_label: "***Development***"
    label: "Monthly GL Balances"
    persist_with: model_caching_dg
    case_sensitive: no


  join: gl_balances_act {
    from: gl_balances_act
    view_label: "     Act"
    type: cross
    relationship: one_to_one
  }

  join: gl_balances_ly {
    from: gl_balances_ly
    view_label: "    LY"
    type: cross
    relationship: one_to_one
  }

  join: gl_balances_bdgt {
    from: gl_balances_bdgt
    view_label: "  Bdgt"
    type: cross
    relationship: one_to_one
  }

  join: gl_balances_toly {
    from: gl_balances_toly
    view_label: "     Act"
    type: cross
    relationship: one_to_one
  }

  join: gl_balances_tobdgt {
    from: gl_balances_tobdgt
    view_label: "     Act"
    type: cross
    relationship: one_to_one
  }

  join: date_dm {
    from: date_dm
    view_label: "  Date"
    sql_on: ${date_dm.date_sid} = ${gl_base_fields_v.date_sid};;
    sql_where: {% parameter date_dm.available_timeperiod %} = ''
      or utl..udf_period_trunc_dt( {% parameter date_dm.available_timeperiod %}, ${date_dm.cal_dt} ) = utl..udf_period_dt( {% parameter date_dm.available_timeperiod %}  ) ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${gl_base_fields_v.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
