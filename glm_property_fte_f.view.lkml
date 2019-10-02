view: glm_property_fte_f {
  sql_table_name: pedw.fact.glm_property_fte_f ;;

  dimension: property_key {
    type:  number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.date_sid ;;
    hidden: yes
  }

  dimension: gl_posting_type_cd {
    type: string
    sql: ${TABLE}.gl_posting_type_cd ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: measure_bt {
    sql: select 1 ;;
    hidden: yes
  }

  #dimension: act_bt {
  #  type: number
  #  sql: ${TABLE}.act_bt ;;
  #  hidden: yes
  #}

  dimension: act_ly_bt {
    type: number
    sql: ${TABLE}.act_ly_bt ;;
    hidden: yes
  }

  dimension: bdgt_bt {
    type: number
    sql: ${TABLE}.bdgt_bt ;;
    hidden: yes
  }

  dimension: fcst_bt {
    type: number
    sql: ${TABLE}.fcst_bt ;;
    hidden: yes
  }

  dimension: rev_amt {
    type: number
    sql: ${TABLE}.rev_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: agop_amt {
    type: number
    sql: ${TABLE}.agop_amt ;;
    value_format_name: usd_0
    hidden: yes
  }

  dimension: gop_amt {
    type: number
    sql: ${TABLE}.gop_amt ;;
    value_format_name: usd_0
    hidden: yes
  }


  #-- Hours

  dimension: hour_amt {

    type: number
    sql:  ${TABLE}.hour_amt ;;
    hidden: yes
  }

  dimension: room_hour_amt {
    type: number
    sql: ${TABLE}.room_hour_amt ;;
    hidden: yes
  }

  dimension: rbe_hour_amt {
    type: number
    sql:  ${TABLE}.rbe_hour_amt ;;
    hidden: yes
  }

  dimension: rbe_banquet_hour_amt {
    type: number
    sql: ${TABLE}.rbe_banquet_hour_amt ;;
    hidden: yes
  }

  dimension: rbe_catering_hour_amt {
    type: number
    sql: ${TABLE}.rbe_catering_hour_amt ;;
    hidden: yes
  }

  dimension: rbe_outlet_hour_amt {
    type: number
    sql: ${TABLE}.rbe_outlet_hour_amt ;;
    hidden: yes
  }

  dimension: rbe_conference_services_hour_amt {
    type: number
    sql: ${TABLE}.rbe_conference_services_hour_amt ;;
    hidden: yes
  }

  dimension: rbe_restaurant_hour_amt {
    type: number
    sql: ${TABLE}.rbe_restaurant_hour_amt ;;
    hidden: yes
  }

  dimension: rbe_lounge_hour_amt {
    type: number
    sql: ${TABLE}.rbe_lounge_hour_amt ;;
    hidden: yes
  }

  dimension: rbe_other_hour_amt {
    type: number
    sql: ${TABLE}.rbe_other_hour_amt ;;
    hidden: yes
  }

  dimension: spa_hour_amt {
    type: number
    sql: ${TABLE}.spa_hour_amt ;;
    hidden: yes
  }

  dimension: golf_hour_amt {
    type: number
    sql: ${TABLE}.golf_hour_amt ;;
    hidden: yes
  }

  dimension: fitness_recreation_hour_amt {
    type: number
    sql: ${TABLE}.fitness_recreation_hour_amt ;;
    hidden: yes
  }

  dimension: retail_hour_amt {
    type: number
    sql: ${TABLE}.retail_hour_amt ;;
    hidden: yes
  }

  dimension: other_operated_hour_amt {
    type: number
    sql: ${TABLE}.other_operated_hour_amt ;;
    hidden: yes
  }

  dimension: property_mgmt_hour_amt {
    type: number
    sql: ${TABLE}.property_mgmt_hour_amt ;;
    hidden: yes
  }

  dimension: misc_hour_amt {
    type: number
    sql: ${TABLE}.misc_hour_amt ;;
    hidden: yes
  }

  dimension: nonoperating_realty_hour_amt {
    type: number
    sql: ${TABLE}.nonoperating_realty_hour_amt ;;
    hidden: yes
  }

  dimension: nonoperating_airport_hour_amt {
    type: number
    sql: ${TABLE}.nonoperating_airport_hour_amt ;;
    hidden: yes
  }

  dimension: nonoperating_util_hour_amt {
    type: number
    sql: ${TABLE}.nonoperating_util_hour_amt ;;
    hidden: yes
  }

  dimension: undistributed_hour_amt {
    type: number
    sql: ${TABLE}.undistributed_hour_amt ;;
    hidden: yes
  }

  dimension: allocated_hour_amt {
    type: number
    sql: ${TABLE}.allocated_hour_amt ;;
    hidden: yes
  }

  dimension: acct_hour_amt {
    type: number
    sql: ${TABLE}.acct_hour_amt ;;
    hidden: yes
  }

  dimension: admin_hour_amt {
    type: number
    sql: ${TABLE}.admin_hour_amt ;;
    hidden: yes
  }

  dimension: attendant_hour_amt {
    type: number
    sql: ${TABLE}.attendant_hour_amt ;;
    hidden: yes
  }

  dimension: bar_attendant_hour_amt {
    type: number
    sql: ${TABLE}.bar_attendant_hour_amt ;;
    hidden: yes
  }

  dimension: bell_service_hour_amt {
    type: number
    sql: ${TABLE}.bell_service_hour_amt ;;
    hidden: yes
  }

  dimension: bus_attendant_hour_amt {
    type: number
    sql: ${TABLE}.bus_attendant_hour_amt ;;
    hidden: yes
  }

  dimension: captain_hour_amt {
    type: number
    sql: ${TABLE}.captain_hour_amt ;;
    hidden: yes
  }

  dimension: meter_hour_amt {
    type: number
    sql: ${TABLE}.meter_hour_amt ;;
    hidden: yes
  }

  dimension: cashier_hour_amt {
    type: number
    sql: ${TABLE}.cashier_hour_amt ;;
    hidden: yes
  }

  dimension: concierge_hour_amt {
    type: number
    sql: ${TABLE}.concierge_hour_amt ;;
    hidden: yes
  }

  dimension: conference_services_hour_amt {
    type: number
    sql: ${TABLE}.conference_services_hour_amt ;;
    hidden: yes
  }

  dimension: door_attendant_hour_amt {
    type: number
    sql: ${TABLE}.door_attendant_hour_amt ;;
    hidden: yes
  }

  dimension: driver_hour_amt {
    type: number
    sql: ${TABLE}.driver_hour_amt ;;
    hidden: yes
  }

  dimension: supervisor_hour_amt {
    type: number
    sql: ${TABLE}.supervisor_hour_amt ;;
    hidden: yes
  }

  dimension: food_prep_hour_amt {
    type: number
    sql: ${TABLE}.food_prep_hour_amt ;;
    hidden: yes
  }

  dimension: front_desk_hour_amt {
    type: number
    sql: ${TABLE}.front_desk_hour_amt ;;
    hidden: yes
  }

  dimension: grounds_hour_amt {
    type: number
    sql: ${TABLE}.grounds_hour_amt   ;;
    hidden: yes
  }

  dimension: guest_services_hour_amt {
    type: number
    sql: ${TABLE}.guest_services_hour_amt   ;;
    hidden: yes
  }

  dimension: house_attendant_hour_amt {
    type: number
    sql: ${TABLE}.house_attendant_hour_amt   ;;
    hidden: yes
  }

  dimension: hr_hour_amt {
    type: number
    sql: ${TABLE}.hr_hour_amt   ;;
    hidden: yes
  }

  dimension: info_sys_hour_amt {
    type: number
    sql: ${TABLE}.info_sys_hour_amt   ;;
    hidden: yes
  }

  dimension: locker_attendant_hour_amt {
    type: number
    sql: ${TABLE}.locker_attendant_hour_amt   ;;
    hidden: yes
  }

  dimension: maintenance_hour_amt {
    type: number
    sql: ${TABLE}.maintenance_hour_amt   ;;
    hidden: yes
  }

  dimension: mgmt_hour_amt {
    type: number
    sql: ${TABLE}.mgmt_hour_amt      ;;
    hidden: yes
  }

  dimension: message_therapist_hour_amt {
    type: number
    sql: ${TABLE}.message_therapist_hour_amt      ;;
    hidden: yes
  }

  dimension: night_attendant_hour_amt {
    type: number
    sql: ${TABLE}.night_attendant_hour_amt      ;;
    hidden: yes
  }

  dimension: night_audit_hour_amt {
    type: number
    sql: ${TABLE}.night_audit_hour_amt  ;;
    hidden: yes
  }

  dimension: public_area_attendant_hour_amt {
    type: number
    sql: ${TABLE}.public_area_attendant_hour_amt  ;;
    hidden: yes
  }

  dimension: receptionist_hour_amt {
    type: number
    sql: ${TABLE}.receptionist_hour_amt      ;;
    hidden: yes
  }

  dimension: reservations_hour_amt {
    type: number
    sql: ${TABLE}.reservations_hour_amt      ;;
    hidden: yes
  }

  dimension: room_attendant_hour_amt {
    type: number
    sql: ${TABLE}.room_attendant_hour_amt  ;;
    hidden: yes
  }

  dimension: runner_hour_amt {
    type: number
    sql: ${TABLE}.runner_hour_amt    ;;
    hidden: yes
  }

  dimension: sales_clerk_hour_amt {
    type: number
    sql: ${TABLE}.sales_clerk_hour_amt ;;
    hidden: yes
  }

  dimension: sales_manager_hour_amt {
    type: number
    sql: ${TABLE}.sales_manager_hour_amt   ;;
    hidden: yes
  }

  dimension: salon_attendant_hour_amt {
    type: number
    sql: ${TABLE}.salon_attendant_hour_amt ;;
    hidden: yes
  }

  dimension: security_hour_amt {
    type: number
    sql: ${TABLE}.security_hour_amt ;;
    hidden: yes
  }

  dimension: server_hour_amt {
    type: number
    sql: ${TABLE}.server_hour_amt ;;
    hidden: yes
  }

  dimension: steward_hour_amt {
    type: number
    sql: ${TABLE}.steward_hour_amt    ;;
    hidden: yes
  }

  dimension: store_room_attendant_hour_amt {
    type: number
    sql: ${TABLE}.store_room_attendant_hour_amt    ;;
    hidden: yes
  }

  dimension: turn_down_attendant_hour_amt {
    type: number
    sql: ${TABLE}.turn_down_attendant_hour_amt     ;;
    hidden: yes
  }

  dimension: linen_hour_amt {
    type: number
    sql: ${TABLE}.linen_hour_amt  ;;
    hidden: yes
  }

  dimension: valet_hour_amt {
    type: number
    sql: ${TABLE}.valet_hour_amt   ;;
    hidden: yes
  }

}
