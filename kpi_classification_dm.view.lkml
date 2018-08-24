view: kpi_classification_dm {
  sql_table_name: pedw.fact.kpi_classification_dm ;;

  dimension: kpi_class_shk {
    sql: ${TABLE}.kpi_class_shk ;;
    hidden: yes
  }

  dimension: property_metric_goal_shk {
    sql: ${TABLE}.property_metric_goal_shk ;;
    hidden: yes
  }

  dimension: background_color__str {
    sql: ${TABLE}.background_color_str ;;
    hidden: yes
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
    hidden: no
  }

  dimension: group_sort_no {
    type: string
    sql: ${TABLE}.group_sort_no ;;
    hidden: yes
    order_by_field: class_sort_no
  }

    measure: class_cd {
    label: "Classification Code"
    type: max
    sql: ${TABLE}.class_cd ;;
    hidden: yes
  }

  dimension: gs_class_cd {
    type: string
    sql: ${TABLE}.class_cd ;;
    hidden: yes
  }

  dimension: class_cd_dm {
    type: string
    sql: ${TABLE}.class_cd ;;
    hidden: yes
  }

  dimension: class_name {
    label: "Classification Name"
    type: string
    sql: ${TABLE}.class_name ;;
    hidden: no
    order_by_field: class_sort_no
    html: {% if value == 'Killing It!' %}
            <div style="background-color: #63BE7B; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% elsif value == 'Above' %}
            <div style="background-color: #C3DA81; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% elsif value == 'Below' %}
            <div style="background-color: #FDD27F; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% elsif value == 'At-Risk' %}
            <div style="background-color: #F87B6E; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% elsif value == 'Not Applicable' %}
            <div style="background-color: #A6A6A6; font-size:100%; color:black; text-align:center">{{ rendered_value }}</div>
          {% endif %};;
  }

  dimension: class_name1 {
    label: "Classification Name1"
    type: string
    sql: ${TABLE}.class_name ;;
    hidden: no
    order_by_field: class_sort_no
     html: {% if {{class_cd_dm._value}} contains 'exceed' %}
    <div style="background-color: #63BE7B; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% elsif {{class_cd_dm._value}} contains 'above' %}
    <div style="background-color: #C3DA81; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% elsif {{class_cd_dm._value}} contains 'below' %}
    <div style="background-color: #FDD27F; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% elsif {{class_cd_dm._value}} contains 'atrisk' %}
    <div style="background-color: #F87B6E; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% else %}
    <div style="background-color: #A6A6A6; font-size:100%; text-align:center">{{ rendered_value }}</div>
    {% endif %};;
  }

  dimension: class_sort_no {
    type: string
    sql: ${TABLE}.class_sort_no ;;
    hidden: yes
  }

  dimension: point_no {
    label: " Points Possible"
    type: number
    sql: ${TABLE}.point_no ;;
    hidden: no
  }
}
