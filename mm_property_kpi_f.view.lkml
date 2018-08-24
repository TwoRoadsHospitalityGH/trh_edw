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

  measure: kpi_calc_dscr {
    label: "Calculation Description"
    type: string
    sql: max(${TABLE}.kpi_calc_dscr) ;;
    hidden: no
    }

  measure: property_cnt {
    label: "Properties"
    description: "Distinct Count of Properties"
    type: count_distinct
    sql: ${property_key} ;;
    value_format: "0"
    hidden: no
  }

  measure: property_cnt_over_kpi {
    type: number
    sql: sum( ${property_cnt} ) over( partition by ${performance_metric_dm.metric_name} ) ;;
    value_format: "0"
    hidden: yes
  }

  measure: property_cnt_pct {
    label: "Percent of Properties"
    description: "Percent of Properties"
    type: number
    sql: ${property_cnt} / ${property_cnt_over_kpi} ;;
    value_format_name: percent_1
    hidden: no
    html: <div style="background-color: #AARRGGBB; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div> ;;
  }

  measure: kpi_val_base {
    type: max
    sql:  iff( performance_metric_dm.value_format_str ='decimal_1', ${TABLE}.kpi_val * 100, ${TABLE}.kpi_val )  ;;
    hidden: yes
  }

  measure: gs_kpi_val_d1 {
    type: number
    value_format_name: decimal_1
    sql:  ${kpi_val_base} ;;
    hidden: yes
  }

  measure: gs_kpi_val_d2 {
    type: number
    value_format_name: decimal_2
    sql: ${kpi_val_base} ;;
    hidden: yes
  }

  measure: gs_measure_val {
    type: number
    value_format_name: percent_1
    sql:  ${kpi_val_base} ;;
    html: <!-- exceed  -->
          {% if {{kpi_classification_dm.class_cd._value}} == 'exceed' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
              <div style="background-color: #63BE7B; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_2' %}
              <div style="background-color: #63BE7B; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #63BE7B; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d2._rendered_value }}</div>
            {% endif %}
          <!-- above  -->
          {% elsif {{kpi_classification_dm.class_cd._value}} == 'above' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
              <div style="background-color: #C3DA81; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1' %}
              <div style="background-color: #C3DA81; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #C3DA81; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d2._rendered_value }}</div>
            {% endif %}
          <!-- below -->
          {% elsif {{kpi_classification_dm.class_cd._value}} == 'below' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
              <div style="background-color: #FDD27F; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1' %}
              <div style="background-color: #FDD27F; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #FDD27F; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d2._rendered_value }}</div>
            {% endif %}
          <!-- atrisk -->
          {% elsif {{kpi_classification_dm.class_cd._value}} == 'atrisk' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
              <div style="background-color: #F87B6E; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1' %}
              <div style="background-color: #F87B6E; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #F87B6E; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d2._rendered_value }}</div>
            {% endif %}
          <!-- na -->
          {% elsif {{kpi_classification_dm.class_cd._value}} == 'not applicable' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
              <div style="background-color: #A6A6A6; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1' %}
              <div style="background-color: #A6A6A6; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #A6A6A6; font-size:100%; color:black; text-align:center">{{ gs_kpi_val_d2._rendered_value }}</div>
            {% endif %}
          <!-- none -->
          {% else %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
              {{ rendered_value }}
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1' %}
              {{ gs_kpi_val_d1._rendered_value }}
            {% else %}
              {{ gs_kpi_val_d2._rendered_value }}
            {% endif %}
          {% endif %};;
    required_fields:[gs_kpi_val_d1, gs_kpi_val_d2]
}

  measure: kpi_val {
    label: "Metric Value"
    type: max
    sql: ${TABLE}.kpi_val ;;
#     (case performance_metric_dm.value_format_str
#             when 'percent_1'
#             then to_char( round( ${TABLE}.kpi_val * 100, 2 ), 'fm999,999,990.0"%"'  )
#             when 'decimal_1'
#             then to_char( round( ${TABLE}.kpi_val * 100, 2 ), 'fm999,999,990.0'  )
#             when 'decimal_2'
#             then to_char( round( ${TABLE}.kpi_val , 2 ), 'fm999,999,990.00'  )
#             when 'usd'
#             then to_char( round( ${TABLE}.kpi_val , 2 ), 'fmmi"$"999,999,990.00'  )
#             when 'usd_0'
#             then to_char( round( ${TABLE}.kpi_val , 0 ), 'fmmi"$"999,999,990'  )
#             else to_char( ${TABLE}.kpi_val, 'tm9' )
#             end)
    html: {% if {{kpi_classification_dm.class_cd._value}} contains 'exceed' %}
            <div style="background-color: #63BE7B; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% elsif {{kpi_classification_dm.class_cd._value}} contains 'above' %}
            <div style="background-color: #C3DA81; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% elsif {{kpi_classification_dm.class_cd._value}} contains 'below' %}
            <div style="background-color: #FDD27F; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% elsif {{kpi_classification_dm.class_cd._value}} contains 'atrisk' %}
            <div style="background-color: #F87B6E; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% elsif {{kpi_classification_dm.class_cd._value}} contains 'not appli' %}
            <div style="background-color: #A6A6A6; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% else %}
            <div style="background-color: #AARRGGBB; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% endif %};;
  }
}
