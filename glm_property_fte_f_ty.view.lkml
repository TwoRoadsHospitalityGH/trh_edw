view: glm_property_fte_f_ty {
  derived_table: {
    sql: select 1 as key_no ;;
  }

  dimension: key_no {
    primary_key: yes
    type: number
    sql: ${TABLE}.key_no ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Keys
  #-------------------------------------------------------------------------------------------

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
  #-- Dimensions
  #-------------------------------------------------------------------------------------------

  dimension: measure_bt {
    sql: ${glm_property_fte_f.fcst_bt} ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  #-- Hours

  measure: hour_sp {
    label: "Hrs  :"
    description: "Blank space separator."
    type: string
    sql: '-----' ;;
  }

  measure: hour_amt {
    label: "Hrs "
    description: "Hours Amount Total. Segment 3: 9600-9815"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_fte_f.hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: room_hour_amt {
    label: "Hrs Rms "
    description: "Room Hours (Includes Hskpng, Res, FO, Bell, Guest Srvc. Segment 2: 400-499, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.room_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: rbe_hour_amt {
    label: "Hrs RB&E "
    description: "RB&E Hours. Segment 2: 500-599, Segment 3: 9600-9815."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_fte_f.rbe_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: rbe_banquet_hour_amt {
    label: "Hrs RB&E Banquet "
    description: "RB&E Hours Banquet. Segment 2: 510-515, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.rbe_banquet_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: rbe_catering_hour_amt {
    label: "Hrs RB&E Catering "
    description: "RB&E Hours Catering. Segment 2: 516-518. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.rbe_catering_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: rbe_outlet_hour_amt {
    label: "Hrs RB&E Outlet "
    description: "RB&E Outlet Hours. Segment 2: 530-549. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.rbe_outlet_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: rbe_conference_services_hour_amt {
    label: "Hrs RB&E Conference Services "
    description: "RB&E Conference Hours. Segment 2: 590-599. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.rbe_conference_services_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: rbe_restaurant_hour_amt {
    label: "Hrs RB&E Restaurant "
    description: "RB&E Restaurant Hours. Segment 2: 540-549. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.rbe_restaurant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: rbe_lounge_hour_amt {
    label: "Hrs RB&E Lounge "
    description: "RB&E Lounge Hours. Segment 2: 530-539. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.rbe_lounge_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: rbe_other_hour_amt {
    label: "Hrs RB&E Other "
    description: "Admin Hours + Kitchen Hours + Cart Hours + Minibar Hours + Room Service Hours. Segment 2: 500, 550-589, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.rbe_other_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: spa_hour_amt {
    label: "Hrs Spa "
    description: "Spa Hours. Segment 2: 666, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.spa_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: golf_hour_amt {
    label: "Hrs Golf "
    description: "Golf Hours. Segment 2: 610-635. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.golf_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: fitness_recreation_hour_amt {
    label: "Hrs Fitness & Rec "
    description: "Fitness & Recreation Hours. Segment 2: 650-664, 668-674, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.fitness_recreation_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: retail_hour_amt {
    label: "Hrs Retail "
    description: "Retail Hours. Segment 2: 750-769, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.retail_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: other_operated_hour_amt {
    label: "Hrs Other Op. Dept. "
    description: "Parking & Trans Hours + Dry Cleaning Hours + Telecomm Hours. Segment 2: 710-721, 735-740, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.other_operated_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: property_mgmt_hour_amt {
    label: "Hrs Mgmt Srvcs "
    description: "Property Management Hours. Segment 2: 770-789, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.property_mgmt_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: misc_hour_amt {
    label: "Hrs Rentals & Other "
    description: "Misc Hours. Segment 2: 790-799, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.misc_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: nonoperating_realty_hour_amt {
    label: "Hrs Nonoperating Realty "
    description: "Nonoperating Realty Hours. Segment 2: 681-685, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.nonoperating_realty_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: nonoperating_airport_hour_amt {
    label: "Hrs Nonoperating Airport "
    description: "Nonoperating Airport Hours. Segment 2: 680, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.nonoperating_airport_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: nonoperating_util_hour_amt {
    label: "Hrs Nonoperating Utility "
    description: "Nonoperating Utility Hours. Segment 2: 689-699, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.nonoperating_util_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: undistributed_hour_amt {
    label: "Hrs Undistributed "
    description: "Undistributed Hours. Segment 2: 800-876, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.undistributed_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: allocated_hour_amt {
    label: "Hrs Allocated "
    description: "Allocated Dept Hours. Segment 2: 920-999, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.allocated_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: acct_hour_amt {
    label: "Hrs Accounting"
    description: "Accounting Position Hours. Segment 3: 9600."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.acct_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: admin_hour_amt {
    label: "Hrs Admin"
    description: "Admin Position Hours. Segment 3: 9605."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.admin_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: attendant_hour_amt {
    label: "Hrs Attendants"
    description: "Attendants Position Hours. Segment 3: 9610."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: bar_attendant_hour_amt {
    label: "Hrs Bar Att."
    description: "Bar Att. Position Hours. Segment 3: 9615."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.bar_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: bell_service_hour_amt {
    label: "Hrs Bell Srvc"
    description: "Bell Srvc Position Hours. Segment 3: 9620."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.bell_service_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: bus_attendant_hour_amt {
    label: "Hrs Bus Att."
    description: "Bus Attendants Position Hours. Segment 3: 9625."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.bus_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: captain_hour_amt {
    label: "Hrs Captain"
    description: "Captain Position Hours. Segment 3: 9630."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.captain_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: meter_hour_amt {
    label: "Hrs Meter Instll"
    description: "Meter Instll Position Hours. Segment 3: 9634."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.meter_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: cashier_hour_amt {
    label: "Hrs Cashier"
    description: "Cashier Position Hours. Segment 3: 9635."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.cashier_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: concierge_hour_amt {
    label: "Hrs Concierge"
    description: "Concierge Position Hours. Segment 3: 9645."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.concierge_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: conference_services_hour_amt {
    label: "Hrs Conference Srvcs"
    description: "Conference Srvcs Position Hours. Segment 3: 9650."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.conference_services_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: door_attendant_hour_amt {
    label: "Hrs Door Att."
    description: "Door Att. Position Hours. Segment 3: 9655."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.door_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: driver_hour_amt {
    label: "Hrs Driver"
    description: "Driver Position Hours. Segment 3: 9660."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.driver_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: supervisor_hour_amt {
    label: "Hrs Supervisor"
    description: "Supervisor Position Hours. Segment 3: 9665."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.supervisor_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: food_prep_hour_amt {
    label: "Hrs Food Prep"
    description: "Food Prep Position Hours. Segment 3: 9670."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.food_prep_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: front_desk_hour_amt {
    label: "Hrs Front Desk"
    description: "Front Desk Position Hours. Segment 3: 9675."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.front_desk_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: grounds_hour_amt {
    label: "Hrs Grounds"
    description: "Grounds Position Hours. Segment 3: 9680."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.grounds_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: guest_services_hour_amt {
    label: "Hrs Guest Srvcs"
    description: "Guest Srvcs Position Hours. Segment 3: 9685."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.guest_services_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: house_attendant_hour_amt {
    label: "Hrs House Att."
    description: "House Att. Position Hours. Segment 3: 9690."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.house_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: hr_hour_amt {
    label: "Hrs HR"
    description: "HR Position Hours. Segment 3: 9695."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.hr_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: info_sys_hour_amt {
    label: "Hrs Info Sys"
    description: "Info Sys Position Hours. Segment 3: 9700."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.info_sys_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: locker_attendant_hour_amt {
    label: "Hrs Locker Att."
    description: "Locker Att. Position Hours. Segment 3: 9705."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.locker_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: maintenance_hour_amt {
    label: "Hrs Maintenance"
    description: "Maintenance Position Hours. Segment 3: 9710."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.maintenance_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: mgmt_hour_amt {
    label: "Hrs Mgmt "
    description: "Mgmt Position Hours. Segment 3: 9715."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.mgmt_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: message_therapist_hour_amt {
    label: "Hrs Message Ther."
    description: "Message Ther. Position Hours. Segment 3: 9720."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.message_therapist_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: night_attendant_hour_amt {
    label: "Hrs Night Att."
    description: "Night Att. Position Hours. Segment 3: 9725."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.night_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: night_audit_hour_amt {
    label: "Hrs Night Audit"
    description: "Night Audit Position Hours. Segment 3: 9730."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.night_audit_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: public_area_attendant_hour_amt {
    label: "Hrs Public Area"
    description: "Public Area Position Hours. Segment 3: 9740."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.public_area_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: receptionist_hour_amt {
    label: "Hrs Receptionist"
    description: "Receptionist Position Hours. Segment 3: 9745."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.receptionist_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: reservations_hour_amt {
    label: "Hrs Reservations"
    description: "Reservations Position Hours. Segment 3: 9750."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.reservations_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: room_attendant_hour_amt {
    label: "Hrs Room Att."
    description: "Room Att. Position Hours. Segment 3: 9755."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.room_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: runner_hour_amt {
    label: "Hrs Runner"
    description: "Runner Position Hours. Segment 3: 9760."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.runner_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: sales_clerk_hour_amt {
    label: "Hrs Sales Clerk"
    description: "Sales Clerk Position Hours. Segment 3: 9765."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.sales_clerk_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: sales_manager_hour_amt {
    label: "Hrs Sales Mngr"
    description: "Sales Mngr Position Hours. Segment 3: 9770."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.sales_manager_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: salon_attendant_hour_amt {
    label: "Hrs Salon Att."
    description: "Salon Att. Position Hours. Segment 3: 9775."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.salon_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: security_hour_amt {
    label: "Hrs Security"
    description: "Security Position Hours. Segment 3: 9780."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.security_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: server_hour_amt {
    label: "Hrs Server"
    description: "Server Position Hours. Segment 3: 9785."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.server_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: steward_hour_amt {
    label: "Hrs Steward"
    description: "Steward Position Hours. Segment 3: 9795."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.steward_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: store_room_attendant_hour_amt {
    label: "Hrs Store Room"
    description: "Store Room Position Hours. Segment 3: 9800."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.store_room_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: turn_down_attendant_hour_amt {
    label: "Hrs Turn Down"
    description: "Turn Down Position Hours. Segment 3: 9805."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.turn_down_attendant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: linen_hour_amt {
    label: "Hrs Linen"
    description: "Linen Position Hours. Segment 3: 9810."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.linen_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  measure: valet_hour_amt {
    label: "Hrs Valet"
    description: "Valet Position Hours. Segment 3: 9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_fte_f.valet_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_1
  }

  #-- FTE (full-time equivalents)

  measure: fte_sp {
    label: "FTE  :"
    description: "Blank space separator."
    type: string
    sql: '-----' ;;
  }

  measure: fte_multiplier {
    label: "FTE Multiplier"
    description: "Months in Period * 365/12 * 2080/365"
    type: number
    sql:   1 / (( ${date_dm.months} * 1/12 * 365 ) * (( 8 * 5 * 52 ) / 365 ) ) ;;
    hidden:  yes
  }

  measure: fte_amt {
    label: "FTE"
    description: "Hrs Total / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: room_fte_amt {
    label: "FTE Rms "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${room_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: rbe_fte_amt {
    label: "FTE RB&E "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: rbe_banquet_fte_amt {
    label: "FTE RB&E Banquet "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_banquet_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: rbe_catering_fte_amt {
    label: "FTE RB&E Catering "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_catering_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: rbe_outlet_fte_amt {
    label: "FTE RB&E Outlet "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_outlet_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: rbe_conference_services_fte_amt {
    label: "FTE RB&E Conference Services "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_conference_services_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: rbe_restaurant_fte_amt {
    label: "FTE RB&E Restaurant "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_restaurant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: rbe_lounge_fte_amt {
    label: "FTE RB&E Lounge "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_lounge_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: rbe_other_fte_amt {
    label: "FTE RB&E Other "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_other_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: spa_fte_amt {
    label: "FTE Spa "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${spa_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: golf_fte_amt {
    label: "FTE Golf "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${golf_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: fitness_recreation_fte_amt {
    label: "FTE Fitness & Rec "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${fitness_recreation_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: retail_fte_amt {
    label: "FTE Retail "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${retail_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: other_operated_fte_amt {
    label: "FTE Other Op. Dept. "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${other_operated_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: property_mgmt_fte_amt {
    label: "FTE Mgmt Srvcs "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${property_mgmt_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: misc_fte_amt {
    label: "FTE Rentals & Other "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${misc_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: nonoperating_realty_fte_amt {
    label: "FTE Nonoperating Realty "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${nonoperating_realty_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: nonoperating_airport_fte_amt {
    label: "FTE Nonoperating Airport "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${nonoperating_airport_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: nonoperating_util_fte_amt {
    label: "FTE Nonoperating Utility "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${nonoperating_util_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: undistributed_fte_amt {
    label: "FTE Undistributed "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${undistributed_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: allocated_fte_amt {
    label: "FTE Allocated "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${allocated_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }






  measure: acct_fte_amt {
    label: "FTE Accounting"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${acct_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: admin_fte_amt {
    label: "FTE Admin"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${admin_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: attendant_fte_amt {
    label: "FTE Attendants"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: bar_attendant_fte_amt {
    label: "FTE Bar Att."
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${bar_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: bell_service_fte_amt {
    label: "FTE Bell Srvc"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${bell_service_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: bus_attendant_fte_amt {
    label: "FTE Bus Att."
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${bus_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: captain_fte_amt {
    label: "FTE Captain"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${captain_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: meter_fte_amt {
    label: "FTE Meter Instll"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${meter_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: cashier_fte_amt {
    label: "FTE Cashier"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${cashier_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: concierge_fte_amt {
    label: "FTE Concierge"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${concierge_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: conference_services_fte_amt {
    label: "FTE Conference Srvcs"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${conference_services_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: door_attendant_fte_amt {
    label: "FTE Door Att."
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${door_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: driver_fte_amt {
    label: "FTE Driver"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${driver_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: supervisor_fte_amt {
    label: "FTE Supervisor"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${supervisor_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: food_prep_fte_amt {
    label: "FTE Food Prep"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${food_prep_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: front_desk_fte_amt {
    label: "FTE Front Desk"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${front_desk_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: grounds_fte_amt {
    label: "FTE Grounds"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${grounds_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: guest_services_fte_amt {
    label: "FTE Guest Srvcs"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${guest_services_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: house_attendant_fte_amt {
    label: "FTE House Att."
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${house_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: hr_fte_amt {
    label: "FTE HR"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${hr_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: info_sys_fte_amt {
    label: "FTE Info Sys"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${info_sys_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: locker_attendant_fte_amt {
    label: "FTE Locker Att."
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${locker_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: maintenance_fte_amt {
    label: "FTE Maintenance"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${maintenance_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: mgmt_fte_amt {
    label: "FTE Mgmt"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${mgmt_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: message_therapist_fte_amt {
    label: "FTE Message Ther."
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${message_therapist_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: night_attendant_fte_amt {
    label: "FTE Night Att."
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${night_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: night_audit_fte_amt {
    label: "FTE Night Audit"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${night_audit_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: public_area_attendant_fte_amt {
    label: "FTE Public Area"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${public_area_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: receptionist_fte_amt {
    label: "FTE Receptionist"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${receptionist_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: reservations_fte_amt {
    label: "FTE Reservations"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${reservations_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: room_attendant_fte_amt {
    label: "FTE Room Att."
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${room_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: runner_fte_amt {
    label: "FTE Runner"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${runner_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: sales_clerk_fte_amt {
    label: "FTE Sales Clerk"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${sales_clerk_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: sales_manager_fte_amt {
    label: "FTE Sales Mngr"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${sales_manager_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: salon_attendant_fte_amt {
    label: "FTE Salon Att."
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${salon_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: security_fte_amt {
    label: "FTE Security"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${security_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: server_fte_amt {
    label: "FTE Server"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${server_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: steward_fte_amt {
    label: "FTE Steward"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${steward_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: store_room_attendant_fte_amt {
    label: "FTE Store Room"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${store_room_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: turn_down_attendant_fte_amt {
    label: "FTE Turn Down"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${turn_down_attendant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: linen_fte_amt {
    label: "FTE Linen"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${linen_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

  measure: valet_fte_amt {
    label: "FTE Valet"
    description: "Hrs for Dept /  Months in Period * 365/12 * 2080/365 "
    type: number
    sql: ${valet_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_1
  }

}
