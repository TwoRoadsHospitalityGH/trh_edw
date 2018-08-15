connection: "edw"

include: "*.view"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project

explore: mm_property_kpi_f {
  persist_for: "0 minutes"
  view_label: "1 - Measures"
  label: "Finance Scorecard"

#   access_filter: {
#     field: property_dm.property_key
#     user_attribute: property_access
#   }

  join: performance_metric_dm {
    view_label: "2 - KPI Metric"
    sql_on: ${performance_metric_dm.performance_metric_shk} = ${mm_property_kpi_f.performance_metric_shk} ;;
    type: inner
    relationship: one_to_one
  }

  join: kpi_classification_dm {
    view_label: "2 - KPI Metric"
    sql_on: ${kpi_classification_dm.kpi_class_shk} = ${mm_property_kpi_f.kpi_class_shk} ;;
    type: inner
    relationship: one_to_one
  }

  join: date_dm {
    view_label: "3 - Date"
    sql_on: ${mm_property_kpi_f.month_date_sid} = ${date_dm.date_sid} ;;
    type: inner
    relationship: one_to_one
  }

  join: property_dm {
    view_label: "4 - Property"
    sql_on: ${mm_property_kpi_f.property_key} = ${property_dm.property_key} ;;
    type: inner
    relationship: one_to_one
  }

  join: property_metric_goal_dm {
    view_label: "2 - KPI Metric"
    sql_on: ${property_metric_goal_dm.property_metric_goal_shk} = ${mm_property_kpi_f.property_metric_goal_shk} ;;
    type: inner
    relationship: one_to_one
  }

}
