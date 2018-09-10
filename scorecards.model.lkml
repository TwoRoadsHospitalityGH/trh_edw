connection: "edw"

include: "*.view"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project

explore: mm_property_kpi_f {
  group_label: "Portfolio"
  label: "Performance Metrics"
  persist_for: "0 minutes"
  view_label: "1 - Measures"
  always_filter: {
    filters: {
      field: period_type_dm.period_type_name
      value: "YTD"
      }
#     filters: {
#       field: date_dm.cal_month_dt
#     }
  }


#   access_filter: {
#     field: property_dm.property_key
#     user_attribute: property_access
#   }

  join: performance_metric_dm {
    view_label: "Metric"
    sql_on: ${performance_metric_dm.performance_metric_shk} = ${mm_property_kpi_f.performance_metric_shk} ;;
    type: inner
    relationship: one_to_one
  }

  join: kpi_classification_dm {
    view_label: "Scored As"
    sql_on: ${kpi_classification_dm.kpi_class_shk} = ${mm_property_kpi_f.kpi_class_shk} ;;
    type: inner
    relationship: one_to_one
  }

  join: date_month_dm {
    view_label: "3 - Date"
    sql_on: ${mm_property_kpi_f.month_date_sid} = ${date_month_dm.date_sid} ;;
    type: inner
    relationship: one_to_one
  }

  join: period_type_dm {
    view_label: "Aggregation Type"
    sql_on: ${period_type_dm.period_type_shk} = ${mm_property_kpi_f.period_type_shk} ;;
    type: inner
    relationship: one_to_one
  }

  join: property_dm {
    view_label: "2 - Property"
    sql_on: ${mm_property_kpi_f.property_key} = ${property_dm.property_key} ;;
    type: inner
    relationship: one_to_one
  }

  join: property_metric_goal_dm {
    view_label: "Goal"
    sql_on: ${property_metric_goal_dm.property_metric_goal_shk} = ${mm_property_kpi_f.property_metric_goal_shk} ;;
    type: inner
    relationship: one_to_one
  }

}
