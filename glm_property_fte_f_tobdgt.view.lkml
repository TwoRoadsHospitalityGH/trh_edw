view: glm_property_fte_f_tobdgt {
  derived_table: {
    sql: select 1 as key_no ;;
  }

  dimension: key_no {
    primary_key: yes
    type: number
    sql: ${TABLE}.key_no ;;
    hidden: yes
  }

  #--------------------------------------------------------------------------------
  #-- Fcst to LY: rev, AGOP, rooms_revenue, RB&E
  #--------------------------------------------------------------------------------

  #-- Hours

  measure: hour_amt_tobdgt_v {
    label: "Hrs  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql:  ${glm_property_fte_f_ty.hour_amt} - ${glm_property_fte_f_bdgt.hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: room_hour_amt_tobdgt_v {
    label: "Hrs Rms TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.room_hour_amt} - ${glm_property_fte_f_bdgt.room_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_hour_amt_tobdgt_v {
    label: "Hrs RB&E TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql:  ${glm_property_fte_f_ty.rbe_hour_amt} - ${glm_property_fte_f_bdgt.rbe_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_hour_amt_tobdgt_v {
    label: "Hrs RB&E Banquet TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_banquet_hour_amt} - ${glm_property_fte_f_bdgt.rbe_banquet_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_hour_amt_tobdgt_v {
    label: "Hrs RB&E Catering TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_catering_hour_amt} - ${glm_property_fte_f_bdgt.rbe_catering_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_hour_amt_tobdgt_v {
    label: "Hrs RB&E Outlet TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_outlet_hour_amt} - ${glm_property_fte_f_bdgt.rbe_outlet_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_conference_services_hour_amt_tobdgt_v {
    label: "Hrs RB&E Conference Services TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_conference_services_hour_amt} - ${glm_property_fte_f_bdgt.rbe_conference_services_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_restaurant_hour_amt_tobdgt_v {
    label: "Hrs RB&E Restaurant TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_restaurant_hour_amt} - ${glm_property_fte_f_bdgt.rbe_restaurant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_lounge_hour_amt_tobdgt_v {
    label: "Hrs RB&E Lounge TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_lounge_hour_amt} - ${glm_property_fte_f_bdgt.rbe_lounge_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_hour_amt_tobdgt_v {
    label: "Hrs RB&E Other TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_other_hour_amt} - ${glm_property_fte_f_bdgt.rbe_other_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: spa_hour_amt_tobdgt_v {
    label: "Hrs Spa TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.spa_hour_amt} - ${glm_property_fte_f_bdgt.spa_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_hour_amt_tobdgt_v {
    label: "Hrs Golf TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.golf_hour_amt} - ${glm_property_fte_f_bdgt.golf_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: fitness_recreation_hour_amt_tobdgt_v {
    label: "Hrs Fitness & Rec TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.fitness_recreation_hour_amt} - ${glm_property_fte_f_bdgt.fitness_recreation_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: retail_hour_amt_tobdgt_v {
    label: "Hrs Retail TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.retail_hour_amt} - ${glm_property_fte_f_bdgt.retail_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: other_operated_hour_amt_tobdgt_v {
    label: "Hrs Other Op. Dept. TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.other_operated_hour_amt} - ${glm_property_fte_f_bdgt.other_operated_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: property_mgmt_hour_amt_tobdgt_v {
    label: "Hrs Mgmt Srvcs TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.property_mgmt_hour_amt} - ${glm_property_fte_f_bdgt.property_mgmt_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: misc_hour_amt_tobdgt_v {
    label: "Hrs Rentals & Other TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.misc_hour_amt} - ${glm_property_fte_f_bdgt.misc_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_realty_hour_amt_tobdgt_v {
    label: "Hrs Nonoperating Realty TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_realty_hour_amt} - ${glm_property_fte_f_bdgt.nonoperating_realty_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_airport_hour_amt_tobdgt_v {
    label: "Hrs Nonoperating Airport TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_airport_hour_amt} - ${glm_property_fte_f_bdgt.nonoperating_airport_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_util_hour_amt_tobdgt_v {
    label: "Hrs Nonoperating Utility TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_util_hour_amt} - ${glm_property_fte_f_bdgt.nonoperating_util_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: undistributed_hour_amt_tobdgt_v {
    label: "Hrs Undistributed TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.undistributed_hour_amt} - ${glm_property_fte_f_bdgt.undistributed_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: allocated_hour_amt_tobdgt_v {
    label: "Hrs Allocated TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.allocated_hour_amt} - ${glm_property_fte_f_bdgt.allocated_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: acct_hour_amt_tobdgt_v {
    label: "Hrs Accounting TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.acct_hour_amt} - ${glm_property_fte_f_bdgt.acct_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: admin_hour_amt_tobdgt_v {
    label: "Hrs Admin TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.admin_hour_amt} - ${glm_property_fte_f_bdgt.admin_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: attendant_hour_amt_tobdgt_v {
    label: "Hrs Attendants TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.attendant_hour_amt} - ${glm_property_fte_f_bdgt.attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: bar_attendant_hour_amt_tobdgt_v {
    label: "Hrs Bar Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.bar_attendant_hour_amt} - ${glm_property_fte_f_bdgt.bar_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: bell_service_hour_amt_tobdgt_v {
    label: "Hrs Bell Srvc TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.bell_service_hour_amt} - ${glm_property_fte_f_bdgt.bell_service_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: bus_attendant_hour_amt_tobdgt_v {
    label: "Hrs Bus Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.bus_attendant_hour_amt} - ${glm_property_fte_f_bdgt.bus_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: captain_hour_amt_tobdgt_v {
    label: "Hrs Captain TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.captain_hour_amt} - ${glm_property_fte_f_bdgt.captain_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: meter_hour_amt_tobdgt_v {
    label: "Hrs Meter Instll TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.meter_hour_amt} - ${glm_property_fte_f_bdgt.meter_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: cashier_hour_amt_tobdgt_v {
    label: "Hrs Cashier TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.cashier_hour_amt} - ${glm_property_fte_f_bdgt.cashier_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: concierge_hour_amt_tobdgt_v {
    label: "Hrs Concierge TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.concierge_hour_amt} - ${glm_property_fte_f_bdgt.concierge_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: conference_services_hour_amt_tobdgt_v {
    label: "Hrs Conference Srvcs TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.conference_services_hour_amt} - ${glm_property_fte_f_bdgt.conference_services_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: door_attendant_hour_amt_tobdgt_v {
    label: "Hrs Door Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.door_attendant_hour_amt} - ${glm_property_fte_f_bdgt.door_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: driver_hour_amt_tobdgt_v {
    label: "Hrs Driver TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.driver_hour_amt} - ${glm_property_fte_f_bdgt.driver_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: supervisor_hour_amt_tobdgt_v {
    label: "Hrs Supervisor TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.supervisor_hour_amt} - ${glm_property_fte_f_bdgt.supervisor_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: food_prep_hour_amt_tobdgt_v {
    label: "Hrs Food Prep TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.food_prep_hour_amt} - ${glm_property_fte_f_bdgt.food_prep_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: front_desk_hour_amt_tobdgt_v {
    label: "Hrs Front Desk TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.front_desk_hour_amt} - ${glm_property_fte_f_bdgt.front_desk_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: grounds_hour_amt_tobdgt_v {
    label: "Hrs Grounds TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.grounds_hour_amt} - ${glm_property_fte_f_bdgt.grounds_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: guest_services_hour_amt_tobdgt_v {
    label: "Hrs Guest Srvcs TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.guest_services_hour_amt} - ${glm_property_fte_f_bdgt.guest_services_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: house_attendant_hour_amt_tobdgt_v {
    label: "Hrs House Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.house_attendant_hour_amt} - ${glm_property_fte_f_bdgt.house_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: hr_hour_amt_tobdgt_v {
    label: "Hrs HR TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.hr_hour_amt} - ${glm_property_fte_f_bdgt.hr_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: info_sys_hour_amt_tobdgt_v {
    label: "Hrs Info Sys TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.info_sys_hour_amt} - ${glm_property_fte_f_bdgt.info_sys_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: locker_attendant_hour_amt_tobdgt_v {
    label: "Hrs Locker Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.locker_attendant_hour_amt} - ${glm_property_fte_f_bdgt.locker_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: maintenance_hour_amt_tobdgt_v {
    label: "Hrs Maintenance TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.maintenance_hour_amt} - ${glm_property_fte_f_bdgt.maintenance_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: mgmt_hour_amt_tobdgt_v {
    label: "Hrs Mgmt  TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.mgmt_hour_amt} - ${glm_property_fte_f_bdgt.mgmt_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: message_therapist_hour_amt_tobdgt_v {
    label: "Hrs Message Ther. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.message_therapist_hour_amt} - ${glm_property_fte_f_bdgt.message_therapist_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: night_attendant_hour_amt_tobdgt_v {
    label: "Hrs Night Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.night_attendant_hour_amt} - ${glm_property_fte_f_bdgt.night_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: night_audit_hour_amt_tobdgt_v {
    label: "Hrs Night Audit TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.night_audit_hour_amt} - ${glm_property_fte_f_bdgt.night_audit_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: public_area_attendant_hour_amt_tobdgt_v {
    label: "Hrs Public Area TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.public_area_attendant_hour_amt} - ${glm_property_fte_f_bdgt.public_area_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: receptionist_hour_amt_tobdgt_v {
    label: "Hrs Receptionist TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.receptionist_hour_amt} - ${glm_property_fte_f_bdgt.receptionist_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: reservations_hour_amt_tobdgt_v {
    label: "Hrs Reservations TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.reservations_hour_amt} - ${glm_property_fte_f_bdgt.reservations_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: room_attendant_hour_amt_tobdgt_v {
    label: "Hrs Room Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.room_attendant_hour_amt} - ${glm_property_fte_f_bdgt.room_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: runner_hour_amt_tobdgt_v {
    label: "Hrs Runner TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.runner_hour_amt} - ${glm_property_fte_f_bdgt.runner_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: sales_clerk_hour_amt_tobdgt_v {
    label: "Hrs Sales Clerk TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.sales_clerk_hour_amt} - ${glm_property_fte_f_bdgt.sales_clerk_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: sales_manager_hour_amt_tobdgt_v {
    label: "Hrs Sales Mngr TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.sales_manager_hour_amt} - ${glm_property_fte_f_bdgt.sales_manager_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: salon_attendant_hour_amt_tobdgt_v {
    label: "Hrs Salon Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.salon_attendant_hour_amt} - ${glm_property_fte_f_bdgt.salon_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: security_hour_amt_tobdgt_v {
    label: "Hrs Security TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.security_hour_amt} - ${glm_property_fte_f_bdgt.security_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: server_hour_amt_tobdgt_v {
    label: "Hrs Server TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.server_hour_amt} - ${glm_property_fte_f_bdgt.server_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: steward_hour_amt_tobdgt_v {
    label: "Hrs Steward TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.steward_hour_amt} - ${glm_property_fte_f_bdgt.steward_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: store_room_attendant_hour_amt_tobdgt_v {
    label: "Hrs Store Room TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.store_room_attendant_hour_amt} - ${glm_property_fte_f_bdgt.store_room_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: turn_down_attendant_hour_amt_tobdgt_v {
    label: "Hrs Turn Down TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.turn_down_attendant_hour_amt} - ${glm_property_fte_f_bdgt.turn_down_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: linen_hour_amt_tobdgt_v {
    label: "Hrs Linen TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.linen_hour_amt} - ${glm_property_fte_f_bdgt.linen_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: valet_hour_amt_tobdgt_v {
    label: "Hrs Valet TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.valet_hour_amt} - ${glm_property_fte_f_bdgt.valet_hour_amt} ;;
    value_format_name: decimal_2
  }

  #-- var %

  measure: hour_amt_tobdgt {
    label: "Hrs  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.hour_amt}, ${glm_property_fte_f_bdgt.hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: room_hour_amt_tobdgt {
    label: "Hrs Rms TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.room_hour_amt}, ${glm_property_fte_f_bdgt.room_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_hour_amt_tobdgt {
    label: "Hrs RB&E TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_hour_amt}, ${glm_property_fte_f_bdgt.rbe_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_hour_amt_tobdgt {
    label: "Hrs RB&E Banquet TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_banquet_hour_amt}, ${glm_property_fte_f_bdgt.rbe_banquet_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_hour_amt_tobdgt {
    label: "Hrs RB&E Catering TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_catering_hour_amt}, ${glm_property_fte_f_bdgt.rbe_catering_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_hour_amt_tobdgt {
    label: "Hrs RB&E Outlet TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_outlet_hour_amt}, ${glm_property_fte_f_bdgt.rbe_outlet_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_hour_amt_tobdgt {
    label: "Hrs RB&E Conference Services TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_conference_services_hour_amt}, ${glm_property_fte_f_bdgt.rbe_conference_services_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_restaurant_hour_amt_tobdgt {
    label: "Hrs RB&E Restaurant TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_restaurant_hour_amt}, ${glm_property_fte_f_bdgt.rbe_restaurant_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_lounge_hour_amt_tobdgt {
    label: "Hrs RB&E Lounge TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_lounge_hour_amt}, ${glm_property_fte_f_bdgt.rbe_lounge_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_hour_amt_tobdgt {
    label: "Hrs RB&E Other TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_other_hour_amt}, ${glm_property_fte_f_bdgt.rbe_other_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: spa_hour_amt_tobdgt {
    label: "Hrs Spa TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.spa_hour_amt}, ${glm_property_fte_f_bdgt.spa_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: golf_hour_amt_tobdgt {
    label: "Hrs Golf TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.golf_hour_amt}, ${glm_property_fte_f_bdgt.golf_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_hour_amt_tobdgt {
    label: "Hrs Fitness & Rec TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.fitness_recreation_hour_amt}, ${glm_property_fte_f_bdgt.fitness_recreation_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: retail_hour_amt_tobdgt {
    label: "Hrs Retail TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.retail_hour_amt}, ${glm_property_fte_f_bdgt.retail_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: other_operated_hour_amt_tobdgt {
    label: "Hrs Other Op. Dept. TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.other_operated_hour_amt}, ${glm_property_fte_f_bdgt.other_operated_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_hour_amt_tobdgt {
    label: "Hrs Mgmt Srvcs TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.property_mgmt_hour_amt}, ${glm_property_fte_f_bdgt.property_mgmt_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: misc_hour_amt_tobdgt {
    label: "Hrs Rentals & Other TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.misc_hour_amt}, ${glm_property_fte_f_bdgt.misc_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_hour_amt_tobdgt {
    label: "Hrs Nonoperating Realty TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_realty_hour_amt}, ${glm_property_fte_f_bdgt.nonoperating_realty_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_hour_amt_tobdgt {
    label: "Hrs Nonoperating Airport TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_airport_hour_amt}, ${glm_property_fte_f_bdgt.nonoperating_airport_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_hour_amt_tobdgt {
    label: "Hrs Nonoperating Utility TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_util_hour_amt}, ${glm_property_fte_f_bdgt.nonoperating_util_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: undistributed_hour_amt_tobdgt {
    label: "Hrs Undistributed TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.undistributed_hour_amt}, ${glm_property_fte_f_bdgt.undistributed_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: allocated_hour_amt_tobdgt {
    label: "Hrs Allocated TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.allocated_hour_amt}, ${glm_property_fte_f_bdgt.allocated_hour_amt} ) ;;
    value_format_name: percent_1
  }


  measure: acct_hour_amt_tobdgt {
    label: "Hrs Accounting TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.acct_hour_amt}, ${glm_property_fte_f_bdgt.acct_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: admin_hour_amt_tobdgt {
    label: "Hrs Admin TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.admin_hour_amt}, ${glm_property_fte_f_bdgt.admin_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: attendant_hour_amt_tobdgt {
    label: "Hrs Attendants TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.attendant_hour_amt}, ${glm_property_fte_f_bdgt.attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: bar_attendant_hour_amt_tobdgt {
    label: "Hrs Bar Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bar_attendant_hour_amt}, ${glm_property_fte_f_bdgt.bar_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: bell_service_hour_amt_tobdgt {
    label: "Hrs Bell Srvc TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bell_service_hour_amt}, ${glm_property_fte_f_bdgt.bell_service_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: bus_attendant_hour_amt_tobdgt {
    label: "Hrs Bus Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bus_attendant_hour_amt}, ${glm_property_fte_f_bdgt.bus_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: captain_hour_amt_tobdgt {
    label: "Hrs Captain TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.captain_hour_amt}, ${glm_property_fte_f_bdgt.captain_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: meter_hour_amt_tobdgt {
    label: "Hrs Meter Instll TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.meter_hour_amt}, ${glm_property_fte_f_bdgt.meter_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: cashier_hour_amt_tobdgt {
    label: "Hrs Cashier TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.cashier_hour_amt}, ${glm_property_fte_f_bdgt.cashier_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: concierge_hour_amt_tobdgt {
    label: "Hrs Concierge TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.concierge_hour_amt}, ${glm_property_fte_f_bdgt.concierge_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: conference_services_hour_amt_tobdgt {
    label: "Hrs Conference Srvcs TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.conference_services_hour_amt}, ${glm_property_fte_f_bdgt.conference_services_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: door_attendant_hour_amt_tobdgt {
    label: "Hrs Door Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.door_attendant_hour_amt}, ${glm_property_fte_f_bdgt.door_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: driver_hour_amt_tobdgt {
    label: "Hrs Driver TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.driver_hour_amt}, ${glm_property_fte_f_bdgt.driver_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: supervisor_hour_amt_tobdgt {
    label: "Hrs Supervisor TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.supervisor_hour_amt}, ${glm_property_fte_f_bdgt.supervisor_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_prep_hour_amt_tobdgt {
    label: "Hrs Food Prep TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.food_prep_hour_amt}, ${glm_property_fte_f_bdgt.food_prep_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: front_desk_hour_amt_tobdgt {
    label: "Hrs Front Desk TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.front_desk_hour_amt}, ${glm_property_fte_f_bdgt.front_desk_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: grounds_hour_amt_tobdgt {
    label: "Hrs Grounds TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.grounds_hour_amt}, ${glm_property_fte_f_bdgt.grounds_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: guest_services_hour_amt_tobdgt {
    label: "Hrs Guest Srvcs TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.guest_services_hour_amt}, ${glm_property_fte_f_bdgt.guest_services_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: house_attendant_hour_amt_tobdgt {
    label: "Hrs House Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.house_attendant_hour_amt}, ${glm_property_fte_f_bdgt.house_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: hr_hour_amt_tobdgt {
    label: "Hrs HR TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.hr_hour_amt}, ${glm_property_fte_f_bdgt.hr_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: info_sys_hour_amt_tobdgt {
    label: "Hrs Info Sys TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.info_sys_hour_amt}, ${glm_property_fte_f_bdgt.info_sys_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: locker_attendant_hour_amt_tobdgt {
    label: "Hrs Locker Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.locker_attendant_hour_amt}, ${glm_property_fte_f_bdgt.locker_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: maintenance_hour_amt_tobdgt {
    label: "Hrs Maintenance TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.maintenance_hour_amt}, ${glm_property_fte_f_bdgt.maintenance_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: mgmt_hour_amt_tobdgt {
    label: "Hrs Mgmt  TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.mgmt_hour_amt}, ${glm_property_fte_f_bdgt.mgmt_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: message_therapist_hour_amt_tobdgt {
    label: "Hrs Message Ther. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.message_therapist_hour_amt}, ${glm_property_fte_f_bdgt.message_therapist_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: night_attendant_hour_amt_tobdgt {
    label: "Hrs Night Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.night_attendant_hour_amt}, ${glm_property_fte_f_bdgt.night_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: night_audit_hour_amt_tobdgt {
    label: "Hrs Night Audit TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.night_audit_hour_amt}, ${glm_property_fte_f_bdgt.night_audit_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: public_area_attendant_hour_amt_tobdgt {
    label: "Hrs Public Area TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.public_area_attendant_hour_amt}, ${glm_property_fte_f_bdgt.public_area_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: receptionist_hour_amt_tobdgt {
    label: "Hrs Receptionist TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.receptionist_hour_amt}, ${glm_property_fte_f_bdgt.receptionist_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: reservations_hour_amt_tobdgt {
    label: "Hrs Reservations TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.reservations_hour_amt}, ${glm_property_fte_f_bdgt.reservations_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_attendant_hour_amt_tobdgt {
    label: "Hrs Room Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.room_attendant_hour_amt}, ${glm_property_fte_f_bdgt.room_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: runner_hour_amt_tobdgt {
    label: "Hrs Runner TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.runner_hour_amt}, ${glm_property_fte_f_bdgt.runner_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_clerk_hour_amt_tobdgt {
    label: "Hrs Sales Clerk TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.sales_clerk_hour_amt}, ${glm_property_fte_f_bdgt.sales_clerk_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_manager_hour_amt_tobdgt {
    label: "Hrs Sales Mngr TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.sales_manager_hour_amt}, ${glm_property_fte_f_bdgt.sales_manager_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: salon_attendant_hour_amt_tobdgt {
    label: "Hrs Salon Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.salon_attendant_hour_amt}, ${glm_property_fte_f_bdgt.salon_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: security_hour_amt_tobdgt {
    label: "Hrs Security TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.security_hour_amt}, ${glm_property_fte_f_bdgt.security_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: server_hour_amt_tobdgt {
    label: "Hrs Server TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.server_hour_amt}, ${glm_property_fte_f_bdgt.server_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: steward_hour_amt_tobdgt {
    label: "Hrs Steward TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.steward_hour_amt}, ${glm_property_fte_f_bdgt.steward_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: store_room_attendant_hour_amt_tobdgt {
    label: "Hrs Store Room TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.store_room_attendant_hour_amt}, ${glm_property_fte_f_bdgt.store_room_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: turn_down_attendant_hour_amt_tobdgt {
    label: "Hrs Turn Down TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.turn_down_attendant_hour_amt}, ${glm_property_fte_f_bdgt.turn_down_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: linen_hour_amt_tobdgt {
    label: "Hrs Linen TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.linen_hour_amt}, ${glm_property_fte_f_bdgt.linen_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: valet_hour_amt_tobdgt {
    label: "Hrs Valet TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.valet_hour_amt}, ${glm_property_fte_f_bdgt.valet_hour_amt}) ;;
    value_format_name: percent_1
  }


  #-- FTE var

  measure: fte_amt_tobdgt_v {
    label: "FTE  TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql:  ${glm_property_fte_f_ty.fte_amt} - ${glm_property_fte_f_bdgt.fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: room_fte_amt_tobdgt_v {
    label: "FTE Rms TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.room_fte_amt} - ${glm_property_fte_f_bdgt.room_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_fte_amt_tobdgt_v {
    label: "FTE RB&E TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql:  ${glm_property_fte_f_ty.rbe_fte_amt} - ${glm_property_fte_f_bdgt.rbe_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_fte_amt_tobdgt_v {
    label: "FTE RB&E Banquet TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_banquet_fte_amt} - ${glm_property_fte_f_bdgt.rbe_banquet_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_fte_amt_tobdgt_v {
    label: "FTE RB&E Catering TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_catering_fte_amt} - ${glm_property_fte_f_bdgt.rbe_catering_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_fte_amt_tobdgt_v {
    label: "FTE RB&E Outlet TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_outlet_fte_amt} - ${glm_property_fte_f_bdgt.rbe_outlet_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_conference_services_fte_amt_tobdgt_v {
    label: "FTE RB&E Conference Services TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_conference_services_fte_amt} - ${glm_property_fte_f_bdgt.rbe_conference_services_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_restaurant_fte_amt_tobdgt_v {
    label: "FTE RB&E Restaurant TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_restaurant_fte_amt} - ${glm_property_fte_f_bdgt.rbe_restaurant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_lounge_fte_amt_tobdgt_v {
    label: "FTE RB&E Lounge TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_lounge_fte_amt} - ${glm_property_fte_f_bdgt.rbe_lounge_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_fte_amt_tobdgt_v {
    label: "FTE RB&E Other TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_other_fte_amt} - ${glm_property_fte_f_bdgt.rbe_other_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: spa_fte_amt_tobdgt_v {
    label: "FTE Spa TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.spa_fte_amt} - ${glm_property_fte_f_bdgt.spa_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_fte_amt_tobdgt_v {
    label: "FTE Golf TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.golf_fte_amt} - ${glm_property_fte_f_bdgt.golf_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: fitness_recreation_fte_amt_tobdgt_v {
    label: "FTE Fitness & Rec TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.fitness_recreation_fte_amt} - ${glm_property_fte_f_bdgt.fitness_recreation_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: retail_fte_amt_tobdgt_v {
    label: "FTE Retail TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.retail_fte_amt} - ${glm_property_fte_f_bdgt.retail_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: other_operated_fte_amt_tobdgt_v {
    label: "FTE Other Op. Dept. TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.other_operated_fte_amt} - ${glm_property_fte_f_bdgt.other_operated_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: property_mgmt_fte_amt_tobdgt_v {
    label: "FTE Mgmt Srvcs TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.property_mgmt_fte_amt} - ${glm_property_fte_f_bdgt.property_mgmt_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: misc_fte_amt_tobdgt_v {
    label: "FTE Rentals & Other TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.misc_fte_amt} - ${glm_property_fte_f_bdgt.misc_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_realty_fte_amt_tobdgt_v {
    label: "FTE Nonoperating Realty TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_realty_fte_amt} - ${glm_property_fte_f_bdgt.nonoperating_realty_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_airport_fte_amt_tobdgt_v {
    label: "FTE Nonoperating Airport TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_airport_fte_amt} - ${glm_property_fte_f_bdgt.nonoperating_airport_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_util_fte_amt_tobdgt_v {
    label: "FTE Nonoperating Utility TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_util_fte_amt} - ${glm_property_fte_f_bdgt.nonoperating_util_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: undistributed_fte_amt_tobdgt_v {
    label: "FTE Undistributed TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.undistributed_fte_amt} - ${glm_property_fte_f_bdgt.undistributed_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: allocated_fte_amt_tobdgt_v {
    label: "FTE Allocated TY:Bdgt - var"
    description: "TY - Bdgt"
    type: number
    sql: ${glm_property_fte_f_ty.allocated_fte_amt} - ${glm_property_fte_f_bdgt.allocated_fte_amt} ;;
    value_format_name: decimal_2
  }


  measure: acct_fte_amt_tobdgt_v {
    label: "FTE Accounting TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.acct_fte_amt} - ${glm_property_fte_f_bdgt.acct_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: admin_fte_amt_tobdgt_v {
    label: "FTE Admin TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.admin_fte_amt} - ${glm_property_fte_f_bdgt.admin_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: attendant_fte_amt_tobdgt_v {
    label: "FTE Attendants TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.attendant_fte_amt} - ${glm_property_fte_f_bdgt.attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: bar_attendant_fte_amt_tobdgt_v {
    label: "FTE Bar Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.bar_attendant_fte_amt} - ${glm_property_fte_f_bdgt.bar_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: bell_service_fte_amt_tobdgt_v {
    label: "FTE Bell Srvc TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.bell_service_fte_amt} - ${glm_property_fte_f_bdgt.bell_service_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: bus_attendant_fte_amt_tobdgt_v {
    label: "FTE Bus Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.bus_attendant_fte_amt} - ${glm_property_fte_f_bdgt.bus_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: captain_fte_amt_tobdgt_v {
    label: "FTE Captain TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.captain_fte_amt} - ${glm_property_fte_f_bdgt.captain_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: meter_fte_amt_tobdgt_v {
    label: "FTE Meter Instll TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.meter_fte_amt} - ${glm_property_fte_f_bdgt.meter_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: cashier_fte_amt_tobdgt_v {
    label: "FTE Cashier TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.cashier_fte_amt} - ${glm_property_fte_f_bdgt.cashier_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: concierge_fte_amt_tobdgt_v {
    label: "FTE Concierge TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.concierge_fte_amt} - ${glm_property_fte_f_bdgt.concierge_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: conference_services_fte_amt_tobdgt_v {
    label: "FTE Conference Srvcs TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.conference_services_fte_amt} - ${glm_property_fte_f_bdgt.conference_services_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: door_attendant_fte_amt_tobdgt_v {
    label: "FTE Door Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.door_attendant_fte_amt} - ${glm_property_fte_f_bdgt.door_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: driver_fte_amt_tobdgt_v {
    label: "FTE Driver TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.driver_fte_amt} - ${glm_property_fte_f_bdgt.driver_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: supervisor_fte_amt_tobdgt_v {
    label: "FTE Supervisor TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.supervisor_fte_amt} - ${glm_property_fte_f_bdgt.supervisor_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: food_prep_fte_amt_tobdgt_v {
    label: "FTE Food Prep TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.food_prep_fte_amt} - ${glm_property_fte_f_bdgt.food_prep_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: front_desk_fte_amt_tobdgt_v {
    label: "FTE Front Desk TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.front_desk_fte_amt} - ${glm_property_fte_f_bdgt.front_desk_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: grounds_fte_amt_tobdgt_v {
    label: "FTE Grounds TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.grounds_fte_amt} - ${glm_property_fte_f_bdgt.grounds_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: guest_services_fte_amt_tobdgt_v {
    label: "FTE Guest Srvcs TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.guest_services_fte_amt} - ${glm_property_fte_f_bdgt.guest_services_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: house_attendant_fte_amt_tobdgt_v {
    label: "FTE House Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.house_attendant_fte_amt} - ${glm_property_fte_f_bdgt.house_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: hr_fte_amt_tobdgt_v {
    label: "FTE HR TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.hr_fte_amt} - ${glm_property_fte_f_bdgt.hr_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: info_sys_fte_amt_tobdgt_v {
    label: "FTE Info Sys TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.info_sys_fte_amt} - ${glm_property_fte_f_bdgt.info_sys_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: locker_attendant_fte_amt_tobdgt_v {
    label: "FTE Locker Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.locker_attendant_fte_amt} - ${glm_property_fte_f_bdgt.locker_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: maintenance_fte_amt_tobdgt_v {
    label: "FTE Maintenance TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.maintenance_fte_amt} - ${glm_property_fte_f_bdgt.maintenance_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: mgmt_fte_amt_tobdgt_v {
    label: "FTE Mgmt  TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.mgmt_fte_amt} - ${glm_property_fte_f_bdgt.mgmt_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: message_therapist_fte_amt_tobdgt_v {
    label: "FTE Message Ther. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.message_therapist_fte_amt} - ${glm_property_fte_f_bdgt.message_therapist_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: night_attendant_fte_amt_tobdgt_v {
    label: "FTE Night Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.night_attendant_fte_amt} - ${glm_property_fte_f_bdgt.night_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: night_audit_fte_amt_tobdgt_v {
    label: "FTE Night Audit TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.night_audit_fte_amt} - ${glm_property_fte_f_bdgt.night_audit_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: public_area_attendant_fte_amt_tobdgt_v {
    label: "FTE Public Area TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.public_area_attendant_fte_amt} - ${glm_property_fte_f_bdgt.public_area_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: receptionist_fte_amt_tobdgt_v {
    label: "FTE Receptionist TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.receptionist_fte_amt} - ${glm_property_fte_f_bdgt.receptionist_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: reservations_fte_amt_tobdgt_v {
    label: "FTE Reservations TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.reservations_fte_amt} - ${glm_property_fte_f_bdgt.reservations_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: room_attendant_fte_amt_tobdgt_v {
    label: "FTE Room Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.room_attendant_fte_amt} - ${glm_property_fte_f_bdgt.room_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: runner_fte_amt_tobdgt_v {
    label: "FTE Runner TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.runner_fte_amt} - ${glm_property_fte_f_bdgt.runner_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: sales_clerk_fte_amt_tobdgt_v {
    label: "FTE Sales Clerk TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.sales_clerk_fte_amt} - ${glm_property_fte_f_bdgt.sales_clerk_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: sales_manager_fte_amt_tobdgt_v {
    label: "FTE Sales Mngr TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.sales_manager_fte_amt} - ${glm_property_fte_f_bdgt.sales_manager_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: salon_attendant_fte_amt_tobdgt_v {
    label: "FTE Salon Att. TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.salon_attendant_fte_amt} - ${glm_property_fte_f_bdgt.salon_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: security_fte_amt_tobdgt_v {
    label: "FTE Security TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.security_fte_amt} - ${glm_property_fte_f_bdgt.security_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: server_fte_amt_tobdgt_v {
    label: "FTE Server TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.server_fte_amt} - ${glm_property_fte_f_bdgt.server_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: steward_fte_amt_tobdgt_v {
    label: "FTE Steward TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.steward_fte_amt} - ${glm_property_fte_f_bdgt.steward_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: store_room_attendant_fte_amt_tobdgt_v {
    label: "FTE Store Room TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.store_room_attendant_fte_amt} - ${glm_property_fte_f_bdgt.store_room_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: turn_down_attendant_fte_amt_tobdgt_v {
    label: "FTE Turn Down TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.turn_down_attendant_fte_amt} - ${glm_property_fte_f_bdgt.turn_down_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: linen_fte_amt_tobdgt_v {
    label: "FTE Linen TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.linen_fte_amt} - ${glm_property_fte_f_bdgt.linen_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: valet_fte_amt_tobdgt_v {
    label: "FTE Valet TY:Bdgt - var"
    description: "TY - Bdgt "
    type: number
    sql: ${glm_property_fte_f_ty.valet_fte_amt} - ${glm_property_fte_f_bdgt.valet_fte_amt} ;;
    value_format_name: decimal_2
  }

  #-- FTE % var

  measure: fte_amt_tobdgt {
    label: "FTE  TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.fte_amt}, ${glm_property_fte_f_bdgt.fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: room_fte_amt_tobdgt {
    label: "FTE Rms TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.room_fte_amt}, ${glm_property_fte_f_bdgt.room_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_fte_amt_tobdgt {
    label: "FTE RB&E TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_fte_amt}, ${glm_property_fte_f_bdgt.rbe_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_fte_amt_tobdgt {
    label: "FTE RB&E Banquet TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_banquet_fte_amt}, ${glm_property_fte_f_bdgt.rbe_banquet_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_fte_amt_tobdgt {
    label: "FTE RB&E Catering TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_catering_fte_amt}, ${glm_property_fte_f_bdgt.rbe_catering_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_fte_amt_tobdgt {
    label: "FTE RB&E Outlet TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_outlet_fte_amt}, ${glm_property_fte_f_bdgt.rbe_outlet_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_fte_amt_tobdgt {
    label: "FTE RB&E Conference Services TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_conference_services_fte_amt}, ${glm_property_fte_f_bdgt.rbe_conference_services_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_restaurant_fte_amt_tobdgt {
    label: "FTE RB&E Restaurant TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_restaurant_fte_amt}, ${glm_property_fte_f_bdgt.rbe_restaurant_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_lounge_fte_amt_tobdgt {
    label: "FTE RB&E Lounge TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_lounge_fte_amt}, ${glm_property_fte_f_bdgt.rbe_lounge_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_fte_amt_tobdgt {
    label: "FTE RB&E Other TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_other_fte_amt}, ${glm_property_fte_f_bdgt.rbe_other_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: spa_fte_amt_tobdgt {
    label: "FTE Spa TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.spa_fte_amt}, ${glm_property_fte_f_bdgt.spa_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: golf_fte_amt_tobdgt {
    label: "FTE Golf TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.golf_fte_amt}, ${glm_property_fte_f_bdgt.golf_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_fte_amt_tobdgt {
    label: "FTE Fitness & Rec TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.fitness_recreation_fte_amt}, ${glm_property_fte_f_bdgt.fitness_recreation_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: retail_fte_amt_tobdgt {
    label: "FTE Retail TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.retail_fte_amt}, ${glm_property_fte_f_bdgt.retail_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: other_operated_fte_amt_tobdgt {
    label: "FTE Other Op. Dept. TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.other_operated_fte_amt}, ${glm_property_fte_f_bdgt.other_operated_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_fte_amt_tobdgt {
    label: "FTE Mgmt Srvcs TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.property_mgmt_fte_amt}, ${glm_property_fte_f_bdgt.property_mgmt_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: misc_fte_amt_tobdgt {
    label: "FTE Rentals & Other TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.misc_fte_amt}, ${glm_property_fte_f_bdgt.misc_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_fte_amt_tobdgt {
    label: "FTE Nonoperating Realty TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_realty_fte_amt}, ${glm_property_fte_f_bdgt.nonoperating_realty_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_fte_amt_tobdgt {
    label: "FTE Nonoperating Airport TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_airport_fte_amt}, ${glm_property_fte_f_bdgt.nonoperating_airport_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_fte_amt_tobdgt {
    label: "FTE Nonoperating Utility TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_util_fte_amt}, ${glm_property_fte_f_bdgt.nonoperating_util_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: undistributed_fte_amt_tobdgt {
    label: "FTE Undistributed TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.undistributed_fte_amt}, ${glm_property_fte_f_bdgt.undistributed_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: allocated_fte_amt_tobdgt {
    label: "FTE Allocated TY:Bdgt - var %"
    description: "(TY - Bdgt) / Bdgt"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.allocated_fte_amt}, ${glm_property_fte_f_bdgt.allocated_fte_amt} ) ;;
    value_format_name: percent_1
  }


  measure: acct_fte_amt_tobdgt {
    label: "FTE Accounting TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.acct_fte_amt}, ${glm_property_fte_f_bdgt.acct_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: admin_fte_amt_tobdgt {
    label: "FTE Admin TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.admin_fte_amt}, ${glm_property_fte_f_bdgt.admin_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: attendant_fte_amt_tobdgt {
    label: "FTE Attendants TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.attendant_fte_amt}, ${glm_property_fte_f_bdgt.attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: bar_attendant_fte_amt_tobdgt {
    label: "FTE Bar Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bar_attendant_fte_amt}, ${glm_property_fte_f_bdgt.bar_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: bell_service_fte_amt_tobdgt {
    label: "FTE Bell Srvc TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bell_service_fte_amt}, ${glm_property_fte_f_bdgt.bell_service_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: bus_attendant_fte_amt_tobdgt {
    label: "FTE Bus Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bus_attendant_fte_amt}, ${glm_property_fte_f_bdgt.bus_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: captain_fte_amt_tobdgt {
    label: "FTE Captain TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.captain_fte_amt}, ${glm_property_fte_f_bdgt.captain_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: meter_fte_amt_tobdgt {
    label: "FTE Meter Instll TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.meter_fte_amt}, ${glm_property_fte_f_bdgt.meter_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: cashier_fte_amt_tobdgt {
    label: "FTE Cashier TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.cashier_fte_amt}, ${glm_property_fte_f_bdgt.cashier_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: concierge_fte_amt_tobdgt {
    label: "FTE Concierge TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.concierge_fte_amt}, ${glm_property_fte_f_bdgt.concierge_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: conference_services_fte_amt_tobdgt {
    label: "FTE Conference Srvcs TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.conference_services_fte_amt}, ${glm_property_fte_f_bdgt.conference_services_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: door_attendant_fte_amt_tobdgt {
    label: "FTE Door Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.door_attendant_fte_amt}, ${glm_property_fte_f_bdgt.door_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: driver_fte_amt_tobdgt {
    label: "FTE Driver TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.driver_fte_amt}, ${glm_property_fte_f_bdgt.driver_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: supervisor_fte_amt_tobdgt {
    label: "FTE Supervisor TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.supervisor_fte_amt}, ${glm_property_fte_f_bdgt.supervisor_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_prep_fte_amt_tobdgt {
    label: "FTE Food Prep TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.food_prep_fte_amt}, ${glm_property_fte_f_bdgt.food_prep_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: front_desk_fte_amt_tobdgt {
    label: "FTE Front Desk TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.front_desk_fte_amt}, ${glm_property_fte_f_bdgt.front_desk_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: grounds_fte_amt_tobdgt {
    label: "FTE Grounds TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.grounds_fte_amt}, ${glm_property_fte_f_bdgt.grounds_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: guest_services_fte_amt_tobdgt {
    label: "FTE Guest Srvcs TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.guest_services_fte_amt}, ${glm_property_fte_f_bdgt.guest_services_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: house_attendant_fte_amt_tobdgt {
    label: "FTE House Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.house_attendant_fte_amt}, ${glm_property_fte_f_bdgt.house_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: hr_fte_amt_tobdgt {
    label: "FTE HR TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.hr_fte_amt}, ${glm_property_fte_f_bdgt.hr_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: info_sys_fte_amt_tobdgt {
    label: "FTE Info Sys TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.info_sys_fte_amt}, ${glm_property_fte_f_bdgt.info_sys_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: locker_attendant_fte_amt_tobdgt {
    label: "FTE Locker Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.locker_attendant_fte_amt}, ${glm_property_fte_f_bdgt.locker_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: maintenance_fte_amt_tobdgt {
    label: "FTE Maintenance TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.maintenance_fte_amt}, ${glm_property_fte_f_bdgt.maintenance_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: mgmt_fte_amt_tobdgt {
    label: "FTE Mgmt  TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.mgmt_fte_amt}, ${glm_property_fte_f_bdgt.mgmt_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: message_therapist_fte_amt_tobdgt {
    label: "FTE Message Ther. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.message_therapist_fte_amt}, ${glm_property_fte_f_bdgt.message_therapist_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: night_attendant_fte_amt_tobdgt {
    label: "FTE Night Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.night_attendant_fte_amt}, ${glm_property_fte_f_bdgt.night_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: night_audit_fte_amt_tobdgt {
    label: "FTE Night Audit TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.night_audit_fte_amt}, ${glm_property_fte_f_bdgt.night_audit_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: public_area_attendant_fte_amt_tobdgt {
    label: "FTE Public Area TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.public_area_attendant_fte_amt}, ${glm_property_fte_f_bdgt.public_area_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: receptionist_fte_amt_tobdgt {
    label: "FTE Receptionist TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.receptionist_fte_amt}, ${glm_property_fte_f_bdgt.receptionist_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: reservations_fte_amt_tobdgt {
    label: "FTE Reservations TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.reservations_fte_amt}, ${glm_property_fte_f_bdgt.reservations_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_attendant_fte_amt_tobdgt {
    label: "FTE Room Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.room_attendant_fte_amt}, ${glm_property_fte_f_bdgt.room_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: runner_fte_amt_tobdgt {
    label: "FTE Runner TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.runner_fte_amt}, ${glm_property_fte_f_bdgt.runner_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_clerk_fte_amt_tobdgt {
    label: "FTE Sales Clerk TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.sales_clerk_fte_amt}, ${glm_property_fte_f_bdgt.sales_clerk_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_manager_fte_amt_tobdgt {
    label: "FTE Sales Mngr TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.sales_manager_fte_amt}, ${glm_property_fte_f_bdgt.sales_manager_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: salon_attendant_fte_amt_tobdgt {
    label: "FTE Salon Att. TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.salon_attendant_fte_amt}, ${glm_property_fte_f_bdgt.salon_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: security_fte_amt_tobdgt {
    label: "FTE Security TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.security_fte_amt}, ${glm_property_fte_f_bdgt.security_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: server_fte_amt_tobdgt {
    label: "FTE Server TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.server_fte_amt}, ${glm_property_fte_f_bdgt.server_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: steward_fte_amt_tobdgt {
    label: "FTE Steward TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.steward_fte_amt}, ${glm_property_fte_f_bdgt.steward_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: store_room_attendant_fte_amt_tobdgt {
    label: "FTE Store Room TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.store_room_attendant_fte_amt}, ${glm_property_fte_f_bdgt.store_room_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: turn_down_attendant_fte_amt_tobdgt {
    label: "FTE Turn Down TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.turn_down_attendant_fte_amt}, ${glm_property_fte_f_bdgt.turn_down_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: linen_fte_amt_tobdgt {
    label: "FTE Linen TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.linen_fte_amt}, ${glm_property_fte_f_bdgt.linen_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: valet_fte_amt_tobdgt {
    label: "FTE Valet TY:Bdgt - var %"
    description: "TY - Bdgt / Bdgt"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.valet_fte_amt}, ${glm_property_fte_f_bdgt.valet_fte_amt}) ;;
    value_format_name: percent_1
  }

}
