view: property_metric_goal_dm {
  sql_table_name: pedw.fact.property_metric_goal_dm ;;

  dimension: property_metric_goal_shk {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_metric_goal_shk ;;
    hidden: yes
  }

  dimension: property_key  {
    type: number
    sql: ${TABLE}.PROPERTY_KEY ;;
    hidden: yes
  }

  dimension: fiscal_year  {
    type: number
    sql: ${TABLE}.fiscal_year ;;
    hidden: yes
  }

  dimension: metric_cd  {
    type: string
    sql: ${TABLE}.metric_cd ;;
    hidden: yes
  }

  dimension: status_cd  {
    type: string
    sql: ${TABLE}.status_cd ;;
    hidden: no
  }

  measure: goal_val_base  {
    type: average
    sql: ${TABLE}.goal ;;
    value_format_name:decimal_1
    hidden: yes
  }

  measure: goal_val_d1  {
    type: number
    sql: ${goal_val_base} ;;
    value_format_name:decimal_1
    hidden: yes
  }

  measure: goal_val_d2  {
    type: number
    sql: ${goal_val_base} ;;
    value_format_name:decimal_2
    hidden: yes
  }

  measure: goal_val_id  {
    type: number
    sql: ${goal_val_base} ;;
    value_format_name:id
    hidden: yes
  }

  measure: goal_m  {
    label: "Goal"
    view_label: "    Measures"
    description: "Annual goal."
    type: number
    sql: ${goal_val_base};;
    hidden: no
    value_format_name: percent_1
    html: {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
            {{ rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1' %}
            {{ goal_val_d1._rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_2' %}
            {{ goal_val_d2._rendered_value }}
          {% endif %};;
    required_fields:[goal_val_d1, goal_val_d2, goal_val_id]
  }

  measure: above_goal_m  {
    label: "Goal - Above"
    view_label: "    Measures"
    description: "Above annual goal."
    type: number
    sql: ${above_goal_val_base};;
    hidden: no
    value_format_name: percent_1
    html: {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
            {{ rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1' %}
            {{ above_goal_val_d1._rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_2' %}
            {{ above_goal_val_d2._rendered_value }}
          {% endif %};;
    required_fields:[above_goal_val_d1, above_goal_val_d2, above_goal_val_id]
  }

  measure: below_goal_m  {
    label: "Goal - Below"
    view_label: "    Measures"
    description: "Below annual goal."
    type: number
    sql: ${below_goal_val_base};;
    hidden: no
    value_format_name: percent_1
    html: {% if {{performance_metric_dm.value_format_str_m._value}} == 'percent_1' %}
            {{ rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_1' %}
            {{ below_goal_val_d1._rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str_m._value}} == 'decimal_2' %}
            {{ below_goal_val_d2._rendered_value }}
          {% endif %};;
    required_fields:[below_goal_val_d1, below_goal_val_d2, below_goal_val_id]
  }

  dimension: goal_val_base_d  {
    type: number
    sql: ${TABLE}.goal ;;
    value_format_name:decimal_1
    hidden: yes
  }

  dimension: goal_val_d1_d  {
    type: number
    sql: ${goal_val_base_d} ;;
    value_format_name:decimal_1
    hidden: yes
  }

  dimension: goal_val_d2_d  {
    type: number
    sql: ${goal_val_base_d} ;;
    value_format_name:decimal_2
    hidden: yes
  }

  dimension: goal  {
    label: "Goal"
    type: number
    sql: ${goal_val_base_d};;
    hidden: no
    value_format_name: percent_1
    html: {% if {{performance_metric_dm.value_format_str._value}} == 'percent_1' %}
            {{ rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str._value}} == 'decimal_1' %}
            {{ goal_val_d1_d._rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str._value}} == 'decimal_2' %}
            {{ goal_val_d2_d._rendered_value }}
          {% endif %};;
    required_fields:[goal_val_d1_d, goal_val_d2_d, goal_val_id]
  }

  measure: above_goal_val_base  {
    type: average
#     sql: iff(performance_metric_dm.metric_cd like '%excp%',-1, ${TABLE}.above_goal) ;;
    sql: ${TABLE}.above_goal ;;
    value_format_name:percent_1
    hidden: yes
  }

  measure: above_goal_val_d1  {
    type: number
    sql: ${above_goal_val_base} ;;
    value_format_name:decimal_1
    hidden: yes
  }

  measure: above_goal_val_d2  {
    type: number
    sql: ${above_goal_val_base} ;;
    value_format_name:decimal_2
    hidden: yes
  }

  measure: above_goal_val_id  {
    type: number
    sql: ${above_goal_val_base} ;;
    value_format_name:id
    hidden: yes
  }

  dimension: above_goal_val_base_d  {
    type: number
    sql: ${TABLE}.above_goal ;;
    value_format_name:decimal_1
    hidden: yes
  }

  dimension: above_goal_val_d1_d  {
    type: number
    sql: ${above_goal_val_base_d} ;;
    value_format_name:decimal_1
    hidden: yes
  }

  dimension: above_goal_val_d2_d  {
    type: number
    sql: ${above_goal_val_base_d} ;;
    value_format_name:decimal_2
    hidden: yes
  }

  dimension: above_goal  {
    label: "Goal - Above"
    type: number
    sql: ${above_goal_val_base_d};;
    hidden: no
    value_format_name: percent_1
    html: {% if {{performance_metric_dm.value_format_str._value}} == 'percent_1' %}
            {{ rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str._value}} == 'decimal_1' %}
            {{ above_goal_val_d1_d._rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str._value}} == 'decimal_2' %}
            {{ above_goal_val_d2_d._rendered_value }}
          {% endif %};;
    required_fields:[above_goal_val_d1_d, above_goal_val_d2_d, above_goal_val_id]
  }

  measure: below_goal_val_base  {
    type: average
    sql: ${TABLE}.below_goal ;;
    value_format_name:percent_1
    hidden: yes
  }

  measure: below_goal_val_d1  {
    type: number
    sql: ${below_goal_val_base} ;;
    value_format_name:decimal_1
    hidden: yes
  }

  measure: below_goal_val_d2  {
    type: number
    sql: ${below_goal_val_base} ;;
    value_format_name:decimal_2
    hidden: yes
  }

  measure: below_goal_val_id  {
    type: number
    sql: ${below_goal_val_base} ;;
    value_format_name:id
    hidden: yes
  }

 dimension: below_goal_val_base_d  {
  type: number
  sql: ${TABLE}.below_goal ;;
  value_format_name:decimal_1
  hidden: yes
}

dimension: below_goal_val_d1_d  {
  type: number
  sql: ${below_goal_val_base_d} ;;
  value_format_name:decimal_1
  hidden: yes
}

dimension: below_goal_val_d2_d  {
  type: number
  sql: ${below_goal_val_base_d} ;;
  value_format_name:decimal_2
  hidden: yes
}

dimension: below_goal  {
  label: "Goal - Below"
  type: number
  sql: ${below_goal_val_base_d};;
  hidden: no
  value_format_name: percent_1
  html: {% if {{performance_metric_dm.value_format_str._value}} == 'percent_1' %}
            {{ rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str._value}} == 'decimal_1' %}
            {{ below_goal_val_d1_d._rendered_value }}
          {% elsif {{performance_metric_dm.value_format_str._value}} == 'decimal_2' %}
            {{ below_goal_val_d2_d._rendered_value }}
          {% endif %};;
  required_fields:[below_goal_val_d1_d, below_goal_val_d2_d, below_goal_val_id]
}
}
