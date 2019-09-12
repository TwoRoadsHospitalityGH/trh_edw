view: dt_revintel_pace_pickup_date {
  derived_table: {
    sql:
    select
         property_key
        ,stay_date_sid
        ,asof_date_sid
        ,asof_dt
        ,min( dt_start_asof_dt ) as dt_start_asof_dt
        ,max( dt_end_asof_dt ) as dt_end_asof_dt
    from
    (
      SELECT
         property_key
        ,stay_date_sid
        ,asof_date_sid
        ,asof_dt
        ,min(asof_dt) over (partition by stay_date_sid) AS dt_start_asof_dt
        ,max(asof_dt) over (partition by stay_date_sid) as  dt_end_asof_dt
       FROM
         pedw.fact.revintel_property_pace_f r
        where
        {% if asof_dt._is_filtered %}
            {% condition asof_dt %} r.asof_dt {% endcondition %}
        {% elsif asof_dt_prior_1_day._is_filtered %}
            r.asof_dt >= dateadd(day, -1, {% date_start asof_dt_prior_1_day %}) AND r.asof_dt < {% date_end asof_dt_prior_1_day %}
        {% elsif asof_dt_prior_7_day._is_filtered %}
            r.asof_dt >= dateadd(day, -7, {% date_start asof_dt_prior_7_day %}) AND r.asof_dt < {% date_end asof_dt_prior_7_day %}
        {% elsif asof_dt_prior_30_day._is_filtered %}
            r.asof_dt >= dateadd(day, -30, {% date_start asof_dt_prior_30_day %}) AND r.asof_dt < {% date_end asof_dt_prior_30_day %}
        {% else %}
            {% condition asof_dt %} r.asof_dt {% endcondition %}
          {% endif %}
    --
    )
     group by 1,2,3,4
    ;;
  }

  dimension: unique_identifier {
    type: number
    primary_key: yes
    sql: ${TABLE}.property_key || ${stay_date_sid} || ${asof_date_sid} ;;
    hidden:  yes
  }

  dimension: property_key {
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: stay_date_sid {
    type:  number
    primary_key:  no
    sql: ${TABLE}.stay_date_sid ;;
    hidden:  yes
  }

  dimension: asof_date_sid {
    type: number
    sql: ${TABLE}.asof_date_sid ;;
    hidden:  yes
  }

  dimension: asof_dt {
    type: date
    sql: ${TABLE}.asof_dt ;;
    hidden:  no
    label: "Pickup Date Range"
    view_label: "As Of Date"
    description: "Period Date Range"
  }

  filter: asof_dt_prior_1_day {
    type: date
    sql: ${asof_dt} >= dateadd(day, -1, {% date_start asof_dt_prior_1_day %}) AND ${asof_dt} < {% date_end asof_dt_prior_1_day %} ;;
    hidden:  no
    label: " As Of Date - 1 Day Prior Pickup"
    view_label: "As Of Date"
    description: "Dates Between Date and 1 Day Prior to Date"
  }

  filter: asof_dt_prior_7_day {
    type: date
    sql: ${asof_dt} >= dateadd(day, -7, {% date_start asof_dt_prior_7_day %}) AND ${asof_dt} < {% date_end asof_dt_prior_7_day %} ;;
    hidden:  no
    label: " As Of Date - 7 Day Prior Pickup"
    view_label: "As Of Date"
    description: "Dates Between Date and 7 Days Prior to Date"
  }

  filter: asof_dt_prior_30_day {
    type: date
    sql: ${asof_dt} >= dateadd(day, -30, {% date_start asof_dt_prior_30_day %}) AND ${asof_dt} < {% date_end asof_dt_prior_30_day %} ;;
    hidden:  no
    label: "As Of Date - 30 Day Prior Pickup"
    view_label: "As Of Date"
    description: "Dates Between Date and 30 Days Prior to Date"
  }

  measure: pickup_date_range {
    view_label: "As Of Date"
    label: "Pickup Date Range"
    description: "Dates included in selection."
    type: string
    sql:  concat(concat(to_char(min(${TABLE}.asof_dt), 'mon dd, yyyy'), ' - ') , to_char(max(${TABLE}.asof_dt), 'mon dd, yyyy') ) ;;
  }

  measure: dt_start_asof_dt {
    type: date
    description: "First As Of Date for Period"
    sql: ${TABLE}.dt_start_asof_dt ;;
    hidden: no
    label: "Pickup Start Date"
    view_label: "As Of Date"
  }

  measure: dt_end_asof_dt {
    type: date
    description: "Last As Of Date for Period"
    sql: ${TABLE}.dt_end_asof_dt ;;
    hidden: no
    label: "Pickup End Date"
    view_label: "As Of Date"
  }



}
