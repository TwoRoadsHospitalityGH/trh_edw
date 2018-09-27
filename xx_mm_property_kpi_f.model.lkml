connection: "edw"
include: "*.view"         # include all views in this project

label: "Test"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.fact.mm_property_kpi_f ;;
  max_cache_age: "8 hours"
}

explore: xx_mm_property_kpi_f {
  group_label: "Test"
  label: "Test"
  persist_with: model_caching_dg
  view_label: "    Measures"
#   access_filter: {
#      field: user_property_fdm.user_id
#      user_attribute: atmp_userid
#    }

  always_filter: {
    filters: {
      field: period_type_dm.period_type_name
      value: "YTD"
    }
  }


  join: performance_metric_dm {
    view_label: "Metric"
    sql_on: ${performance_metric_dm.performance_metric_shk} = ${xx_mm_property_kpi_f.performance_metric_shk} ;;
    type: inner
    relationship: many_to_one
  }

  join: kpi_classification_dm {
    view_label: "Scored As"
    sql_on: ${kpi_classification_dm.kpi_class_shk} = ${xx_mm_property_kpi_f.kpi_class_shk} ;;
    type: inner
    relationship: many_to_one
  }

  join: date_dm{
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
      , current_period_mtd
      , current_period_qtd
      , current_period_ytd
      , prior_month

    ]
    sql_on: ${date_dm.date_sid} = ${xx_mm_property_kpi_f.month_date_sid}  ;;
    type: inner
    relationship: many_to_one
  }

  join: date_month_parameter{
    view_label: "  Date"
    sql_on: ${date_month_parameter.date_sid} = ${xx_mm_property_kpi_f.month_date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: period_type_dm {
    view_label: "Aggregation Type"
    sql_on: ${period_type_dm.period_type_shk} = ${xx_mm_property_kpi_f.period_type_shk} ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    view_label: " Property"
    sql_on: ${xx_mm_property_kpi_f.property_key} = ${property_dm.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: property_metric_goal_dm {
    view_label: "Goal"
    sql_on: ${property_metric_goal_dm.property_metric_goal_shk} = ${xx_mm_property_kpi_f.property_metric_goal_shk} ;;
    type: inner
    relationship: one_to_one
  }

}