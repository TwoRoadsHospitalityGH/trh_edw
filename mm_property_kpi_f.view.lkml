view: mm_property_kpi_f {
  sql_table_name: pedw.fact.mm_property_kpi_f ;;

# Keys

  dimension: month_date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.month_date_sid ;;
    hidden: yes
  }

  dimension: period_type_shk {
    type: string
    sql: ${TABLE}.period_type_shk ;;
    hidden: yes
  }

  dimension: property_key{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: performance_metric_shk {
    type: string
    sql: ${TABLE}.performance_metric_shk ;;
    hidden: yes
  }

  dimension: kpi_class_shk {
    type: string
    sql: ${TABLE}.kpi_class_shk ;;
    hidden: yes
  }

  dimension: property_metric_goal_shk {
    type: string
    sql: ${TABLE}.property_metric_goal_shk ;;
    hidden: yes
  }

# KPI Measure Amounts

  measure: numerator_val {
    group_label: "KPIs"
    label: "Numerator"
    type: number
    sql: ${TABLE}.numerator_val ;;
    hidden: yes
    }

  measure: denominator_val {
    group_label: "KPIs"
    label: "Denominator"
    type: number
    sql: ${TABLE}.denominator_val ;;
    hidden: yes
  }

  measure: property_cnt {
    group_label: "Property"
    type: count_distinct
    sql: ${property_key} ;;
    value_format: "0"
    hidden: no
  }

  measure: property_cnt_over_kpi {
    type: number
    sql: sum( ${property_cnt} ) over( partition by ${performance_metric_dm.metric_name} ) ;;
    value_format: "0"
    hidden: no
  }

  measure: property_cnt_pttl {
    group_label: "Property"
    description: "Percent of Properties"
    label: "Percent of Properties"
    type: number
    sql: ${property_cnt} / ${property_cnt_over_kpi} ;;
    value_format_name: percent_1
    hidden: no
  }

  measure: kpi_val_p_1 {
    type: number
    sql:  ${TABLE}.kpi_val ;;
    value_format: "0.0\%"
    html: {% if value >= performance_metric_dm.goal_exceed_val_m._value %}
            <div style="background-color: #63BE7B; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% elsif value >= performance_metric_dm.goal_above_val_m._value %}
            <div style="background-color: #C3DA81; font-size:100%; text-align:center">{{ rendered_value }}</div>
           {% elsif value >= performance_metric_dm.goal_below_val_m._value %}
            <div style="background-color: #FDD27F; font-size:100%; text-align:center">{{ rendered_value }}</div>
           {% elsif value < performance_metric_dm.goal_below_val_m._value %}
            <div style="background-color: #F87B6E; font-size:100%; text-align:center">{{ rendered_value }}</div>
           {% else %}
            <div style="background-color: #A6A6A6; font-size:100%; text-align:center">{{ rendered_value }}</div>
           {% endif %};;
    hidden: yes
  }
  measure: kpi_val_p_2 {
    type: number
    sql:  ${TABLE}.kpi_val ;;
    value_format: "0.00\%"
    html: {% if value >= performance_metric_dm.goal_exceed_val_m._value %}
            <div style="background-color: #63BE7B; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% elsif value >= performance_metric_dm.goal_above_val_m._value %}
            <div style="background-color: #C3DA81; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% elsif value >= performance_metric_dm.goal_below_val_m._value %}
            <div style="background-color: #FDD27F; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% elsif value < performance_metric_dm.goal_below_val_m._value %}
            <div style="background-color: #F87B6E; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% else %}
            <div style="background-color: #A6A6A6; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% endif %};;
    hidden: yes
}

  measure: kpi_val_d_1 {
    type: number
    sql:  ${TABLE}.kpi_val ;;
    value_format: "0.0"
    html: {% if value >= performance_metric_dm.goal_exceed_val_m._value %}
            <div style="background-color: #63BE7B; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% elsif value >= performance_metric_dm.goal_above_val_m._value %}
            <div style="background-color: #C3DA81; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% elsif value >= performance_metric_dm.goal_below_val_m._value %}
            <div style="background-color: #FDD27F; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% elsif value < performance_metric_dm.goal_below_val_m._value %}
            <div style="background-color: #F87B6E; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% else %}
            <div style="background-color: #A6A6A6; font-size:100%; text-align:center">{{ rendered_value }}</div>
          {% endif %};;
    hidden: yes
  }

  measure: kpi_val {
    label: "KPI Amount"
    type: string
    sql: max(case performance_metric_dm.value_format_str
            when 'percent_1'
            then to_char( round( ${TABLE}.kpi_val * 100, 2 ), 'fm999,999,990.0"%"'  )
            when 'decimal_1'
            then to_char( round( ${TABLE}.kpi_val , 2 ), 'fm999,999,990.0'  )
            when 'decimal_2'
            then to_char( round( ${TABLE}.kpi_val , 2 ), 'fm999,999,990.00'  )
            when 'usd'
            then to_char( round( ${TABLE}.kpi_val , 2 ), 'fmmi"$"999,999,990.00'  )
            when 'usd_0'
            then to_char( round( ${TABLE}.kpi_val , 0 ), 'fmmi"$"999,999,990'  )
            else to_char( ${TABLE}.kpi_val, 'tm9' )
            end)
            ;;
    html: {% if {{kpi_classification_dm.class_cd._value}} contains 'exceed' %}
    <div style="background-color: #63BE7B; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% elsif {{kpi_classification_dm.class_cd._value}} contains 'above' %}
    <div style="background-color: #C3DA81; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% elsif {{kpi_classification_dm.class_cd._value}} contains 'below' %}
    <div style="background-color: #FDD27F; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% elsif {{kpi_classification_dm.class_cd._value}} contains 'atrisk' %}
    <div style="background-color: #F87B6E; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% else %}
    <div style="background-color: #A6A6A6; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% endif %};;
  }

#   measure: kpi_val {
#     label: "KPI Amount"
#     type: sum
#     sql: ${TABLE}.kpi_val ;;
#     value_format: "0.0%"
#     html:  {% if performance_metric_dm.value_format_str._value contains "percent_1" %}
#             {{ kpi_val_p_1._rendered_value }}
#            {% elsif performance_metric_dm.value_format_str._value contains "percent_2" %}
#             {{ kpi_val_p_2._rendered_value }}
#            {% elsif performance_metric_dm.value_format_str._value contains "decimal_1" %}
#             {{ kpi_val_d_1._rendered_value }}
#            {% endif %};;
#     drill_fields: [property_metric_goal_dm.goal]
# }
}
