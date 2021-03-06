view: mm_property_kpi_f {
  sql_table_name: pedw.fact.mm_property_kpi_f ;;

# filters

  measure: listagg {
    type: string
    sql:  listagg(distinct ${period_type_dm.period_type_name}, ' | ')  ;;
    hidden: yes
  }

  measure: max_month_name {
    type: max
    sql:  ${date_dm.month_name} ;;
    hidden: yes
  }

  measure: max_year {
    type: max
    sql:  ${date_dm.year} ;;
    hidden: yes
  }

  measure: month_name_year {
    sql: concat(concat(concat(concat(${max_month_name}, ', '),  ${max_year}), ' - '), ${listagg}) ;;
    hidden: yes
  }

# keys

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
    label: "Calculation"
    description: "Metric calculation."
    type: string
    sql: max(${TABLE}.kpi_calc_dscr) ;;
    hidden: no
  }

  measure: property_cnt {
    label: "Properties"
    description: "Count of distinct properties."
    type: count_distinct
    sql: ${property_key} ;;
    value_format: "0"
    hidden: no
  }

  measure: property_cnt_over_kpi {
    type: number
    sql: sum( ${property_cnt} ) over( partition by ${performance_metric_dm.metric_name} ) ;;
    hidden: yes
  }

  measure: property_cnt_pct {
    label: "Properties - %"
    description: "Percent of properties."
    type: number
    sql: utl..udf_divide(${property_cnt},  ${property_cnt_over_kpi}) ;;
    value_format_name: percent_1
    hidden: no
    html: <div style="background-color: #AARRGGBB; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div> ;;
  }

  measure: property_goal_cnt {
    label: "Regional Ops Leader Properties"
    description: "Count of distinct properties with goals."
    type: count_distinct
    sql: iff( ${property_metric_goal_dm.status_cd} = 'NA', to_number(NULL), ${property_key}) ;;
    value_format: "0"
    hidden: yes
  }

  measure: property_cnt_over_goal {
    type: number
    sql: sum( ${property_goal_cnt} ) over( partition by ${performance_metric_dm.metric_name}, ${property_dm.evp_full_last_first} ) ;;
    hidden: yes
  }

  measure: property_goal_cnt_pct {
    label: "Goal Above/Below - Ops Leader %"
    description: "Percent of properties above or below goal by regional operations leader."
    type: number
    sql: utl..udf_divide(${property_cnt},  ${property_cnt_over_goal}) ;;
    value_format_name: percent_1
    hidden: no
    html: <div style="background-color: #AARRGGBB; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div> ;;
  }

  measure: property_finance_cnt {
    label: "Regional Finance Leader Properties"
    description: "Count of distinct properties with goals."
    type: count_distinct
    sql: iff( ${property_metric_goal_dm.status_cd} = 'NA', to_number(NULL), ${property_key}) ;;
    value_format: "0"
    hidden: yes
  }

  measure: property_cnt_over_finance_goal {
    type: number
    sql: sum( ${property_goal_cnt} ) over( partition by ${performance_metric_dm.metric_name}, ${property_dm.regional_fnc_ldr_full_name} ) ;;
    hidden: yes
  }

  measure: property_goal_cnt_pct_fin {
    label: "Goal Above/Below - Fnc Leader %"
    description: "Percent of properties above or below goal by regional finance leader."
    type: number
    sql: utl..udf_divide(${property_cnt},  ${property_cnt_over_finance_goal}) ;;
    value_format_name: percent_1
    hidden: no
    html: <div style="background-color: #AARRGGBB; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div> ;;
  }

  measure: property_brand_cnt {
    label: "Brand Properties"
    description: "Count of distinct properties within each brand."
    type: count_distinct
    sql: iff( ${property_metric_goal_dm.status_cd} = 'NA', to_number(NULL), ${property_key}) ;;
    value_format: "0"
    hidden: yes
  }

  measure: property_cnt_over_brand {
    type: number
    sql: sum( ${property_goal_cnt} ) over( partition by ${performance_metric_dm.metric_name}, ${property_dm.brand_name} ) ;;
    hidden: yes
  }

  measure: property_brand_cnt_pct_fin {
    label: "Goal Above/Below - Brand %"
    description: "Percent of properties above or below goal by brand."
    type: number
    sql: utl..udf_divide(${property_cnt},  ${property_cnt_over_brand}) ;;
    value_format_name: percent_1
    hidden: no
    html: <div style="background-color: #AARRGGBB; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div> ;;
  }

  measure: amt_prev {
    view_label: "  % Previous"
    group_label: "% Previous"
    label: "Properties"
    description: "Percent to previous value."
    type: percent_of_previous
    sql: ${measure_kpi} ;;
    hidden: no
  }

  measure: amt_pttl {
    view_label: "  % Total"
    group_label: "% Total"
    label: "Properties"
    description: "Percent of total value."
    type: percent_of_total
    sql: ${property_cnt} ;;
    hidden: no
  }

  measure: kpi_val_base {
    type: average
    sql:  ${TABLE}.kpi_val  ;;
    hidden: yes
  }

  measure: kpi_val_d1 {
    type: number
    value_format_name: decimal_1
    sql:  ${kpi_val_base} ;;
    hidden: yes
  }

  measure: kpi_val_d2 {
    type: number
    value_format_name: decimal_2
    sql: ${kpi_val_base} ;;
    hidden: yes
  }

  measure: kpi_val_id {
    type: number
    value_format_name: decimal_0
    sql: ${kpi_val_base} ;;
    hidden: yes
  }

  measure: measure_kpi {
    type: number
    label: "Score"
    description: "Metric score/value"
    value_format_name: percent_1
    sql:  ${kpi_val_base} ;;
    html: <!-- exceed  -->
          {% if {{kpi_classification_dm.class_cd._value}} == 'exceed'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'exceed' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'exceed' %}
              <div style="background-color: #63BE7B; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'exceed'%}
              <div style="background-color: #63BE7B; font-size:100%; color:black; text-align:center">{{ kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #63BE7B; font-size:100%; color:black; text-align:center">{{ kpi_val_d2._rendered_value }}</div>
            {% endif %}
          <!-- above  -->
          {% elsif {{kpi_classification_dm.class_cd._value}} == 'above'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'above' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'above' %}
              <div style="background-color: #C3DA81; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'above' %}
              <div style="background-color: #C3DA81; font-size:100%; color:black; text-align:center">{{ kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #C3DA81; font-size:100%; color:black; text-align:center">{{ kpi_val_d2._rendered_value }}</div>
            {% endif %}
          <!-- below -->
          {% elsif {{kpi_classification_dm.class_cd._value}} == 'below'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'below' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'below' %}
              <div style="background-color: #FDD27F; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'below' %}
              <div style="background-color: #FDD27F; font-size:100%; color:black; text-align:center">{{ kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #FDD27F; font-size:100%; color:black; text-align:center">{{ kpi_val_d2._rendered_value }}</div>
            {% endif %}
          <!-- atrisk -->
          {% elsif {{kpi_classification_dm.class_cd._value}} == 'atrisk'
                and {{kpi_classification_dm.class_cd_min._value}} == 'atrisk' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'atrisk' %}
              <div style="background-color: #F87B6E; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'atrisk' %}
              <div style="background-color: #F87B6E; font-size:100%; color:black; text-align:center">{{ kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #F87B6E; font-size:100%; color:black; text-align:center">{{ kpi_val_d2._rendered_value }}</div>
            {% endif %}
          <!-- na -->
          {% elsif {{kpi_classification_dm.class_cd._value}} == 'na'
                and {{kpi_classification_dm.class_cd_min._value}} == 'na' %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'na' %}
              <div style="background-color: #A6A6A6; font-size:100%; color:#A6A6A6; text-align:center">{{ rendered_value }}</div>
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1'
                  and {{kpi_classification_dm.class_cd_min._value}} == 'na' %}
              <div style="background-color: #A6A6A6; font-size:100%; color:#A6A6A6; text-align:center">{{ kpi_val_d1._rendered_value }}</div>
            {% else %}
              <div style="background-color: #A6A6A6; font-size:100%; color:#A6A6A6; text-align:center">{{ kpi_val_d2._rendered_value }}</div>
            {% endif %}
         <!-- no format -->
          {% else %}
            {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
              {{ rendered_value }}
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1' %}
              {{ kpi_val_d1._rendered_value }}
            {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'id' %}
              {{ kpi_val_id._rendered_value }}
            {% else %}
              {{ kpi_val_d2._rendered_value }}
            {% endif %}
          {% endif %}
          ;;
    required_fields:[kpi_val_d1, kpi_val_d2, kpi_val_id, kpi_classification_dm.class_cd, kpi_classification_dm.class_cd_min]
    drill_fields: [metric_drill*]
  }

# Variance to goal

  measure: var_to_goal_base {
    type: number
    sql:  ${kpi_val_base} - ${property_metric_goal_dm.goal_val_base}  ;;
    hidden: yes
  }

  measure: var_to_goal_base_d1 {
    type: number
    value_format_name: decimal_1
    sql:  ${kpi_val_base} - ${property_metric_goal_dm.goal_val_base} ;;
    hidden: yes
  }

  measure: var_to_goal_base_d2 {
    type: number
    value_format_name: decimal_2
    sql: ${kpi_val_base} - ${property_metric_goal_dm.goal_val_base} ;;
    hidden: yes
  }

  measure: var_to_goal_base_id {
    type: number
    value_format_name: decimal_0
    sql: ${kpi_val_base} - ${property_metric_goal_dm.goal_val_base} ;;
    hidden: yes
  }

  measure: var_to_goal {
    type: number
    label: "Goal - Var"
    description: "Variance to annual goal."
    sql: ${measure_kpi} - ${property_metric_goal_dm.goal_val_base} ;;
    hidden: no
    value_format_name: percent_1
    html: {% if {{performance_metric_dm.value_format_str._value}} == 'percent_1' %}
            {{ rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str._value}} == 'decimal_1' %}
            {{ var_to_goal_base_d1._rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str._value}} == 'decimal_2' %}
            {{ var_to_goal_base_d2._rendered_value }}
          {% endif %};;
    required_fields:[var_to_goal_base, var_to_goal_base_d1, var_to_goal_base_d2]
  }

  set: metric_drill {
    fields: [
      kpi_calc_dscr
    ]
  }
}
