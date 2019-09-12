view: dt_revintel_segment_pace_pickup_date {
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
         pedw.fact.revintel_property_segment_pace_f r
        where {% condition asof_dt %} r.asof_dt {% endcondition %}
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
