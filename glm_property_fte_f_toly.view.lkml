view: glm_property_fte_f_toly {
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

  measure: hour_amt_toly_v {

    label: "Hrs  TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${glm_property_fte_f_ty.hour_amt} - ${glm_property_fte_f_ly.hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: room_hour_amt_toly_v {
    label: "Hrs Rms TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.room_hour_amt} - ${glm_property_fte_f_ly.room_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_hour_amt_toly_v {
    label: "Hrs RB&E TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${glm_property_fte_f_ty.rbe_hour_amt} - ${glm_property_fte_f_ly.rbe_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_hour_amt_toly_v {
    label: "Hrs RB&E Banquet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_banquet_hour_amt} - ${glm_property_fte_f_ly.rbe_banquet_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_hour_amt_toly_v {
    label: "Hrs RB&E Catering TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_catering_hour_amt} - ${glm_property_fte_f_ly.rbe_catering_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_hour_amt_toly_v {
    label: "Hrs RB&E Outlet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_outlet_hour_amt} - ${glm_property_fte_f_ly.rbe_outlet_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_conference_services_hour_amt_toly_v {
    label: "Hrs RB&E Conference Services TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_conference_services_hour_amt} - ${glm_property_fte_f_ly.rbe_conference_services_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_restaurant_hour_amt_toly_v {
    label: "Hrs RB&E Restaurant TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_restaurant_hour_amt} - ${glm_property_fte_f_ly.rbe_restaurant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_lounge_hour_amt_toly_v {
    label: "Hrs RB&E Lounge TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_lounge_hour_amt} - ${glm_property_fte_f_ly.rbe_lounge_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_hour_amt_toly_v {
    label: "Hrs RB&E Other TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_other_hour_amt} - ${glm_property_fte_f_ly.rbe_other_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: spa_hour_amt_toly_v {
    label: "Hrs Spa TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.spa_hour_amt} - ${glm_property_fte_f_ly.spa_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_hour_amt_toly_v {
    label: "Hrs Golf TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.golf_hour_amt} - ${glm_property_fte_f_ly.golf_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: fitness_recreation_hour_amt_toly_v {
    label: "Hrs Fitness & Rec TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.fitness_recreation_hour_amt} - ${glm_property_fte_f_ly.fitness_recreation_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: retail_hour_amt_toly_v {
    label: "Hrs Retail TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.retail_hour_amt} - ${glm_property_fte_f_ly.retail_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: other_operated_hour_amt_toly_v {
    label: "Hrs Other Op. Dept. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.other_operated_hour_amt} - ${glm_property_fte_f_ly.other_operated_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: property_mgmt_hour_amt_toly_v {
    label: "Hrs Mgmt Srvcs TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.property_mgmt_hour_amt} - ${glm_property_fte_f_ly.property_mgmt_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: misc_hour_amt_toly_v {
    label: "Hrs Rentals & Other TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.misc_hour_amt} - ${glm_property_fte_f_ly.misc_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_realty_hour_amt_toly_v {
    label: "Hrs Nonoperating Realty TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_realty_hour_amt} - ${glm_property_fte_f_ly.nonoperating_realty_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_airport_hour_amt_toly_v {
    label: "Hrs Nonoperating Airport TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_airport_hour_amt} - ${glm_property_fte_f_ly.nonoperating_airport_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_util_hour_amt_toly_v {
    label: "Hrs Nonoperating Utility TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_util_hour_amt} - ${glm_property_fte_f_ly.nonoperating_util_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: undistributed_hour_amt_toly_v {
    label: "Hrs Undistributed TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.undistributed_hour_amt} - ${glm_property_fte_f_ly.undistributed_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: allocated_hour_amt_toly_v {
    label: "Hrs Allocated TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.allocated_hour_amt} - ${glm_property_fte_f_ly.allocated_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: acct_hour_amt_toly_v {
    label: "Hrs Accounting TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.acct_hour_amt} - ${glm_property_fte_f_ly.acct_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: admin_hour_amt_toly_v {
    label: "Hrs Admin TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.admin_hour_amt} - ${glm_property_fte_f_ly.admin_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: attendant_hour_amt_toly_v {
    label: "Hrs Attendants TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.attendant_hour_amt} - ${glm_property_fte_f_ly.attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: bar_attendant_hour_amt_toly_v {
    label: "Hrs Bar Att. TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.bar_attendant_hour_amt} - ${glm_property_fte_f_ly.bar_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: bell_service_hour_amt_toly_v {
    label: "Hrs Bell Srvc TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.bell_service_hour_amt} - ${glm_property_fte_f_ly.bell_service_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: bus_attendant_hour_amt_toly_v {
    label: "Hrs Bus Att. TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.bus_attendant_hour_amt} - ${glm_property_fte_f_ly.bus_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: captain_hour_amt_toly_v {
    label: "Hrs Captain TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.captain_hour_amt} - ${glm_property_fte_f_ly.captain_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: meter_hour_amt_toly_v {
    label: "Hrs Meter Instll TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.meter_hour_amt} - ${glm_property_fte_f_ly.meter_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: cashier_hour_amt_toly_v {
    label: "Hrs Cashier TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.cashier_hour_amt} - ${glm_property_fte_f_ly.cashier_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: concierge_hour_amt_toly_v {
    label: "Hrs Concierge TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.concierge_hour_amt} - ${glm_property_fte_f_ly.concierge_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: conference_services_hour_amt_toly_v {
    label: "Hrs Conference Srvcs TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.conference_services_hour_amt} - ${glm_property_fte_f_ly.conference_services_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: door_attendant_hour_amt_toly_v {
    label: "Hrs Door Att. TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.door_attendant_hour_amt} - ${glm_property_fte_f_ly.door_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: driver_hour_amt_toly_v {
    label: "Hrs Driver TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.driver_hour_amt} - ${glm_property_fte_f_ly.driver_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: supervisor_hour_amt_toly_v {
    label: "Hrs Supervisor TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.supervisor_hour_amt} - ${glm_property_fte_f_ly.supervisor_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: food_prep_hour_amt_toly_v {
    label: "Hrs Food Prep TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.food_prep_hour_amt} - ${glm_property_fte_f_ly.food_prep_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: front_desk_hour_amt_toly_v {
    label: "Hrs Front Desk TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.front_desk_hour_amt} - ${glm_property_fte_f_ly.front_desk_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: grounds_hour_amt_toly_v {
    label: "Hrs Grounds TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.grounds_hour_amt} - ${glm_property_fte_f_ly.grounds_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: guest_services_hour_amt_toly_v {
    label: "Hrs Guest Srvcs TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.guest_services_hour_amt} - ${glm_property_fte_f_ly.guest_services_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: house_attendant_hour_amt_toly_v {
    label: "Hrs House Att. TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.house_attendant_hour_amt} - ${glm_property_fte_f_ly.house_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: hr_hour_amt_toly_v {
    label: "Hrs HR TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.hr_hour_amt} - ${glm_property_fte_f_ly.hr_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: info_sys_hour_amt_toly_v {
    label: "Hrs Info Sys TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.info_sys_hour_amt} - ${glm_property_fte_f_ly.info_sys_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: locker_attendant_hour_amt_toly_v {
    label: "Hrs Locker Att. TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.locker_attendant_hour_amt} - ${glm_property_fte_f_ly.locker_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: maintenance_hour_amt_toly_v {
    label: "Hrs Maintenance TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.maintenance_hour_amt} - ${glm_property_fte_f_ly.maintenance_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: mgmt_hour_amt_toly_v {
    label: "Hrs Mgmt  TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.mgmt_hour_amt} - ${glm_property_fte_f_ly.mgmt_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: message_therapist_hour_amt_toly_v {
    label: "Hrs Message Ther. TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.message_therapist_hour_amt} - ${glm_property_fte_f_ly.message_therapist_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: night_attendant_hour_amt_toly_v {
    label: "Hrs Night Att. TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.night_attendant_hour_amt} - ${glm_property_fte_f_ly.night_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: night_audit_hour_amt_toly_v {
    label: "Hrs Night Audit TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.night_audit_hour_amt} - ${glm_property_fte_f_ly.night_audit_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: public_area_attendant_hour_amt_toly_v {
    label: "Hrs Public Area TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.public_area_attendant_hour_amt} - ${glm_property_fte_f_ly.public_area_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: receptionist_hour_amt_toly_v {
    label: "Hrs Receptionist TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.receptionist_hour_amt} - ${glm_property_fte_f_ly.receptionist_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: reservations_hour_amt_toly_v {
    label: "Hrs Reservations TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.reservations_hour_amt} - ${glm_property_fte_f_ly.reservations_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: room_attendant_hour_amt_toly_v {
    label: "Hrs Room Att. TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.room_attendant_hour_amt} - ${glm_property_fte_f_ly.room_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: runner_hour_amt_toly_v {
    label: "Hrs Runner TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.runner_hour_amt} - ${glm_property_fte_f_ly.runner_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: sales_clerk_hour_amt_toly_v {
    label: "Hrs Sales Clerk TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.sales_clerk_hour_amt} - ${glm_property_fte_f_ly.sales_clerk_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: sales_manager_hour_amt_toly_v {
    label: "Hrs Sales Mngr TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.sales_manager_hour_amt} - ${glm_property_fte_f_ly.sales_manager_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: salon_attendant_hour_amt_toly_v {
    label: "Hrs Salon Att. TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.salon_attendant_hour_amt} - ${glm_property_fte_f_ly.salon_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: security_hour_amt_toly_v {
    label: "Hrs Security TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.security_hour_amt} - ${glm_property_fte_f_ly.security_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: server_hour_amt_toly_v {
    label: "Hrs Server TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.server_hour_amt} - ${glm_property_fte_f_ly.server_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: steward_hour_amt_toly_v {
    label: "Hrs Steward TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.steward_hour_amt} - ${glm_property_fte_f_ly.steward_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: store_room_attendant_hour_amt_toly_v {
    label: "Hrs Store Room TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.store_room_attendant_hour_amt} - ${glm_property_fte_f_ly.store_room_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: turn_down_attendant_hour_amt_toly_v {
    label: "Hrs Turn Down TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.turn_down_attendant_hour_amt} - ${glm_property_fte_f_ly.turn_down_attendant_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: linen_hour_amt_toly_v {
    label: "Hrs Linen TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.linen_hour_amt} - ${glm_property_fte_f_ly.linen_hour_amt} ;;
    value_format_name: decimal_2
  }

  measure: valet_hour_amt_toly_v {
    label: "Hrs Valet TY:LY - var"
    description: "TY - LY "
    type: number
    sql: ${glm_property_fte_f_ty.valet_hour_amt} - ${glm_property_fte_f_ly.valet_hour_amt} ;;
    value_format_name: decimal_2
  }

  #-- var %

  measure: hour_amt_toly {
    label: "Hrs  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.hour_amt}, ${glm_property_fte_f_ly.hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: room_hour_amt_toly {
    label: "Hrs Rms TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.room_hour_amt}, ${glm_property_fte_f_ly.room_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_hour_amt_toly {
    label: "Hrs RB&E TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_hour_amt}, ${glm_property_fte_f_ly.rbe_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_hour_amt_toly {
    label: "Hrs RB&E Banquet TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_banquet_hour_amt}, ${glm_property_fte_f_ly.rbe_banquet_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_hour_amt_toly {
    label: "Hrs RB&E Catering TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_catering_hour_amt}, ${glm_property_fte_f_ly.rbe_catering_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_hour_amt_toly {
    label: "Hrs RB&E Outlet TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_outlet_hour_amt}, ${glm_property_fte_f_ly.rbe_outlet_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_hour_amt_toly {
    label: "Hrs RB&E Conference Services TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_conference_services_hour_amt}, ${glm_property_fte_f_ly.rbe_conference_services_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_restaurant_hour_amt_toly {
    label: "Hrs RB&E Restaurant TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_restaurant_hour_amt}, ${glm_property_fte_f_ly.rbe_restaurant_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_lounge_hour_amt_toly {
    label: "Hrs RB&E Lounge TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_lounge_hour_amt}, ${glm_property_fte_f_ly.rbe_lounge_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_hour_amt_toly {
    label: "Hrs RB&E Other TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_other_hour_amt}, ${glm_property_fte_f_ly.rbe_other_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: spa_hour_amt_toly {
    label: "Hrs Spa TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.spa_hour_amt}, ${glm_property_fte_f_ly.spa_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: golf_hour_amt_toly {
    label: "Hrs Golf TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.golf_hour_amt}, ${glm_property_fte_f_ly.golf_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_hour_amt_toly {
    label: "Hrs Fitness & Rec TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.fitness_recreation_hour_amt}, ${glm_property_fte_f_ly.fitness_recreation_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: retail_hour_amt_toly {
    label: "Hrs Retail TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.retail_hour_amt}, ${glm_property_fte_f_ly.retail_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: other_operated_hour_amt_toly {
    label: "Hrs Other Op. Dept. TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.other_operated_hour_amt}, ${glm_property_fte_f_ly.other_operated_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_hour_amt_toly {
    label: "Hrs Mgmt Srvcs TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.property_mgmt_hour_amt}, ${glm_property_fte_f_ly.property_mgmt_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: misc_hour_amt_toly {
    label: "Hrs Rentals & Other TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.misc_hour_amt}, ${glm_property_fte_f_ly.misc_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_hour_amt_toly {
    label: "Hrs Nonoperating Realty TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_realty_hour_amt}, ${glm_property_fte_f_ly.nonoperating_realty_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_hour_amt_toly {
    label: "Hrs Nonoperating Airport TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_airport_hour_amt}, ${glm_property_fte_f_ly.nonoperating_airport_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_hour_amt_toly {
    label: "Hrs Nonoperating Utility TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_util_hour_amt}, ${glm_property_fte_f_ly.nonoperating_util_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: undistributed_hour_amt_toly {
    label: "Hrs Undistributed TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.undistributed_hour_amt}, ${glm_property_fte_f_ly.undistributed_hour_amt} ) ;;
    value_format_name: percent_1
  }

  measure: allocated_hour_amt_toly {
    label: "Hrs Allocated TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.allocated_hour_amt}, ${glm_property_fte_f_ly.allocated_hour_amt} ) ;;
    value_format_name: percent_1
  }


  measure: acct_hour_amt_toly {
    label: "Hrs Accounting TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.acct_hour_amt}, ${glm_property_fte_f_ly.acct_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: admin_hour_amt_toly {
    label: "Hrs Admin TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.admin_hour_amt}, ${glm_property_fte_f_ly.admin_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: attendant_hour_amt_toly {
    label: "Hrs Attendants TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.attendant_hour_amt}, ${glm_property_fte_f_ly.attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: bar_attendant_hour_amt_toly {
    label: "Hrs Bar Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bar_attendant_hour_amt}, ${glm_property_fte_f_ly.bar_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: bell_service_hour_amt_toly {
    label: "Hrs Bell Srvc TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bell_service_hour_amt}, ${glm_property_fte_f_ly.bell_service_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: bus_attendant_hour_amt_toly {
    label: "Hrs Bus Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bus_attendant_hour_amt}, ${glm_property_fte_f_ly.bus_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: captain_hour_amt_toly {
    label: "Hrs Captain TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.captain_hour_amt}, ${glm_property_fte_f_ly.captain_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: meter_hour_amt_toly {
    label: "Hrs Meter Instll TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.meter_hour_amt}, ${glm_property_fte_f_ly.meter_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: cashier_hour_amt_toly {
    label: "Hrs Cashier TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.cashier_hour_amt}, ${glm_property_fte_f_ly.cashier_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: concierge_hour_amt_toly {
    label: "Hrs Concierge TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.concierge_hour_amt}, ${glm_property_fte_f_ly.concierge_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: conference_services_hour_amt_toly {
    label: "Hrs Conference Srvcs TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.conference_services_hour_amt}, ${glm_property_fte_f_ly.conference_services_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: door_attendant_hour_amt_toly {
    label: "Hrs Door Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.door_attendant_hour_amt}, ${glm_property_fte_f_ly.door_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: driver_hour_amt_toly {
    label: "Hrs Driver TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.driver_hour_amt}, ${glm_property_fte_f_ly.driver_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: supervisor_hour_amt_toly {
    label: "Hrs Supervisor TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.supervisor_hour_amt}, ${glm_property_fte_f_ly.supervisor_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_prep_hour_amt_toly {
    label: "Hrs Food Prep TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.food_prep_hour_amt}, ${glm_property_fte_f_ly.food_prep_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: front_desk_hour_amt_toly {
    label: "Hrs Front Desk TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.front_desk_hour_amt}, ${glm_property_fte_f_ly.front_desk_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: grounds_hour_amt_toly {
    label: "Hrs Grounds TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.grounds_hour_amt}, ${glm_property_fte_f_ly.grounds_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: guest_services_hour_amt_toly {
    label: "Hrs Guest Srvcs TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.guest_services_hour_amt}, ${glm_property_fte_f_ly.guest_services_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: house_attendant_hour_amt_toly {
    label: "Hrs House Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.house_attendant_hour_amt}, ${glm_property_fte_f_ly.house_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: hr_hour_amt_toly {
    label: "Hrs HR TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.hr_hour_amt}, ${glm_property_fte_f_ly.hr_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: info_sys_hour_amt_toly {
    label: "Hrs Info Sys TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.info_sys_hour_amt}, ${glm_property_fte_f_ly.info_sys_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: locker_attendant_hour_amt_toly {
    label: "Hrs Locker Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.locker_attendant_hour_amt}, ${glm_property_fte_f_ly.locker_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: maintenance_hour_amt_toly {
    label: "Hrs Maintenance TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.maintenance_hour_amt}, ${glm_property_fte_f_ly.maintenance_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: mgmt_hour_amt_toly {
    label: "Hrs Mgmt  TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.mgmt_hour_amt}, ${glm_property_fte_f_ly.mgmt_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: message_therapist_hour_amt_toly {
    label: "Hrs Message Ther. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.message_therapist_hour_amt}, ${glm_property_fte_f_ly.message_therapist_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: night_attendant_hour_amt_toly {
    label: "Hrs Night Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.night_attendant_hour_amt}, ${glm_property_fte_f_ly.night_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: night_audit_hour_amt_toly {
    label: "Hrs Night Audit TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.night_audit_hour_amt}, ${glm_property_fte_f_ly.night_audit_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: public_area_attendant_hour_amt_toly {
    label: "Hrs Public Area TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.public_area_attendant_hour_amt}, ${glm_property_fte_f_ly.public_area_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: receptionist_hour_amt_toly {
    label: "Hrs Receptionist TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.receptionist_hour_amt}, ${glm_property_fte_f_ly.receptionist_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: reservations_hour_amt_toly {
    label: "Hrs Reservations TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.reservations_hour_amt}, ${glm_property_fte_f_ly.reservations_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_attendant_hour_amt_toly {
    label: "Hrs Room Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.room_attendant_hour_amt}, ${glm_property_fte_f_ly.room_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: runner_hour_amt_toly {
    label: "Hrs Runner TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.runner_hour_amt}, ${glm_property_fte_f_ly.runner_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_clerk_hour_amt_toly {
    label: "Hrs Sales Clerk TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.sales_clerk_hour_amt}, ${glm_property_fte_f_ly.sales_clerk_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_manager_hour_amt_toly {
    label: "Hrs Sales Mngr TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.sales_manager_hour_amt}, ${glm_property_fte_f_ly.sales_manager_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: salon_attendant_hour_amt_toly {
    label: "Hrs Salon Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.salon_attendant_hour_amt}, ${glm_property_fte_f_ly.salon_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: security_hour_amt_toly {
    label: "Hrs Security TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.security_hour_amt}, ${glm_property_fte_f_ly.security_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: server_hour_amt_toly {
    label: "Hrs Server TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.server_hour_amt}, ${glm_property_fte_f_ly.server_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: steward_hour_amt_toly {
    label: "Hrs Steward TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.steward_hour_amt}, ${glm_property_fte_f_ly.steward_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: store_room_attendant_hour_amt_toly {
    label: "Hrs Store Room TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.store_room_attendant_hour_amt}, ${glm_property_fte_f_ly.store_room_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: turn_down_attendant_hour_amt_toly {
    label: "Hrs Turn Down TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.turn_down_attendant_hour_amt}, ${glm_property_fte_f_ly.turn_down_attendant_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: linen_hour_amt_toly {
    label: "Hrs Linen TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.linen_hour_amt}, ${glm_property_fte_f_ly.linen_hour_amt}) ;;
    value_format_name: percent_1
  }

  measure: valet_hour_amt_toly {
    label: "Hrs Valet TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.valet_hour_amt}, ${glm_property_fte_f_ly.valet_hour_amt}) ;;
    value_format_name: percent_1
  }

  #-- FTE

  measure: fte_amt_toly_v {
    label: "FTE  TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${glm_property_fte_f_ty.fte_amt} - ${glm_property_fte_f_ly.fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: room_fte_amt_toly_v {
    label: "FTE Rms TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.room_fte_amt} - ${glm_property_fte_f_ly.room_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_fte_amt_toly_v {
    label: "FTE RB&E TY:LY - var"
    description: "TY - LY"
    type: number
    sql:  ${glm_property_fte_f_ty.rbe_fte_amt} - ${glm_property_fte_f_ly.rbe_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_fte_amt_toly_v {
    label: "FTE RB&E Banquet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_banquet_fte_amt} - ${glm_property_fte_f_ly.rbe_banquet_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_fte_amt_toly_v {
    label: "FTE RB&E Catering TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_catering_fte_amt} - ${glm_property_fte_f_ly.rbe_catering_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_fte_amt_toly_v {
    label: "FTE RB&E Outlet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_outlet_fte_amt} - ${glm_property_fte_f_ly.rbe_outlet_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_conference_services_fte_amt_toly_v {
    label: "FTE RB&E Conference Services TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_conference_services_fte_amt} - ${glm_property_fte_f_ly.rbe_conference_services_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_restaurant_fte_amt_toly_v {
    label: "FTE RB&E Restaurant TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_restaurant_fte_amt} - ${glm_property_fte_f_ly.rbe_restaurant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_lounge_fte_amt_toly_v {
    label: "FTE RB&E Lounge TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_lounge_fte_amt} - ${glm_property_fte_f_ly.rbe_lounge_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_fte_amt_toly_v {
    label: "FTE RB&E Other TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.rbe_other_fte_amt} - ${glm_property_fte_f_ly.rbe_other_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: spa_fte_amt_toly_v {
    label: "FTE Spa TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.spa_fte_amt} - ${glm_property_fte_f_ly.spa_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: golf_fte_amt_toly_v {
    label: "FTE Golf TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.golf_fte_amt} - ${glm_property_fte_f_ly.golf_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: fitness_recreation_fte_amt_toly_v {
    label: "FTE Fitness & Rec TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.fitness_recreation_fte_amt} - ${glm_property_fte_f_ly.fitness_recreation_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: retail_fte_amt_toly_v {
    label: "FTE Retail TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.retail_fte_amt} - ${glm_property_fte_f_ly.retail_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: other_operated_fte_amt_toly_v {
    label: "FTE Other Op. Dept. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.other_operated_fte_amt} - ${glm_property_fte_f_ly.other_operated_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: property_mgmt_fte_amt_toly_v {
    label: "FTE Mgmt Srvcs TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.property_mgmt_fte_amt} - ${glm_property_fte_f_ly.property_mgmt_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: misc_fte_amt_toly_v {
    label: "FTE Rentals & Other TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.misc_fte_amt} - ${glm_property_fte_f_ly.misc_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_realty_fte_amt_toly_v {
    label: "FTE Nonoperating Realty TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_realty_fte_amt} - ${glm_property_fte_f_ly.nonoperating_realty_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_airport_fte_amt_toly_v {
    label: "FTE Nonoperating Airport TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_airport_fte_amt} - ${glm_property_fte_f_ly.nonoperating_airport_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_util_fte_amt_toly_v {
    label: "FTE Nonoperating Utility TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.nonoperating_util_fte_amt} - ${glm_property_fte_f_ly.nonoperating_util_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: undistributed_fte_amt_toly_v {
    label: "FTE Undistributed TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.undistributed_fte_amt} - ${glm_property_fte_f_ly.undistributed_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: allocated_fte_amt_toly_v {
    label: "FTE Allocated TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.allocated_fte_amt} - ${glm_property_fte_f_ly.allocated_fte_amt} ;;
    value_format_name: decimal_2
  }


  measure: acct_fte_amt_toly_v {
    label: "FTE Accounting TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.acct_fte_amt} - ${glm_property_fte_f_ly.acct_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: admin_fte_amt_toly_v {
    label: "FTE Admin TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.admin_fte_amt} - ${glm_property_fte_f_ly.admin_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: attendant_fte_amt_toly_v {
    label: "FTE Attendants TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.attendant_fte_amt} - ${glm_property_fte_f_ly.attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: bar_attendant_fte_amt_toly_v {
    label: "FTE Bar Att. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.bar_attendant_fte_amt} - ${glm_property_fte_f_ly.bar_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: bell_service_fte_amt_toly_v {
    label: "FTE Bell Srvc TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.bell_service_fte_amt} - ${glm_property_fte_f_ly.bell_service_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: bus_attendant_fte_amt_toly_v {
    label: "FTE Bus Att. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.bus_attendant_fte_amt} - ${glm_property_fte_f_ly.bus_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: captain_fte_amt_toly_v {
    label: "FTE Captain TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.captain_fte_amt} - ${glm_property_fte_f_ly.captain_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: meter_fte_amt_toly_v {
    label: "FTE Meter Instll TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.meter_fte_amt} - ${glm_property_fte_f_ly.meter_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: cashier_fte_amt_toly_v {
    label: "FTE Cashier TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.cashier_fte_amt} - ${glm_property_fte_f_ly.cashier_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: concierge_fte_amt_toly_v {
    label: "FTE Concierge TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.concierge_fte_amt} - ${glm_property_fte_f_ly.concierge_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: conference_services_fte_amt_toly_v {
    label: "FTE Conference Srvcs TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.conference_services_fte_amt} - ${glm_property_fte_f_ly.conference_services_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: door_attendant_fte_amt_toly_v {
    label: "FTE Door Att. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.door_attendant_fte_amt} - ${glm_property_fte_f_ly.door_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: driver_fte_amt_toly_v {
    label: "FTE Driver TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.driver_fte_amt} - ${glm_property_fte_f_ly.driver_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: supervisor_fte_amt_toly_v {
    label: "FTE Supervisor TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.supervisor_fte_amt} - ${glm_property_fte_f_ly.supervisor_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: food_prep_fte_amt_toly_v {
    label: "FTE Food Prep TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.food_prep_fte_amt} - ${glm_property_fte_f_ly.food_prep_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: front_desk_fte_amt_toly_v {
    label: "FTE Front Desk TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.front_desk_fte_amt} - ${glm_property_fte_f_ly.front_desk_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: grounds_fte_amt_toly_v {
    label: "FTE Grounds TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.grounds_fte_amt} - ${glm_property_fte_f_ly.grounds_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: guest_services_fte_amt_toly_v {
    label: "FTE Guest Srvcs TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.guest_services_fte_amt} - ${glm_property_fte_f_ly.guest_services_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: house_attendant_fte_amt_toly_v {
    label: "FTE House Att. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.house_attendant_fte_amt} - ${glm_property_fte_f_ly.house_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: hr_fte_amt_toly_v {
    label: "FTE HR TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.hr_fte_amt} - ${glm_property_fte_f_ly.hr_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: info_sys_fte_amt_toly_v {
    label: "FTE Info Sys TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.info_sys_fte_amt} - ${glm_property_fte_f_ly.info_sys_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: locker_attendant_fte_amt_toly_v {
    label: "FTE Locker Att. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.locker_attendant_fte_amt} - ${glm_property_fte_f_ly.locker_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: maintenance_fte_amt_toly_v {
    label: "FTE Maintenance TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.maintenance_fte_amt} - ${glm_property_fte_f_ly.maintenance_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: mgmt_fte_amt_toly_v {
    label: "FTE Mgmt  TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.mgmt_fte_amt} - ${glm_property_fte_f_ly.mgmt_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: message_therapist_fte_amt_toly_v {
    label: "FTE Message Ther. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.message_therapist_fte_amt} - ${glm_property_fte_f_ly.message_therapist_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: night_attendant_fte_amt_toly_v {
    label: "FTE Night Att. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.night_attendant_fte_amt} - ${glm_property_fte_f_ly.night_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: night_audit_fte_amt_toly_v {
    label: "FTE Night Audit TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.night_audit_fte_amt} - ${glm_property_fte_f_ly.night_audit_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: public_area_attendant_fte_amt_toly_v {
    label: "FTE Public Area TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.public_area_attendant_fte_amt} - ${glm_property_fte_f_ly.public_area_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: receptionist_fte_amt_toly_v {
    label: "FTE Receptionist TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.receptionist_fte_amt} - ${glm_property_fte_f_ly.receptionist_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: reservations_fte_amt_toly_v {
    label: "FTE Reservations TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.reservations_fte_amt} - ${glm_property_fte_f_ly.reservations_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: room_attendant_fte_amt_toly_v {
    label: "FTE Room Att. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.room_attendant_fte_amt} - ${glm_property_fte_f_ly.room_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: runner_fte_amt_toly_v {
    label: "FTE Runner TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.runner_fte_amt} - ${glm_property_fte_f_ly.runner_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: sales_clerk_fte_amt_toly_v {
    label: "FTE Sales Clerk TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.sales_clerk_fte_amt} - ${glm_property_fte_f_ly.sales_clerk_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: sales_manager_fte_amt_toly_v {
    label: "FTE Sales Mngr TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.sales_manager_fte_amt} - ${glm_property_fte_f_ly.sales_manager_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: salon_attendant_fte_amt_toly_v {
    label: "FTE Salon Att. TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.salon_attendant_fte_amt} - ${glm_property_fte_f_ly.salon_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: security_fte_amt_toly_v {
    label: "FTE Security TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.security_fte_amt} - ${glm_property_fte_f_ly.security_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: server_fte_amt_toly_v {
    label: "FTE Server TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.server_fte_amt} - ${glm_property_fte_f_ly.server_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: steward_fte_amt_toly_v {
    label: "FTE Steward TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.steward_fte_amt} - ${glm_property_fte_f_ly.steward_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: store_room_attendant_fte_amt_toly_v {
    label: "FTE Store Room TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.store_room_attendant_fte_amt} - ${glm_property_fte_f_ly.store_room_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: turn_down_attendant_fte_amt_toly_v {
    label: "FTE Turn Down TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.turn_down_attendant_fte_amt} - ${glm_property_fte_f_ly.turn_down_attendant_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: linen_fte_amt_toly_v {
    label: "FTE Linen TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.linen_fte_amt} - ${glm_property_fte_f_ly.linen_fte_amt} ;;
    value_format_name: decimal_2
  }

  measure: valet_fte_amt_toly_v {
    label: "FTE Valet TY:LY - var"
    description: "TY - LY"
    type: number
    sql: ${glm_property_fte_f_ty.valet_fte_amt} - ${glm_property_fte_f_ly.valet_fte_amt} ;;
    value_format_name: decimal_2
  }

 #-- FTE var %

  measure: fte_amt_toly {
    label: "FTE  TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.fte_amt}, ${glm_property_fte_f_ly.fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: room_fte_amt_toly {
    label: "FTE Rms TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.room_fte_amt}, ${glm_property_fte_f_ly.room_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_fte_amt_toly {
    label: "FTE RB&E TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_fte_amt}, ${glm_property_fte_f_ly.rbe_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_banquet_fte_amt_toly {
    label: "FTE RB&E Banquet TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_banquet_fte_amt}, ${glm_property_fte_f_ly.rbe_banquet_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_catering_fte_amt_toly {
    label: "FTE RB&E Catering TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_catering_fte_amt}, ${glm_property_fte_f_ly.rbe_catering_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_outlet_fte_amt_toly {
    label: "FTE RB&E Outlet TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_outlet_fte_amt}, ${glm_property_fte_f_ly.rbe_outlet_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_conference_services_fte_amt_toly {
    label: "FTE RB&E Conference Services TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_conference_services_fte_amt}, ${glm_property_fte_f_ly.rbe_conference_services_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_restaurant_fte_amt_toly {
    label: "FTE RB&E Restaurant TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_restaurant_fte_amt}, ${glm_property_fte_f_ly.rbe_restaurant_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_lounge_fte_amt_toly {
    label: "FTE RB&E Lounge TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_lounge_fte_amt}, ${glm_property_fte_f_ly.rbe_lounge_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: rbe_other_fte_amt_toly {
    label: "FTE RB&E Other TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.rbe_other_fte_amt}, ${glm_property_fte_f_ly.rbe_other_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: spa_fte_amt_toly {
    label: "FTE Spa TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.spa_fte_amt}, ${glm_property_fte_f_ly.spa_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: golf_fte_amt_toly {
    label: "FTE Golf TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.golf_fte_amt}, ${glm_property_fte_f_ly.golf_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: fitness_recreation_fte_amt_toly {
    label: "FTE Fitness & Rec TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.fitness_recreation_fte_amt}, ${glm_property_fte_f_ly.fitness_recreation_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: retail_fte_amt_toly {
    label: "FTE Retail TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.retail_fte_amt}, ${glm_property_fte_f_ly.retail_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: other_operated_fte_amt_toly {
    label: "FTE Other Op. Dept. TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.other_operated_fte_amt}, ${glm_property_fte_f_ly.other_operated_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: property_mgmt_fte_amt_toly {
    label: "FTE Mgmt Srvcs TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.property_mgmt_fte_amt}, ${glm_property_fte_f_ly.property_mgmt_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: misc_fte_amt_toly {
    label: "FTE Rentals & Other TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.misc_fte_amt}, ${glm_property_fte_f_ly.misc_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_realty_fte_amt_toly {
    label: "FTE Nonoperating Realty TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_realty_fte_amt}, ${glm_property_fte_f_ly.nonoperating_realty_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_airport_fte_amt_toly {
    label: "FTE Nonoperating Airport TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_airport_fte_amt}, ${glm_property_fte_f_ly.nonoperating_airport_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: nonoperating_util_fte_amt_toly {
    label: "FTE Nonoperating Utility TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.nonoperating_util_fte_amt}, ${glm_property_fte_f_ly.nonoperating_util_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: undistributed_fte_amt_toly {
    label: "FTE Undistributed TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.undistributed_fte_amt}, ${glm_property_fte_f_ly.undistributed_fte_amt} ) ;;
    value_format_name: percent_1
  }

  measure: allocated_fte_amt_toly {
    label: "FTE Allocated TY:LY - var %"
    description: "(TY - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${glm_property_fte_f_ty.allocated_fte_amt}, ${glm_property_fte_f_ly.allocated_fte_amt} ) ;;
    value_format_name: percent_1
  }


  measure: acct_fte_amt_toly {
    label: "FTE Accounting TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.acct_fte_amt}, ${glm_property_fte_f_ly.acct_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: admin_fte_amt_toly {
    label: "FTE Admin TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.admin_fte_amt}, ${glm_property_fte_f_ly.admin_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: attendant_fte_amt_toly {
    label: "FTE Attendants TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.attendant_fte_amt}, ${glm_property_fte_f_ly.attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: bar_attendant_fte_amt_toly {
    label: "FTE Bar Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bar_attendant_fte_amt}, ${glm_property_fte_f_ly.bar_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: bell_service_fte_amt_toly {
    label: "FTE Bell Srvc TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bell_service_fte_amt}, ${glm_property_fte_f_ly.bell_service_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: bus_attendant_fte_amt_toly {
    label: "FTE Bus Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.bus_attendant_fte_amt}, ${glm_property_fte_f_ly.bus_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: captain_fte_amt_toly {
    label: "FTE Captain TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.captain_fte_amt}, ${glm_property_fte_f_ly.captain_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: meter_fte_amt_toly {
    label: "FTE Meter Instll TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.meter_fte_amt}, ${glm_property_fte_f_ly.meter_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: cashier_fte_amt_toly {
    label: "FTE Cashier TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.cashier_fte_amt}, ${glm_property_fte_f_ly.cashier_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: concierge_fte_amt_toly {
    label: "FTE Concierge TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.concierge_fte_amt}, ${glm_property_fte_f_ly.concierge_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: conference_services_fte_amt_toly {
    label: "FTE Conference Srvcs TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.conference_services_fte_amt}, ${glm_property_fte_f_ly.conference_services_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: door_attendant_fte_amt_toly {
    label: "FTE Door Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.door_attendant_fte_amt}, ${glm_property_fte_f_ly.door_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: driver_fte_amt_toly {
    label: "FTE Driver TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.driver_fte_amt}, ${glm_property_fte_f_ly.driver_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: supervisor_fte_amt_toly {
    label: "FTE Supervisor TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.supervisor_fte_amt}, ${glm_property_fte_f_ly.supervisor_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: food_prep_fte_amt_toly {
    label: "FTE Food Prep TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.food_prep_fte_amt}, ${glm_property_fte_f_ly.food_prep_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: front_desk_fte_amt_toly {
    label: "FTE Front Desk TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.front_desk_fte_amt}, ${glm_property_fte_f_ly.front_desk_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: grounds_fte_amt_toly {
    label: "FTE Grounds TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.grounds_fte_amt}, ${glm_property_fte_f_ly.grounds_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: guest_services_fte_amt_toly {
    label: "FTE Guest Srvcs TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.guest_services_fte_amt}, ${glm_property_fte_f_ly.guest_services_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: house_attendant_fte_amt_toly {
    label: "FTE House Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.house_attendant_fte_amt}, ${glm_property_fte_f_ly.house_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: hr_fte_amt_toly {
    label: "FTE HR TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.hr_fte_amt}, ${glm_property_fte_f_ly.hr_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: info_sys_fte_amt_toly {
    label: "FTE Info Sys TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.info_sys_fte_amt}, ${glm_property_fte_f_ly.info_sys_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: locker_attendant_fte_amt_toly {
    label: "FTE Locker Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.locker_attendant_fte_amt}, ${glm_property_fte_f_ly.locker_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: maintenance_fte_amt_toly {
    label: "FTE Maintenance TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.maintenance_fte_amt}, ${glm_property_fte_f_ly.maintenance_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: mgmt_fte_amt_toly {
    label: "FTE Mgmt  TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.mgmt_fte_amt}, ${glm_property_fte_f_ly.mgmt_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: message_therapist_fte_amt_toly {
    label: "FTE Message Ther. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.message_therapist_fte_amt}, ${glm_property_fte_f_ly.message_therapist_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: night_attendant_fte_amt_toly {
    label: "FTE Night Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.night_attendant_fte_amt}, ${glm_property_fte_f_ly.night_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: night_audit_fte_amt_toly {
    label: "FTE Night Audit TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.night_audit_fte_amt}, ${glm_property_fte_f_ly.night_audit_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: public_area_attendant_fte_amt_toly {
    label: "FTE Public Area TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.public_area_attendant_fte_amt}, ${glm_property_fte_f_ly.public_area_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: receptionist_fte_amt_toly {
    label: "FTE Receptionist TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.receptionist_fte_amt}, ${glm_property_fte_f_ly.receptionist_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: reservations_fte_amt_toly {
    label: "FTE Reservations TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.reservations_fte_amt}, ${glm_property_fte_f_ly.reservations_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: room_attendant_fte_amt_toly {
    label: "FTE Room Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.room_attendant_fte_amt}, ${glm_property_fte_f_ly.room_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: runner_fte_amt_toly {
    label: "FTE Runner TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.runner_fte_amt}, ${glm_property_fte_f_ly.runner_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_clerk_fte_amt_toly {
    label: "FTE Sales Clerk TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.sales_clerk_fte_amt}, ${glm_property_fte_f_ly.sales_clerk_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: sales_manager_fte_amt_toly {
    label: "FTE Sales Mngr TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.sales_manager_fte_amt}, ${glm_property_fte_f_ly.sales_manager_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: salon_attendant_fte_amt_toly {
    label: "FTE Salon Att. TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.salon_attendant_fte_amt}, ${glm_property_fte_f_ly.salon_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: security_fte_amt_toly {
    label: "FTE Security TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.security_fte_amt}, ${glm_property_fte_f_ly.security_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: server_fte_amt_toly {
    label: "FTE Server TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.server_fte_amt}, ${glm_property_fte_f_ly.server_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: steward_fte_amt_toly {
    label: "FTE Steward TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.steward_fte_amt}, ${glm_property_fte_f_ly.steward_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: store_room_attendant_fte_amt_toly {
    label: "FTE Store Room TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.store_room_attendant_fte_amt}, ${glm_property_fte_f_ly.store_room_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: turn_down_attendant_fte_amt_toly {
    label: "FTE Turn Down TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.turn_down_attendant_fte_amt}, ${glm_property_fte_f_ly.turn_down_attendant_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: linen_fte_amt_toly {
    label: "FTE Linen TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.linen_fte_amt}, ${glm_property_fte_f_ly.linen_fte_amt}) ;;
    value_format_name: percent_1
  }

  measure: valet_fte_amt_toly {
    label: "FTE Valet TY:LY - var %"
    description: "TY - LY / LY"
    type: number
    sql:  utl..udf_percent_var( ${glm_property_fte_f_ty.valet_fte_amt}, ${glm_property_fte_f_ly.valet_fte_amt}) ;;
    value_format_name: percent_1
  }

}
