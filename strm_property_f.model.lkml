connection: "edw"
include: "*.view"         # include all views in this project

label: "STR Monthly"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.dev.strm_property_f ;;
  max_cache_age: "8 hours"
}

explore: strm_property_f {
  group_label: "***Alpha Releases***"
  label: "STR Monthly (alpha)"
  persist_with: model_caching_dg
  view_label: "    Measures"

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: atmp_userid
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${strm_property_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: strm_property_f_ly {
    from: strm_property_f_ly
    view_label: "   LY"
    sql_on: ${strm_property_f_ly.property_key}   = ${strm_property_f.property_key}
        and ${strm_property_f_ly.month_date_sid} = ${strm_property_f.month_date_sid} - 10000;;
    type: left_outer
    relationship: one_to_one
  }

  join: strm_property_f_toly {
    from: strm_property_f_toly
    view_label: "    Measures"
    type: cross
    relationship: one_to_one
  }

  join: date_dm {
    from: date_dm
    view_label: "  Date"
    fields: [ date_dm.cal_dt
            , date_dm.cal_month_dt
            , date_dm.month
            , date_dm.month_num
            , date_dm.month_name
            , date_dm.quarter
            , date_dm.quarter_of_year
            , date_dm.year
            , current_period_qtd
            , current_period_ytd
            ]
    sql_on: ${date_dm.date_sid} = ${strm_property_f.month_date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: date_month_parameter{
    from:  date_month_parameter
    view_label: "  Date"
    sql_on: ${date_month_parameter.date_sid} = ${strm_property_f.month_date_sid} ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${strm_property_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
