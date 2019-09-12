connection: "edw"

include: "*.view.lkml"                       # include all views in this project
label: "Revintel Property Pace (alpha)"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.fact.revintel_property_pace_f ;;
  max_cache_age: "8 hours"
}

explore: dt_revintel_pace_pickup_date {}
explore: revintel_property_pace_f {
  group_label: "***Development***"
  label: "Revintel Property Pace (alpha)"
  view_label: "  Measures"
  persist_with: model_caching_dg
  case_sensitive: no

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: looker_ldap_user_id
  }

  #always_filter: {
  #  filters: {
  #    field: asof_date_dm.asof_date_str
  #    value: "today"
  #  }

    #filters: {
    #  field:  agent_nm_first_letter_grp
    #  value: ""
    #}
  #}

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${revintel_property_pace_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: stay_date_dm{
    from: date_dm
    view_label: " Stay Date"
    sql_on: ${stay_date_dm.date_sid} = ${revintel_property_pace_f.stay_date_sid}  ;;
    sql_where: {% parameter stay_date_dm.available_timeperiod %} = ''
      or utl..udf_period_trunc_dt( {% parameter stay_date_dm.available_timeperiod %}, ${stay_date_dm.cal_dt} ) = utl..udf_period_dt( {% parameter stay_date_dm.available_timeperiod %}  ) ;;
    type: inner
    relationship: many_to_one
  }

  join: asof_date_dm{
    from: asof_date_dm
    view_label: "As Of Date"
    sql_on: ${asof_date_dm.date_sid} = ${revintel_property_pace_f.asof_date_sid}  ;;
    #sql_where: {% parameter asof_date_dm.available_timeperiod %} = ''
    # or utl..udf_period_trunc_dt( {% parameter asof_date_dm.available_timeperiod %}, ${asof_date_dm.cal_dt} ) = utl..udf_period_dt( {% parameter asof_date_dm.available_timeperiod %}  ) ;;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${revintel_property_pace_f.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: dt_revintel_pace_avail_rooms {
    from: dt_revintel_pace_avail_rooms
    view_label: " Derived"
    sql_on: ${dt_revintel_pace_avail_rooms.property_key} = ${revintel_property_pace_f.property_key}
          and ${dt_revintel_pace_avail_rooms.date_sid} = ${revintel_property_pace_f.stay_date_sid}
          ;;
    type: inner
    relationship: many_to_one
  }

  join: dt_revintel_pace_pickup_date {
    from: dt_revintel_pace_pickup_date
    view_label: " Derived"
    sql_on:
          ${dt_revintel_pace_pickup_date.stay_date_sid} = ${revintel_property_pace_f.stay_date_sid}
        and ${dt_revintel_pace_pickup_date.asof_date_sid} = ${revintel_property_pace_f.asof_date_sid}
          and ${dt_revintel_pace_pickup_date.property_key} = ${revintel_property_pace_f.property_key}
          ;;
    type: inner
    relationship: many_to_one
  }

}
