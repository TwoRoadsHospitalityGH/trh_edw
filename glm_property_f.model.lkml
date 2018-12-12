connection: "edw"

include: "*.view.lkml"                       # include all views in this project


label: "Monthly GL Balances"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.glm_property_f ;;
  max_cache_age: "8 hours"
}


explore: glm_property_f {
    from: glm_property_f
    sql_table_name: pedw.dev.glm_property_f ;;
    group_label: "***Development***"
    label: "Monthly GL Balances (dev)"
    persist_with: model_caching_dg
    case_sensitive: no


  join: glm_property_f_ty {
    from: glm_property_f_ty
    view_label: "     TY"
    type: cross
    relationship: one_to_one
  }

  join: glm_property_f_ly {
    from: glm_property_f_ly
    view_label: "    LY"
    type: cross
    relationship: one_to_one
  }

  join: glm_property_f_bdgt {
    from: glm_property_f_bdgt
    view_label: "  Bdgt"
    type: cross
    relationship: one_to_one
  }

  join: glm_property_f_fcst30 {
    from: glm_property_f_fcst30
    view_label: "  Fcst"
    type: cross
    relationship: one_to_one
  }

  join: glm_property_f_toly {
    from: glm_property_f_toly
    view_label: "     TY"
    type: cross
    relationship: one_to_one
  }

  join: glm_property_f_tobdgt {
    from: glm_property_f_tobdgt
    view_label: "     TY"
    type: cross
    relationship: one_to_one
  }

  join: glm_property_f_tofcst30 {
    from: glm_property_f_tofcst30
    view_label: "     Fcst"
    type: cross
    relationship: one_to_one
  }

  join: date_dm {
    from: date_dm
    view_label: "  Date"
    sql_on: ${date_dm.date_sid} = ${glm_property_f.date_sid};;
    sql_where: {% parameter date_dm.available_timeperiod %} = ''
      or utl..udf_period_trunc_dt( {% parameter date_dm.available_timeperiod %}, ${date_dm.cal_dt} ) = utl..udf_period_dt( {% parameter date_dm.available_timeperiod %}  ) ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${glm_property_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
