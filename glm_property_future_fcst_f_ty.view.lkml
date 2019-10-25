view: glm_property_future_fcst_f_ty {
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
    sql: ${glm_property_future_fcst_f.fcst_bt} ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  measure: rev_sp {
    label: "Rev  :"
    description: "Blank space separator."
    type: string
    sql: '-----' ;;
  }

  measure: rev_amt {
    label: "Rev $"
    description: "Revenue Amount. Segment 3: 4000-4999"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: agop_amt {
    label: "AGOP $"
    description: "Adjusted AGOP (GOP - Owners Rental Share - Owners Exp + Owner Inc). Segment 2: 400-876, 905, 910-919."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.agop_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: gop_amt {
    label: "GOP $"
    description: "Gross Operating Profit (Dept Rev - Dept Exp - Undistributed Exp). Segment 2: 400-876."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.gop_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_rev_amt {
    label: "Rev Rms $"
    description: "Room Revenue. Segment 2: 400-499, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_rev_amt {
    label: "Rev Other $"
    description: "Rev $ - Rev Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_rev_amt {
    label: "Rev RB&E $"
    description: "RB&E Revenue. Segment 2: 500-599, Segment 3: 4000-4999."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_rev_amt {
    label: "Rev RB&E Banquet $"
    description: "RB&E Revenue Banquet. Segment 2: 510-515, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_banquet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_rev_amt {
    label: "Rev RB&E Catering $"
    description: "RB&E Revenue Catering. Segment 2: 516-518. Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_catering_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_rev_amt {
    label: "Rev RB&E Outlet $"
    description: "RB&E Outlet Revenue. Segment 2: 530-549. Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_outlet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_conference_services_rev_amt {
    label: "Rev RB&E Conference Services $"
    description: "RB&E Conference Revenue. Segment 2: 590-599. Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_conference_services_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_room_service_rev_amt {
    label: "Rev RB&E Room Service $"
    description: "RB&E Room Service Revenue. Segment 2: 550-559. Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_room_service_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_rev_amt {
    label: "Rev RB&E Other $"
    description: "Admin Revenue + Kitchen Revenue + Cart Revenue + Minibar Revenue + Room Service Revenue. Segment 2: 500, 550-589, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_other_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_rev_amt {
    label: "Rev Food RB&E $"
    description: "RB&E Food Revenue. Segment 2: 500-599, Segment 3: 4100-4130."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.food_rbe_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_banquet_rev_amt {
    label: "Rev Food RB&E Banquet $"
    description: "RB&E Food Banquet Revenue. Segment 2: 510-515, Segment 3: 4100-4130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.food_rbe_banquet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_catering_rev_amt {
    label: "Rev Food RB&E Catering $"
    description: "RB&E Food Catering Revenue. Segment 2: 516-518, Segment 3: 4100-4130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.food_rbe_catering_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_outlet_rev_amt {
    label: "Rev Food RB&E Outlet $"
    description: "RB&E Food Outlet Revenue. Segment 2: 530-549, Segment 3: 4100-4130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.food_rbe_outlet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_conference_services_rev_amt {
    label: "Rev Food RB&E Conference Services $"
    description: "RB&E Food Conference Revenue. Segment 2: 590-599, Segment 3: 4100-4130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.food_rbe_conference_services_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_room_service_rev_amt {
    label: "Rev Food RB&E Room Service $"
    description: "RB&E Food Room Service Revenue. Segment 2: 550-559, Segment 3: 4100-4130. "
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.food_rbe_room_service_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_other_rev_amt {
    label: "Rev Food RB&E Other $"
    description: "Food Admin Revenue + Food Kitchen Revenue + Food Cart Revenue + Food Minibar Revenue + Food Room Service. Segment 2: 500, 550-589, Segment 3: 4100-4130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.food_rbe_other_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_rev_amt {
    label: "Rev Beverage RB&E $"
    description: "RB&E Beverage Revenue. Segment 2: 500-599, Segment 3: 4150-4170."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.beverage_rbe_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_banquet_rev_amt {
    label: "Rev Beverage RB&E Banquet $"
    description: "RB&E Beverage Banquet Revenue. Segment 2: 510-515, Segment 3: 4150-4170."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.beverage_rbe_banquet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_catering_rev_amt {
    label: "Rev Beverage RB&E Catering $"
    description: "RB&E Beverage Catering Revenue. Segment 2: 516-518, Segment 3: 4150-4170."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.beverage_rbe_catering_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_outlet_rev_amt {
    label: "Rev Beverage RB&E Outlet $"
    description: "RB&E Beverage Outlet Revenue. Segment 2: 530-549, Segment 3: 4150-4170."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.beverage_rbe_outlet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_conference_services_rev_amt {
    label: "Rev Beverage RB&E Conference Services $"
    description: "RB&E Beverage Conference Revenue. Segment 2: 590-599, Segment 3: 4150-4170."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.beverage_rbe_conference_services_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_room_service_rev_amt {
    label: "Rev Beverage RB&E Room Service $"
    description: "RB&E Beverage Room Service Revenue. Segment 2: 550-559, Segment 3: 4150-4170."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.beverage_rbe_room_service_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_other_rev_amt {
    label: "Rev Beverage RB&E Other $"
    description: "Bev Admin Revenue + Bev Kitchen Revenue + Bev Cart Revenue + Bev Minibar Revenue + Bev Room Service Revenue. Segment 2: 500, 550-589, Segment 3: 4150-4170."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.beverage_rbe_other_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_rev_amt {
    label: "Rev Spa $"
    description: "Spa Revenue. Segment 2: 666, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.spa_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_rev_amt {
    label: "Rev Golf $"
    description: "Golf Revenue. Segment 2: 610-635. Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.golf_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_rev_amt {
    label: "Rev Fitness & Rec $"
    description: "Fitness & Recreation Revenue. Segment 2: 650-664, 668-674, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.fitness_recreation_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_rev_amt {
    label: "Rev Parking & Trans $"
    description: "Parking & Transportation Revenue. Segment 2: 720, 740, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.parking_transportation_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_rev_amt {
    label: "Rev Telecom $"
    description: "Telecommunications Revenue. Segment 2: 735, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.telecom_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_rev_amt {
    label: "Rev Retail $"
    description: "Retail Revenue. Segment 2: 750-769, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.retail_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_rev_amt {
    label: "Rev Other Op. Dept. $"
    description: "Parking & Trans Revenue + Dry Cleaning Revenue + Telecomm Revenue. Segment 2: 710-721, 735-740, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_operated_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_rev_amt {
    label: "Rev Mgmt Srvcs $"
    description: "Property Management Revenue. Segment 2: 770-789, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_mgmt_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_rev_amt {
    label: "Rev Rentals & Other $"
    description: "Misc Revenue. Segment 2: 790-799, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.misc_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_rev_amt {
    label: "Rev Nonoperating Realty $"
    description: "Nonoperating Realty Revenue. Segment 2: 681-685, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_realty_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_rev_amt {
    label: "Rev Nonoperating Airport $"
    description: "Nonoperating Airport Revenue. Segment 2: 680, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_airport_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_rev_amt {
    label: "Rev Nonoperating Utility $"
    description: "Nonoperating Utility Revenue. Segment 2: 689-699, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_util_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: undistributed_rev_amt {
    label: "Rev Undistributed $"
    description: "Undistributed Revenue. Segment 2: 800-876, Segment 3: 4000-4999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.undistributed_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Expenses

  measure: exp_amt {
    label: "Exp $"
    description: "Expenses Amount. Segment 2: 400-799, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_exp_amt {
    label: "Exp Rms $"
    description: "Room Expenses. Segment 2: 400-499, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.room_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_exp_amt {
    label: "Exp RB&E $"
    description: "RB&E Expenses. Segment 2: 500-599, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_exp_amt {
    label: "Exp Spa $"
    description: "Spa Expenses. Segment 2: 666, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.spa_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_exp_amt {
    label: "Exp Golf $"
    description: "Golf Expenses. Segment 2: 610-635, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.golf_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_exp_amt {
    label: "Exp Fitness & Rec $"
    description: "Fitness & Recreation Expenses. Segment 2: 650-664, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.fitness_recreation_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_exp_amt {
    label: "Exp Parking & Trans $"
    description: "Parking & Transportation Expenses. Segment 2: 720, 740, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.parking_transportation_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_exp_amt {
    label: "Exp Telecom $"
    description: "Telecommunications Expenses. Segment 2: 735, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.telecom_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_exp_amt {
    label: "Exp Retail $"
    description: "Retail Expenses. Segment 2: 750-769, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.retail_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_exp_amt {
    label: "Exp Other Op. Dept. $"
    description: "Parking & Trans Expenses + Dry Cleaning Expenses + Telecomm Expenses. Segment 2: 710-721, 735-740, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_operated_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_exp_amt {
    label: "Exp Mgmt Srvcs $"
    description: "Management Services Expenses. Segment 2: 770-789, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_mgmt_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: administrative_general_exp_amt {
    label: "Exp A&G $"
    description: "Admin & General Expenses. Segment 2: 800-814, 816-824, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.administrative_general_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: information_technology_exp_amt {
    label: "Exp IT $"
    description: "Information Technology Expenses. Segment 2: 815, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.information_technology_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: sales_marketing_exp_amt {
    label: "Exp S&M $"
    description: "Sales & Marketing Expenses. Segment 2: 825-849, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.sales_marketing_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_operations_maintenance_exp_amt {
    label: "Exp R&M $"
    description: "Property Operations & Maintenance Expenses. Segment 2: 850-874, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_operations_maintenance_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_exp_amt {
    label: "Exp Rentals & Other $"
    description: "Misc Expenses. Segment 2: 790-799, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.misc_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_exp_amt {
    label: "Exp Nonoperating Realty $"
    description: "Nonoperating Realty Expenses. Segment 2: 681-685, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_realty_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_exp_amt {
    label: "Exp Nonoperating Airport $"
    description: "Nonoperating Airport Expenses. Segment 2: 680, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_airport_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_exp_amt {
    label: "Exp Nonoperating Utility $"
    description: "Nonoperating Utility Expenses. Segment 2: 689-699, Segment 3: 5000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_util_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Other Expenses

  measure: other_exp_amt {
    label: "Exp Other $"
    description: "Other Expenses. Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_other_exp_amt {
    label: "Exp Other Rms $"
    description: "Other Room Expenses. Segment 2: 400-499, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.room_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_exp_amt {
    label: "Exp Other RB&E $"
    description: "Other RB&E Expenses. Segment 2: 500-599, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_other_exp_amt {
    label: "Exp Other Spa $"
    description: "Other Spa Expenses. Segment 2: 666, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.spa_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_other_exp_amt {
    label: "Exp Other Golf $"
    description: "Other Golf Expenses. Segment 2: 610-635, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.golf_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_other_exp_amt {
    label: "Exp Other Fitness & Rec $"
    description: "Other Fitness & Rec Expenses. Segment 2: 650-664, 668-674, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.fitness_recreation_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_other_exp_amt {
    label: "Exp Other Parking & Trans $"
    description: "Other Parking & Trans Expenses. Segment 2: 720, 740, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.parking_transportation_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_other_exp_amt {
    label: "Exp Other Telecom $"
    description: "Other Telecom Expenses. Segment 2: 735, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.telecom_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_other_exp_amt {
    label: "Exp Other Retail $"
    description: "Other Retail Expenses. Segment 2: 750-769, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.retail_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_other_exp_amt {
    label: "Exp Other - Other Op. Dept. $"
    description: "Other Parking & Trans Expenses + Other Dry Cleaning Expenses + Other Telecom Expenses.. Segment 2: 710-721, 735-740, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_operated_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_other_exp_amt {
    label: "Exp Other Mgmt Srvcs $"
    description: "Other Management Services Expenses. Segment 2: 770-789, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_mgmt_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: administrative_general_other_exp_amt {
    label: "Exp Other A&G $"
    description: "Other Admin & General Expenses. Segment 2: 800-814, 816-824, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.administrative_general_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: information_technology_other_exp_amt {
    label: "Exp Other IT $"
    description: "Other Info Tech Expenses. Segment 2: 815, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.information_technology_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: sales_marketing_other_exp_amt {
    label: "Exp Other S&M $"
    description: "Other Sales & Marketing Expenses. Segment 2: 825-849, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.sales_marketing_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_operations_maintenance_other_exp_amt {
    label: "Exp Other R&M $"
    description: "Other Property Ops & Maintenance Expenses. Segment 2: 850-874, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_operations_maintenance_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_other_exp_amt {
    label: "Exp Other Rentals & Other $"
    description: "Other Misc Expenses. Segment 2: 790-799, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.misc_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_other_exp_amt {
    label: "Exp Other Nonoperating Realty $"
    description: "Other Nonoperating Realty Expenses. Segment 2: 681-685, 725, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_realty_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_other_exp_amt {
    label: "Exp Other Nonoperating Airport $"
    description: "Other Nonoperating Airport Expenses. Segment 2: 680, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_airport_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_other_exp_amt {
    label: "Exp Other Nonoperating Utility $"
    description: "Other Nonoperating Utility Expenses. Segment 2: 689-699, Segment 3: 7000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_util_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Other Expenses Rev Pct (Out of Dept Revenue)

  measure: room_other_exp_rev_pct {
    label: "Exp /Rev Other Rms %"
    description: "Exp Other Rms $ / Rev Rms $"
    type: number
    sql: utl..udf_divide( ${room_other_exp_amt}, ${room_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_rev_pct {
    label: "Exp /Rev Other RB&E %"
    description: "Exp Other RB&E $ / Rev RB&E $"
    type: number
    sql: utl..udf_divide( ${rbe_other_exp_amt}, ${rbe_rev_amt} );;
    value_format_name: percent_1
  }

  measure: spa_other_exp_rev_pct {
    label: "Exp /Rev Other Spa %"
    description: "Exp Other Spa $ / Rev Spa $"
    type: number
    sql: utl..udf_divide( ${spa_other_exp_amt}, ${spa_rev_amt} );;
    value_format_name: percent_1
  }

  measure: golf_other_exp_rev_pct {
    label: "Exp /Rev Other Golf %"
    description: "Exp Other Golf $ / Rev Golf $"
    type: number
    sql: utl..udf_divide( ${golf_other_exp_amt}, ${golf_rev_amt} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_rev_pct {
    label: "Exp /Rev Other Fitness & Rec %"
    description: "Exp Other Fitness & Rec $ / Rev Fitness & Rec $"
    type: number
    sql: utl..udf_divide( ${fitness_recreation_other_exp_amt}, ${fitness_recreation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_rev_pct {
    label: "Exp /Rev Other Parking & Trans %"
    description: "Exp Other Parking & Trans $ / Rev Parking & Trans $"
    type: number
    sql: utl..udf_divide( ${parking_transportation_other_exp_amt}, ${parking_transportation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_rev_pct {
    label: "Exp /Rev Other Telecom %"
    description: "Exp Other Telecom $ / Rev Telecom $"
    type: number
    sql: utl..udf_divide( ${telecom_other_exp_amt}, ${telecom_rev_amt} );;
    value_format_name: percent_1
  }

  measure: retail_other_exp_rev_pct {
    label: "Exp /Rev Other Retail %"
    description: "Exp Other Retail $ / Rev Retail $"
    type: number
    sql: utl..udf_divide( ${retail_other_exp_amt}, ${retail_rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_rev_pct {
    label: "Exp /Rev Other - Other Op. Dept. %"
    description: "Exp Other Op. Dept $ / Rev Other Op. Dept $"
    type: number
    sql: utl..udf_divide( ${other_operated_other_exp_amt}, ${other_operated_rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_rev_pct {
    label: "Exp /Rev Other Mgmt Srvcs %"
    description: "Exp Other Mgmt Srvcs $ / Rev Mgmt Srvcs $"
    type: number
    sql: utl..udf_divide( ${property_mgmt_other_exp_amt}, ${property_mgmt_rev_amt} );;
    value_format_name: percent_1
  }

  #-- Other Expenses Rev Pct (Out of Total Revenue)

  measure: other_exp_ttl_rev_pct {
    label: "Exp /TRev Other %"
    description: "Exp Other $ / Rev $"
    type: number
    sql: utl..udf_divide( ${other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: room_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Rms %"
    description: "Exp Other Rms $ / Rev $"
    type: number
    sql: utl..udf_divide( ${room_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other RB&E %"
    description: "Exp Other RB&E $ / Rev $"
    type: number
    sql: utl..udf_divide( ${rbe_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: spa_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Spa %"
    description: "Exp Other Spa $ / Rev $"
    type: number
    sql: utl..udf_divide( ${spa_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: golf_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Golf %"
    description: "Exp Other Golf $ / Rev $"
    type: number
    sql: utl..udf_divide( ${golf_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Fitness & Rec %"
    description: "Exp Other Fitness & Rec $ / Rev $"
    type: number
    sql: utl..udf_divide( ${fitness_recreation_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Parking & Trans %"
    description: "Exp Other Parking & Trans $ / Rev $"
    type: number
    sql: utl..udf_divide( ${parking_transportation_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Telecom %"
    description: "Exp Other Telecom $ / Rev $"
    type: number
    sql: utl..udf_divide( ${telecom_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: retail_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Retail %"
    description: "Exp Other Retail $ / Rev $"
    type: number
    sql: utl..udf_divide( ${retail_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other - Other Op. Dept. %"
    description: "Exp Other - Other Op. Dept. $ / Rev $"
    type: number
    sql: utl..udf_divide( ${other_operated_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Mgmt Srvcs %"
    description: "Exp Other Mgmt Srvcs $ / Rev $"
    type: number
    sql: utl..udf_divide( ${property_mgmt_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: administrative_general_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other A&G %"
    description: "Exp Other A&G $ / Rev $"
    type: number
    sql: utl..udf_divide( ${administrative_general_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: information_technology_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other IT %"
    description: "Exp Other IT $ / Rev $"
    type: number
    sql: utl..udf_divide( ${information_technology_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: sales_marketing_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other S&M %"
    description: "Exp Other S&M $ / Rev $"
    type: number
    sql: utl..udf_divide( ${sales_marketing_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other R&M %"
    description: "Exp Other R&M $ / Rev $"
    type: number
    sql: utl..udf_divide( ${property_operations_maintenance_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: misc_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Rentals & Other %"
    description: "Exp Other Misc $ / Rev $"
    type: number
    sql: utl..udf_divide( ${misc_other_exp_amt}, ${misc_rev_amt} );;
    value_format_name: percent_1
  }

  #-- Payroll

  measure: payroll_amt {
    label: "Payroll $"
    description: "Payroll Amount. Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_payroll_amt {
    label: "Payroll Rms $"
    description: "Rooms Payroll. Segment 2: 400-499, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.room_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_payroll_amt {
    label: "Payroll RB&E $"
    description: "RB&E Payroll. Segment 2: 500-599, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_payroll_amt {
    label: "Payroll Spa $"
    description: "Spa Payroll. Segment 2: 666, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.spa_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_payroll_amt {
    label: "Payroll Golf $"
    description: "Golf Payroll. 610-635, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.golf_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_payroll_amt {
    label: "Payroll Fitness & Rec $"
    description: "Fitness & Rec Payroll. Segment 2: 650-664, 668-674, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.fitness_recreation_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_payroll_amt {
    label: "Payroll Parking & Trans $"
    description: "Parking & Trans Payroll. Segment 2: 720, 740, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.parking_transportation_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_payroll_amt {
    label: "Payroll Telecom $"
    description: "Telecom Payroll. Segment 2: 735, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.telecom_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_payroll_amt {
    label: "Payroll Retail $"
    description: "Retail Payroll. Segment 2: 750-769, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.retail_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_payroll_amt {
    label: "Payroll Other Op. Dept. $"
    description: "Parking & Trans Payroll, Dry Cleaning Payroll, Telecom Payroll. Segment 2: 710-721, 735-740, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_operated_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_payroll_amt {
    label: "Payroll Mgmt Srvcs $"
    description: "Management Services Payroll. Segment 2: 770-789, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_mgmt_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: administrative_general_payroll_amt {
    label: "Payroll A&G $"
    description: "Admin & General Payroll. Segment 2: 800-814, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.administrative_general_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: information_technology_payroll_amt {
    label: "Payroll IT $"
    description: "Info Tech Payroll. Segment 2: 815, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.information_technology_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: sales_marketing_payroll_amt {
    label: "Payroll S&M $"
    description: "Sales & Marketing Payroll. Segment 2: 825-849, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.sales_marketing_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_operations_maintenance_payroll_amt {
    label: "Payroll R&M $"
    description: "Property Ops & Maintenance Payroll. Segment 2: 850-874, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_operations_maintenance_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_payroll_amt {
    label: "Payroll Rentals & Other $"
    description: "Rentals & Other Payroll. Segment 2: 790-799, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.misc_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_payroll_amt {
    label: "Payroll Nonoperating Realty $"
    description: "Nonoperating Realty Payroll. Segment 2: 681-685, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_realty_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_payroll_amt {
    label: "Payroll Nonoperating Airport $"
    description: "Nonoperating Airport Payroll. Segment 2: 680, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_airport_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_payroll_amt {
    label: "Payroll Nonoperating Utility $"
    description: "Nonoperating Utility Payroll. Segment 2: 689-699, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_util_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_payroll_amt {
    label: "Payroll RB&E Outlet $"
    description: "RB&E Outlet Payroll. Segment 2: 530-549, Segment 3: 6600-6999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_outlet_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }


  #-- Payroll Rev %

  measure: room_payroll_rev_pct {
    label: "Payroll /Rev Rms %"
    description: "Payroll Rms $ / Rev Rms $"
    type: number
    sql: utl..udf_divide( ${room_payroll_amt}, ${room_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_payroll_rev_pct {
    label: "Payroll /Rev RB&E %"
    description: "Payroll RB&E $ / Rev RB&E $"
    type: number
    sql: utl..udf_divide( ${rbe_payroll_amt}, ${rbe_rev_amt} );;
    value_format_name: percent_1
  }

  measure: spa_payroll_rev_pct {
    label: "Payroll /Rev Spa %"
    description: "Payroll Spa $ / Rev Spa $"
    type: number
    sql: utl..udf_divide( ${spa_payroll_amt}, ${spa_rev_amt} );;
    value_format_name: percent_1
  }

  measure: golf_payroll_rev_pct {
    label: "Payroll /Rev Golf %"
    description: "Payroll Golf $ / Rev Golf $"
    type: number
    sql: utl..udf_divide( ${golf_payroll_amt}, ${golf_rev_amt} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_rev_pct {
    label: "Payroll /Rev Fitness & Rec %"
    description: "Fitness & Rec Payroll $ / Rev Fitness & Rec $"
    type: number
    sql: utl..udf_divide( ${fitness_recreation_payroll_amt}, ${fitness_recreation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_rev_pct {
    label: "Payroll /Rev Parking & Trans %"
    description: "Payroll Parking & Trans $ / Rev Parking & Trans $"
    type: number
    sql: utl..udf_divide( ${parking_transportation_payroll_amt}, ${parking_transportation_rev_amt} );;
    value_format_name: usd_0
  }

  measure: telecom_payroll_rev_pct {
    label: "Payroll /Rev Telecom %"
    description: "Payroll Telecom $ / Rev Telecom $"
    type: number
    sql: utl..udf_divide( ${telecom_payroll_amt}, ${telecom_rev_amt} );;
    value_format_name: percent_1
  }

  measure: retail_payroll_rev_pct {
    label: "Payroll /Rev Retail %"
    description: "Payroll Retail $ / Rev Retail $"
    type: number
    sql: utl..udf_divide( ${retail_payroll_amt}, ${retail_rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_rev_pct {
    label: "Payroll /Rev Other Op. Dept. %"
    description: "Payroll Other Op. Dept. $ / Rev Other Op. dept. $"
    type: number
    sql: utl..udf_divide( ${other_operated_payroll_amt}, ${other_operated_rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_rev_pct {
    label: "Payroll /Rev Mgmt Srvcs %"
    description: "Payroll Mgmt Srvcs $ / Rev Mgmt Srvcs $"
    type: number
    sql: utl..udf_divide( ${property_mgmt_payroll_amt}, ${property_mgmt_rev_amt} );;
    value_format_name: percent_1
  }

  measure: misc_payroll_rev_pct {
    label: "Payroll /Rev Rentals & Other %"
    description: "Payroll Rentals & Other $ / Rev Rentals & Other $"
    type: number
    sql: utl..udf_divide( ${misc_payroll_amt}, ${misc_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_outlet_payroll_rev_pct {
    label: "Payroll /Rev RB&E Outlet %"
    description: "Payroll RB&E Outlet $ / Rev RB&E Outlet $"
    type: number
    sql: utl..udf_divide( ${rbe_outlet_payroll_amt}, ${rbe_outlet_rev_amt} );;
    value_format_name: percent_1
  }


  #-- Covers

  measure: rbe_cover_cnt {
    label: "Cvrs RB&E"
    description: "RB&E Covers. Segment 2: 500-599, Segment 3: 9100-9130."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_cover_cnt}, to_number( null ) ) ;;
  }

  measure: rbe_banquet_cover_cnt {
    label: "Cvrs RB&E Banquet "
    description: "RB&E Banquet Covers. Segment 2: 510-515, Segment 3: 9100-9130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_banquet_cover_cnt}, to_number( null ) ) ;;
  }

  measure: rbe_catering_cover_cnt {
    label: "Cvrs RB&E Catering "
    description: "RB&E Catering Covers. Segment 2: 516-518, Segment 3: 9100-9130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_catering_cover_cnt}, to_number( null ) ) ;;
  }

  measure: rbe_outlet_cover_cnt {
    label: "Cvrs RB&E Outlet "
    description: "RB&E Outlet Covers. Segment 2: 530-549, Segment 3: 9100-9130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_outlet_cover_cnt}, to_number( null ) ) ;;
  }

  measure: rbe_room_service_cover_cnt {
    label: "Cvrs RB&E Room Service "
    description: "RB&E Room Service Covers. Segment 2: 550-559, Segment 3: 9100-9130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_room_service_cover_cnt}, to_number( null ) ) ;;
  }

  measure: rbe_other_cover_cnt {
    label: "Cvrs RB&E Other "
    description: "Admin Covers + Kitchen Covers + Cart Covers + Minibar Covers + Room Service Covers. Segment 2: 500, 550-589, Segment 3: 9100-9130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_other_cover_cnt}, to_number( null ) ) ;;
  }

  #-- Treatments

  measure: spa_treatment_cnt {
    label: "Trtmnts Spa"
    description: "Spa Treatments. Segment 2: 666, Segment 3: 9210-9239."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.spa_treatment_cnt}, to_number( null ) ) ;;
  }

  measure: golf_round_cnt {
    label: "Rnds Golf"
    description: "Golf Rounds. Segment 2: 610-635, Segment 3: 9240-9299."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.golf_round_cnt}, to_number( null ) ) ;;
  }

  #-- Rooms

  measure: arrival_cnt {
    label: "Arrivals"
    description: "Arrival Count. Segment 2: 400-499, Segment 3: 9912."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.arrival_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_room_cnt {
    label: "Rms Occ   "
    description: "Occupied Rooms. Segment 2: 400-499, Segment 3: 9000-9075."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_transient_room_cnt {
    label: "Rms Occ Transient"
    description: "Occupied Rooms Transient. Segment 2: 400-499, Segment 3: 9000-9004, 9006-9049."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_transient_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_group_room_cnt {
    label: "Rms Occ Group"
    description: "Occupied Rooms Group. Segment 2: 400-499, Segment 3: 9050-9075."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_group_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_contract_room_cnt {
    label: "Rms Occ Contract"
    description: "Occupied Rooms Contract. Segment 2: 400-499, Segment 3: 9005."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_contract_room_cnt}, to_number( null ) ) ;;
  }

  measure: avail_room_cnt {
    label: "Rms Avail"
    description: "Available Rooms. Segment 2: 400-499, Segment 3: 9900."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.avail_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_owner_room_cnt {
    label: "Rms Occ Owner"
    description: "Occupied Rooms Owner. Segment 2: 400-499, Segment 3: 9008, 9910."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_owner_room_cnt}, to_number( null ) ) ;;
  }

  measure: comp_room_cnt {
    label: "Rms Occ Comp"
    description: "Occupied Rooms Comp. Segment 2: 400-499, Segment 3: 9906."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.comp_room_cnt}, to_number( null ) ) ;;
  }

  measure: net_avail_room_cnt {
    label: "Rms Avail Net"
    description: "Rms Avail - Rms Occ Owner"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.net_avail_room_cnt}, to_number( null ) ) ;;
  }

  #-- Group / Transient

  measure: transient_room_rev_amt {
    label: "Rev Rms Transient $"
    description: "Room Revenue Transient. Segment 2: 400-499, Segment 3: 4000-4004, 4006-4049."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.transient_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: group_room_rev_amt {
    label: "Rev Rms Group $"
    description: "Room Revenue Group. Segment 2: 400-499, Segment 3: 4050-4075."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.group_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: contract_room_rev_amt {
    label: "Rev Rms Contract $"
    description: "Room Revenue Contract. Segmet 2: 400-499, Segment 3: 4005."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.contract_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: no_show_room_rev_amt {
    label: "Rev Rms No Show $"
    description: "Room Revenue No Show. Segment 2: 400-499, Segment 3: 4475."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.no_show_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: service_charge_incl_room_rev_amt {
    label: "Rev Rms Srvc Charge $"
    description: "Room Revenue Service Charge. Segment 2: 400-499, Segment 3: 4545, Segment 4: 0000."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.service_charge_incl_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  # does not include no shows and does include service charges with seg4 0000
  measure: other_room_rev_amt {
    label: "Rev Rms Other $"
    description: "Used for STR submissions. Does not include: No Show, Service Charges."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Profit

  measure: profit_amt {
    label: "Profit $"
    description: "Profit Amount. Segment 2: 400-799, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_profit_amt {
    label: "Profit Rms $"
    description: "Rooms Profit. Segment 2: 400-499, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.room_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_profit_amt {
    label: "Profit RB&E $"
    description: "RB&E Profit. Segment 2: 510-515, Segment 3: 4000-8999."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_profit_amt {
    label: "Profit RB&E Banquet $"
    description: "RB&E Banquet Profit. Segment 2: 500-599, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_banquet_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_profit_amt {
    label: "Profit RB&E Catering $"
    description: "RB&E Catering Profit. Segment 2: 516-518, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_catering_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_profit_amt {
    label: "Profit RB&E Outlet $"
    description: "RB&E Outlet Profit. Segment 2: 530-549, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_outlet_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_conference_services_profit_amt {
    label: "Profit RB&E Conference Services $"
    description: "RB&E Conference Profit. Segment 2: 590-599, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_conference_services_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_room_service_profit_amt {
    label: "Profit RB&E Room Service $"
    description: "RB&E Room Service Profit. Segment 2: 550-559, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_room_service_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_profit_amt {
    label: "Profit RB&E Other $"
    description: "Admin Profit + Kitchen Profit + Cart Profit + Minibar Profit + Room Service Profit. Segment 2: 500, 550-589, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_other_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_profit_amt {
    label: "Profit Spa $"
    description: "Spa Profit. Segment 2: 666, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.spa_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_profit_amt {
    label: "Profit Golf $"
    description: "Golf Profit. Segment 2: 610-635, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.golf_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_profit_amt {
    label: "Profit Fitness & Rec $"
    description: "Fitnes & Rec Profit. Segment 2: 650-664, 668-674, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.fitness_recreation_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_profit_amt {
    label: "Profit Parking & Trans $"
    description: "Parking & Trans Profit. Segment 2: 666, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.parking_transportation_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_profit_amt {
    label: "Profit Telecom $"
    description: "Telecom Profit. Segment 2: 735, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.telecom_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_profit_amt {
    label: "Profit Retail $"
    description: "Retail Profit. Segment 2: 750-769, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.retail_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_profit_amt {
    label: "Profit Other Op. Dept. $"
    description: "Parking & Trans Profit + Dry Cleaning Profit + Telecom Profit. Segment 2: 710-721, 735-740, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_operated_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_profit_amt {
    label: "Profit Mgmt Srvcs $"
    description: "Management Services Profit. Segment 2: 770-789, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_mgmt_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_profit_amt {
    label: "Profit Rentals & Other $"
    description: "Misc Profit. Segment 2: 790-799, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.misc_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_profit_amt {
    label: "Profit Nonoperating Realty $"
    description: "Nonoperating Realty Profit. Segment 2: 681-685, 725, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_realty_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_profit_amt {
    label: "Profit Nonoperating Airport $"
    description: "Nonoperating Airport Profit. Segment 2: 680, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_airport_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_profit_amt {
    label: "Profit Nonoperating Utility $"
    description: "Nonoperating Utility Profit. Segment 2: 689-699, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_util_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: undistributed_profit_amt {
    label: "Profit Undistributed $"
    description: "Undistributed Profit. Segment 2: 800-876, Segment 3: 4000-8999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.undistributed_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Profit as % to rev

  measure: profit_rev_pct {
    label: "Profit /TRev %"
    description: "Profit $ / Rev $"
    type: number
    sql: utl..udf_divide( ${profit_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_profit_rev_pct {
    label: "Profit /Rev RB&E %"
    description: "Profit RB&E $ / Rev RB&E $"
    type: number
    sql: utl..udf_divide( ${rbe_profit_amt}, ${rbe_rev_amt} );;
    value_format_name: percent_1
  }

  #-- Cost

  measure: cost_of_sales_amt {
    label: "COS $"
    description: "Cost of Sales Amount. Segment 2: 400-799, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_cost_of_sales_amt {
    label: "COS Rms $"
    description: "Rooms COS. Segment 2: 400-499, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.room_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_cost_of_sales_amt {
    label: "COS RB&E $"
    description: "RB&E COS. Segment 2: 500-599, Segment 3: 5000-5999."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_cost_of_sales_amt {
    label: "COS Spa $"
    description: "Spa COS. Segment 2: 666, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.spa_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_cost_of_sales_amt {
    label: "COS Golf $"
    description: "Golf COS. Segment 2: 610-635, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.golf_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_cost_of_sales_amt {
    label: "COS Fitness & Rec $"
    description: "Fitness & Rec COS. Segment 2: 650-664, 668-674, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.fitness_recreation_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_cost_of_sales_amt {
    label: "COS Parking & Trans $"
    description: "Parking & Trans COS. Segment 2: 720, 740, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.parking_transportation_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_cost_of_sales_amt {
    label: "COS Telecom $"
    description: "Telecom COS. Segment 2: 735, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.telecom_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_cost_of_sales_amt {
    label: "COS Retail $"
    description: "Retail COS. Segment 2: 750-769, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.retail_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_cost_of_sales_amt {
    label: "COS Other Op. Dept. $"
    description: "Parking & Trans COS + Dry Cleaning COS + Telecom COS. Segment 2: 710-721, 735-740, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_operated_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_cost_of_sales_amt {
    label: "COS Mgmt Srvcs $"
    description: "Management Services COS. Segment 2: 770-789, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_mgmt_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_cost_of_sales_amt {
    label: "COS Rentals & Other $"
    description: "Misc COS. Segment 2: 790-799, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.misc_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_cost_of_sales_amt {
    label: "COS Nonoperating Realty $"
    description: "Nonoperating Realty COS. Segment 2: 681-685, 725, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_realty_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_cost_of_sales_amt {
    label: "COS Nonoperating Airport $"
    description: "Nonoperating Airport COS. Segment 2: 680, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_airport_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_cost_of_sales_amt {
    label: "COS Nonoperating Utility $"
    description: "Nonoperating Utility COS. Segment 2: 689-699, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_util_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_cost_of_sales_amt {
    label: "COS RB&E Food $"
    description: "RB&E Food COS. Segment 2: 500-599, Segment 3: 5100-5130."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.food_rbe_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_cost_of_sales_amt {
    label: "COS RB&E Beverage $"
    description: "RB&E Beverage COS. Segment 2: 500-599, Segment 3: 5150-5170."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.beverage_rbe_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_cost_of_sales_amt {
    label: "COS RB&E Outlet $"
    description: "RB&E Outlet COS. Segment 2: 530-549, Segment 3: 5000-5999."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_outlet_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Cost to Rev %

  measure: cost_of_sales_rev_pct {
    label: "COS /Rev %"
    description: "COS $ / Rev $"
    type: number
    sql: utl..udf_divide( ${cost_of_sales_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: room_cost_of_sales_rev_pct {
    label: "COS /Rev Rms %"
    description: "COS Rms / Rev Rms $"
    type: number
    sql: utl..udf_divide( ${room_cost_of_sales_amt}, ${room_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_cost_of_sales_rev_pct {
    label: "COS /Rev RB&E %"
    description: "COS RB&E $ / Rev RB&E $"
    type: number
    sql: utl..udf_divide( ${rbe_cost_of_sales_amt}, ${rbe_rev_amt} );;
    value_format_name: percent_1
  }

  measure: spa_cost_of_sales_rev_pct {
    label: "COS /Rev Spa %"
    description: "COS Spa $ / Rev Spa $"
    type: number
    sql: utl..udf_divide( ${spa_cost_of_sales_amt}, ${spa_rev_amt} );;
    value_format_name: percent_1
  }

  measure: golf_cost_of_sales_rev_pct {
    label: "COS /Rev Golf %"
    description: "COS Golf $ / Rev Golf $"
    type: number
    sql: utl..udf_divide( ${golf_cost_of_sales_amt}, ${golf_rev_amt} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_cost_of_sales_rev_pct {
    label: "COS /Rev Fitness & Rec %"
    description: "COS Fitness & Rec $ / Rev Fitness & Rec $"
    type: number
    sql: utl..udf_divide( ${fitness_recreation_cost_of_sales_amt}, ${fitness_recreation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_cost_of_sales_rev_pct {
    label: "COS /Rev Parking & Trans %"
    description: "COS Parking & Trans $ / Rev Parking & Trans $"
    type: number
    sql: utl..udf_divide( ${parking_transportation_cost_of_sales_amt}, ${parking_transportation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: telecom_cost_of_sales_rev_pct {
    label: "COS /Rev Telecom %"
    description: "COS Telecom $ / Rev Telecom $"
    type: number
    sql: utl..udf_divide( ${telecom_cost_of_sales_amt}, ${telecom_rev_amt} );;
    value_format_name: percent_1
  }

  measure: retail_cost_of_sales_rev_pct {
    label: "COS /Rev Retail %"
    description: "COS Retail $ / Rev Retail $"
    type: number
    sql: utl..udf_divide( ${retail_cost_of_sales_amt}, ${retail_rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_operated_cost_of_sales_rev_pct {
    label: "COS /Rev Other Op. Dept. %"
    description: "COS Other Op. Dept. $ / Rev Other Op. Dept. $"
    type: number
    sql: utl..udf_divide( ${other_operated_cost_of_sales_amt}, ${other_operated_rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_cost_of_sales_rev_pct {
    label: "COS /Rev Mgmt Srvcs %"
    description: "COS Mgmt Srvcs $ / Rev Mgmt Srvcs $"
    type: number
    sql: utl..udf_divide( ${property_mgmt_cost_of_sales_amt}, ${property_mgmt_rev_amt} );;
    value_format_name: percent_1
  }

  measure: misc_cost_of_sales_rev_pct {
    label: "COS /Rev Rentals & Other %"
    description: "COS Rentals & Other $ / Rev Rentals $ Other $"
    type: number
    sql: utl..udf_divide( ${misc_cost_of_sales_amt}, ${misc_rev_amt} );;
    value_format_name: percent_1
  }

  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt {
    label: "Rev /Trtmnt Spa $"
    description: "Rev Spa $ / Trtmnts Spa"
    type: number
    sql: utl..udf_divide( ${spa_rev_amt}, ${spa_treatment_cnt} );;
    value_format_name: usd_0
  }

  measure: golf_rev_round_avg_amt {
    label: "Rev /Rnd Golf $"
    description: "Rev Golf $ / Rnds Golf"
    type: number
    sql: utl..udf_divide( ${golf_rev_amt}, ${golf_round_cnt} );;
    value_format_name: usd_0
  }

  #-- Occupancy

  measure: occ_room_pct_sp {
    label: "Rms Occ %  :"
    description: "Blank space separator."
    type: string
    sql: '-----' ;;
  }

  measure: occupied_room_pct {
    label: "Rms Occ % "
    description: "Rms Occ / Rms Avail Net"
    type: number
    sql: utl..udf_divide( ${occupied_room_cnt}, ${net_avail_room_cnt} );;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct {
    label: "Rms Occ % Group"
    description: "Rms Occ Group / Rms Avail Net"
    type: number
    sql: utl..udf_divide( ${occupied_group_room_cnt}, ${net_avail_room_cnt} );;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct {
    label: "Rms Occ % Transient"
    description: "Rms Occ Transient / Rms Avail Net"
    type: number
    sql: utl..udf_divide( ${occupied_transient_room_cnt}, ${net_avail_room_cnt} );;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct {
    label: "Rms Occ % Contract"
    description: "Rms Occ Contract / Rms Avail Net"
    type: number
    sql: utl..udf_divide( ${occupied_contract_room_cnt}, ${net_avail_room_cnt} );;
    value_format_name: percent_1
  }

  #-- ADR

  measure: adr_sp {
    label: "ADR  :"
    description: "Blank space separator."
    type: string
    sql: '-----' ;;
  }

  measure: adr_amt {
    label: "ADR $"
    description: "Rev Rms / Rms Occ"
    type: number
    sql: utl..udf_divide( ${room_rev_amt}, ${occupied_room_cnt} );;
    value_format_name: usd_0
  }

  measure: adr_transient_amt {
    label: "ADR Transient $"
    description: "Rev Rms Transient / Rms Occ Transient"
    type: number
    sql: utl..udf_divide( ${transient_room_rev_amt}, ${occupied_transient_room_cnt} );;
    value_format_name: usd_0
  }

  measure: adr_group_amt {
    label: "ADR Group $"
    description: "Rev Rms Group / Rms Occ Group"
    type: number
    sql: utl..udf_divide( ${group_room_rev_amt}, ${occupied_group_room_cnt} );;
    value_format_name: usd_0
  }

  measure: adr_contract_amt {
    label: "ADR Contract $"
    description: "Rev Rms Contract / Rms Occ Contract"
    type: number
    sql: utl..udf_divide( ${contract_room_rev_amt}, ${occupied_contract_room_cnt} );;
    value_format_name: usd_0
  }

  #-- Room nights

  measure: room_night_transient_pct {
    label: "Rms Night Transient %"
    description: "Rms Occ Transient / Rms Occ"
    type: number
    sql: utl..udf_divide( ${occupied_transient_room_cnt}, ${occupied_room_cnt} );;
    value_format_name: percent_1
  }

  measure: room_night_group_pct {
    label: "Rms Night Group %"
    description: "Rms Occ Group / Rms Occ"
    type: number
    sql: utl..udf_divide( ${occupied_group_room_cnt}, ${occupied_room_cnt} );;
    value_format_name: percent_1
  }

  measure: room_night_contract_pct {
    label: "Rms Night Contract %"
    description: "Rms Occ Contract / Rms Occ"
    type: number
    sql: utl..udf_divide( ${occupied_contract_room_cnt}, ${occupied_room_cnt} );;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_sp {
    label: "Rev PAR  :"
    description: "Blank space separator."
    type: string
    sql: '-----' ;;
  }

  measure: rev_par_amt {
    label: "Rev PAR $"
    description: "Rev Rms $ / Rms Avail Net"
    type: number
    sql: utl..udf_divide( ${room_rev_amt}, ${net_avail_room_cnt} );;
    value_format_name: usd_0
  }

  measure: rev_par_group_amt {
    label: "Rev PAR $ Group"
    description: "Rev Rms Group $ / Rms Avail Net"
    type: number
    sql: utl..udf_divide( ${group_room_rev_amt}, ${net_avail_room_cnt} );;
    value_format_name: usd_0
  }

  measure: rev_par_transient_amt {
    label: "Rev PAR $ Transient"
    description: "Rev Rms Transient $ / Rms Avail Net"
    type: number
    sql: utl..udf_divide( ${transient_room_rev_amt}, ${net_avail_room_cnt} );;
    value_format_name: usd_0
  }

  measure: rev_par_contract_amt {
    label: "Rev PAR $ Contract"
    description: "Rev Rms Contract $ / Rms Avail Net"
    type: number
    sql: utl..udf_divide( ${contract_room_rev_amt}, ${net_avail_room_cnt} );;
    value_format_name: usd_0
  }

  #-- Rev POR

  measure: rev_por_amt {
    label: "Rev POR $"
    description: "Rev $ / Rms Occ"
    type: number
    sql: utl..udf_divide( ${rev_amt}, ${occupied_room_cnt} );;
    value_format_name: usd_0
  }

  #-- Avg check

  measure: rbe_check_avg_amt {
    label: "Cvrs RB&E Avg $"
    description: "Rev RB&E $ / Cvrs RB&E"
    type: number
    sql: utl..udf_divide( ${rbe_rev_amt}, ${rbe_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_banquet_check_avg_amt {
    label: "Cvrs RB&E Banquet Avg $"
    description: "Rev RB&E Banquet $ / Cvrs RB&E Banquet"
    type: number
    sql: utl..udf_divide( ${rbe_banquet_rev_amt}, ${rbe_banquet_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_catering_check_avg_amt {
    label: "Cvrs RB&E Catering Avg $"
    description: "Rev RB&E Catering $ / Cvrs RB&E Catering"
    type: number
    sql: utl..udf_divide( ${rbe_catering_rev_amt}, ${rbe_catering_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_outlet_check_avg_amt {
    label: "Cvrs RB&E Outlet Avg $"
    description: "Rev RB&E Outlet $ / Cvrs RB&E Outlet"
    type: number
    sql: utl..udf_divide( ${rbe_outlet_rev_amt}, ${rbe_outlet_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_room_service_check_avg_amt {
    label: "Cvrs RB&E Room Service Avg $"
    description: "Rev RB&E Room Service $ / Cvrs RB&E Room Service"
    type: number
    sql: utl..udf_divide( ${rbe_room_service_rev_amt}, ${rbe_room_service_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_other_check_avg_amt {
    label: "Cvrs RB&E Other Avg $"
    description: "Rev RB&E Other $ / Cvrs RB&E Other"
    type: number
    sql: utl..udf_divide( ${rbe_other_rev_amt}, ${rbe_other_cover_cnt} );;
    value_format_name: usd_0
  }

  #-- Payroll /Rev
  measure: payroll_rev_pct {
    label: "Payroll /Rev %"
    description: "Payroll $ / Rev $"
    type: number
    sql: utl..udf_divide( ${payroll_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  #-- Avg length of stay
  measure: length_of_stay_avg_amt {
    label: "Stay Length Avg Night"
    description: "( Rms Occ Transient + Group + Contract + Owner + Comp ) / Arrivals"
    type: number
    sql: utl..udf_divide( ${occupied_transient_room_cnt} + ${occupied_group_room_cnt} + ${occupied_contract_room_cnt} + ${occupied_owner_room_cnt} + ${comp_room_cnt},
      ${arrival_cnt} );;
    value_format_name: decimal_1
  }

  #-- Rental property splits

  measure: room_rental_mgmt_2_19_rev_amt {
    label: "Rev Rms Rental $"
    description: "Room Revenue Rental Villas. Segment 2: 412-429, Segment 3: 4000-4999."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.room_rental_mgmt_2_19_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: avail_room_rental_mgmt_2_19_cnt {
    label: "Rms Avail Rental"
    description: "Available Rooms Rental Villas. Segment 2: 412-429, Segment 3: 9900."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.avail_room_rental_mgmt_2_19_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_owner_room_rental_mgmt_2_19_cnt {
    label: "Rms Occ Owner Rental"
    description: "Occupied Rooms Rental Villas. Segment 2: 412-429, Segment 3: 9908, 9910."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_owner_room_rental_mgmt_2_19_cnt}, to_number( null ) ) ;;
  }

  measure: net_avail_room_rental_mgmt_2_19_cnt {
    label: "Rms Avail Net Rental"
    description: "Rms Avail Rental - Rms Occ Owner Rental"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.net_avail_room_rental_mgmt_2_19_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_room_rental_mgmt_2_19_cnt {
    label: "Rms Occ Rental"
    description: "Rms Occ Transient Rental + Rms Occ Group Rental + Rms Occ Contract Rental"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_room_rental_mgmt_2_19_cnt}, to_number( null ) ) ;;
  }

  measure: transient_room_rental_mgmt_2_19_rev_amt{
    label: "Rev Rms Transient Rental $"
    description: "Room Revenue Transient Rental Villas. Segment 2: 412-429, Segment 3: 4000-4004, 4006-4049."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.transient_room_rental_mgmt_2_19_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: group_room_rental_mgmt_2_19_rev_amt {
    label: "Rev Rms Group Rental $"
    description: "Room Revenue Group Rental Villas. Segment 2: 412-429, Segment 3: 4050-4075."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.group_room_rental_mgmt_2_19_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: contract_room_rental_mgmt_2_19_rev_amt {
    label: "Rev Rms Contract Rental $"
    description: "Room Revenue Contract Rental Villas. Segment 2: 412-429, Segment 3: 4005."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.contract_room_rental_mgmt_2_19_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: occupied_transient_room_rental_mgmt_2_19_cnt {
    label: "Rms Occ Transient Rental"
    description: "Occupied Rooms Transient Rental Villas. Segment 2: 412-429, Segment 3: 9000-9004, 9006-9049."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_transient_room_rental_mgmt_2_19_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: occupied_group_room_rental_mgmt_2_19_cnt {
    label: "Rms Occ Group Rental"
    description: "Occupied Rooms Group Rental Villas. Segment 2: 412-429, Segment 3: 9050-9075."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_group_room_rental_mgmt_2_19_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_contract_room_rental_mgmt_2_19_cnt {
    label: "Rms Occ Contract Rental"
    description: "Occupied Rooms Contract Rental Villas. Segment 2: 412-429, Segment 3: 9005."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.occupied_contract_room_rental_mgmt_2_19_cnt}, to_number( null ) ) ;;
  }

  #-- Hours

  measure: hour_sp {
    label: "Hrs  :"
    description: "Blank space separator."
    type: string
    sql: '-----' ;;
  }

  measure: hour_amt {

    label: "Hrs"
    description: "Hours Amount Total. Segment 3: 9600-9815"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: room_hour_amt {
    label: "Hrs Rms "
    description: "Room Hours (Includes Hskpng, Res, FO, Bell, Guest Srvc. Segment 2: 400-499, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.room_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: rbe_hour_amt {
    label: "Hrs RB&E "
    description: "RB&E Hours. Segment 2: 500-599, Segment 3: 9600-9815."
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_hour_amt {
    label: "Hrs RB&E Banquet "
    description: "RB&E Hours Banquet. Segment 2: 510-515, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_banquet_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_hour_amt {
    label: "Hrs RB&E Catering "
    description: "RB&E Hours Catering. Segment 2: 516-518. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_catering_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_hour_amt {
    label: "Hrs RB&E Outlet "
    description: "RB&E Outlet Hours. Segment 2: 530-549. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_outlet_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: rbe_conference_services_hour_amt {
    label: "Hrs RB&E Conference Services "
    description: "RB&E Conference Hours. Segment 2: 590-599. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_conference_services_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: rbe_restaurant_hour_amt {
    label: "Hrs RB&E Restaurant "
    description: "RB&E Restaurant Hours. Segment 2: 540-549. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_restaurant_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: rbe_lounge_hour_amt {
    label: "Hrs RB&E Lounge "
    description: "RB&E Lounge Hours. Segment 2: 530-539. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_lounge_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_hour_amt {
    label: "Hrs RB&E Other "
    description: "Admin Hours + Kitchen Hours + Cart Hours + Minibar Hours + Room Service Hours. Segment 2: 500, 550-589, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.rbe_other_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: spa_hour_amt {
    label: "Hrs Spa "
    description: "Spa Hours. Segment 2: 666, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.spa_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: golf_hour_amt {
    label: "Hrs Golf "
    description: "Golf Hours. Segment 2: 610-635. Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.golf_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: fitness_recreation_hour_amt {
    label: "Hrs Fitness & Rec "
    description: "Fitness & Recreation Hours. Segment 2: 650-664, 668-674, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.fitness_recreation_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: retail_hour_amt {
    label: "Hrs Retail "
    description: "Retail Hours. Segment 2: 750-769, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.retail_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: other_operated_hour_amt {
    label: "Hrs Other Op. Dept. "
    description: "Parking & Trans Hours + Dry Cleaning Hours + Telecomm Hours. Segment 2: 710-721, 735-740, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.other_operated_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: property_mgmt_hour_amt {
    label: "Hrs Mgmt Srvcs "
    description: "Property Management Hours. Segment 2: 770-789, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.property_mgmt_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: misc_hour_amt {
    label: "Hrs Rentals & Other "
    description: "Misc Hours. Segment 2: 790-799, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.misc_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_realty_hour_amt {
    label: "Hrs Nonoperating Realty "
    description: "Nonoperating Realty Hours. Segment 2: 681-685, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_realty_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_airport_hour_amt {
    label: "Hrs Nonoperating Airport "
    description: "Nonoperating Airport Hours. Segment 2: 680, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_airport_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_util_hour_amt {
    label: "Hrs Nonoperating Utility "
    description: "Nonoperating Utility Hours. Segment 2: 689-699, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.nonoperating_util_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: undistributed_hour_amt {
    label: "Hrs Undistributed "
    description: "Undistributed Hours. Segment 2: 800-876, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.undistributed_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
  }

  measure: allocated_hour_amt {
    label: "Hrs Allocated "
    description: "Allocated Dept Hours. Segment 2: 920-999, Segment 3: 9600-9815."
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_future_fcst_f.allocated_hour_amt}, to_number( null ) ) ;;
    value_format_name: decimal_2
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
    value_format_name: decimal_2
  }

  measure: room_fte_amt {
    label: "FTE Rms "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${room_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: rbe_fte_amt {
    label: "FTE RB&E "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: rbe_banquet_fte_amt {
    label: "FTE RB&E Banquet "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_banquet_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: rbe_catering_fte_amt {
    label: "FTE RB&E Catering "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_catering_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: rbe_outlet_fte_amt {
    label: "FTE RB&E Outlet "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_outlet_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: rbe_conference_services_fte_amt {
    label: "FTE RB&E Conference Services "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_conference_services_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: rbe_restaurant_fte_amt {
    label: "FTE RB&E Restaurant "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_restaurant_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: rbe_lounge_fte_amt {
    label: "FTE RB&E Lounge "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_lounge_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: rbe_other_fte_amt {
    label: "FTE RB&E Other "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${rbe_other_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: spa_fte_amt {
    label: "FTE Spa "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${spa_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: golf_fte_amt {
    label: "FTE Golf "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${golf_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: fitness_recreation_fte_amt {
    label: "FTE Fitness & Rec "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${fitness_recreation_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: retail_fte_amt {
    label: "FTE Retail "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${retail_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: other_operated_fte_amt {
    label: "FTE Other Op. Dept. "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${other_operated_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: property_mgmt_fte_amt {
    label: "FTE Mgmt Srvcs "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${property_mgmt_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: misc_fte_amt {
    label: "FTE Rentals & Other "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${misc_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_realty_fte_amt {
    label: "FTE Nonoperating Realty "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${nonoperating_realty_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_airport_fte_amt {
    label: "FTE Nonoperating Airport "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${nonoperating_airport_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: nonoperating_util_fte_amt {
    label: "FTE Nonoperating Utility "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${nonoperating_util_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: undistributed_fte_amt {
    label: "FTE Undistributed "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${undistributed_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

  measure: allocated_fte_amt {
    label: "FTE Allocated "
    description: "Hrs for Dept / ( Months in Period * 365/12 * 2080/365 )"
    type: number
    sql:  ${allocated_hour_amt} * ${fte_multiplier} ;;
    value_format_name: decimal_2
  }

}
