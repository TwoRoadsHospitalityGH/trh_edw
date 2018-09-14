connection: "edw"

include: "*.view"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.fact.mm_property_kpi_f ;;
  max_cache_age: "8 hours"
}

explore: mm_property_kpi_f {
  group_label: "Portfolio"
  label: "Performance Metrics"
  persist_with: model_caching_dg
  view_label: "    Measures"
  access_filter: {
     field: user_property_fdm.user_id
     user_attribute: atmp_userid
   }

  always_filter: {
    filters: {
      field: period_type_dm.period_type_name
      value: "YTD"
      }
  }

  join: user_property_fdm {
    view_label: " Property"
    sql_on: ${user_property_fdm.property_key} = ${mm_property_kpi_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: performance_metric_dm {
    view_label: "Metric"
    sql_on: ${performance_metric_dm.performance_metric_shk} = ${mm_property_kpi_f.performance_metric_shk} ;;
    type: inner
    relationship: one_to_many
  }

  join: kpi_classification_dm {
    view_label: "Scored As"
    sql_on: ${kpi_classification_dm.kpi_class_shk} = ${mm_property_kpi_f.kpi_class_shk} ;;
    type: inner
    relationship: one_to_many
  }

  join: date_month_dm {
    view_label: "  Date"
    sql_on: ${mm_property_kpi_f.month_date_sid} = ${date_month_dm.date_sid} ;;
    type: inner
    relationship: one_to_many
  }

  join: date_month_parameter{
    view_label: "  Date"
    sql_on: ${date_month_dm.date_sid} = ${date_month_parameter.date_sid} ;;
    type: inner
    relationship: one_to_many
  }

  join: period_type_dm {
    view_label: "Aggregation Type"
    sql_on: ${period_type_dm.period_type_shk} = ${mm_property_kpi_f.period_type_shk} ;;
    type: inner
    relationship: one_to_many
  }

  join: property_dm {
    view_label: " Property"
    sql_on: ${mm_property_kpi_f.property_key} = ${property_dm.property_key} ;;
    type: inner
    relationship: one_to_many
  }

  join: property_metric_goal_dm {
    view_label: "Goal"
    sql_on: ${property_metric_goal_dm.property_metric_goal_shk} = ${mm_property_kpi_f.property_metric_goal_shk} ;;
    type: inner
    relationship: one_to_many
  }

}
