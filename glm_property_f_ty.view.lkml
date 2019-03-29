view: glm_property_f_ty {
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
    sql: ${glm_property_f.act_bt} ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- Measures
  #-------------------------------------------------------------------------------------------

  measure: rev_amt {
    label: "Rev $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: agop_amt {
    label: "AGOP $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.agop_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #measure: agop_abs_amt {
  #  label: "AGOP Abs $"
  #  type: sum
  #  sql:  iff( ${measure_bt} = 1, ${glm_property_f.agop_abs_amt}, to_number( null ) ) ;;
  #  value_format_name: usd_0
  #}

  measure: gop_amt {
    label: "GOP $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.gop_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_rev_amt {
    label: "Rev Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_rev_amt {
    label: "Rev RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.rbe_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_rev_amt {
    label: "Rev RB&E Banquet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_banquet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_rev_amt {
    label: "Rev RB&E Catering $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_catering_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_rev_amt {
    label: "Rev RB&E Outlet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_outlet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_conference_services_rev_amt {
    label: "Rev RB&E Conference Services $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_conference_services_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #measure: rbe_banquet_catering_conference_services_rev_amt {
  #  label: "Rev RB&E Banquet Catering Conference Services $"
  #  type: sum
  #  sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_banquet_catering_conference_services_rev_amt}, to_number( null ) ) ;;
  #  value_format_name: usd_0
  #}

  measure: rbe_room_service_rev_amt {
    label: "Rev RB&E Room Service $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_room_service_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_rev_amt {
    label: "Rev RB&E Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_other_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #measure: rbe_outlet_other_rev_amt {
  #  label: "Rev RB&E Outlet Other $"
  #  type: sum
  #  sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_outlet_other_rev_amt}, to_number( null ) ) ;;
  #  value_format_name: usd_0
  #}


  measure: food_rbe_rev_amt {
    label: "Rev Food RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.food_rbe_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_banquet_rev_amt {
    label: "Rev Food RB&E Banquet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.food_rbe_banquet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_catering_rev_amt {
    label: "Rev Food RB&E Catering $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.food_rbe_catering_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_outlet_rev_amt {
    label: "Rev Food RB&E Outlet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.food_rbe_outlet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_conference_services_rev_amt {
    label: "Rev Food RB&E Conference Services $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.food_rbe_conference_services_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #measure: food_rbe_banquet_catering_conference_services_rev_amt {
  #  label: "Rev Food RB&E Banquet Catering Conference Services $"
  #  type: sum
  #  sql: iff( ${measure_bt} = 1, ${glm_property_f.food_rbe_banquet_catering_conference_services_rev_amt}, to_number( null ) ) ;;
  #  value_format_name: usd_0
  #}

  measure: food_rbe_room_service_rev_amt {
    label: "Rev Food RB&E Room Service $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.food_rbe_room_service_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_other_rev_amt {
    label: "Rev Food RB&E Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.food_rbe_other_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }


  measure: beverage_rbe_rev_amt {
    label: "Rev Beverage RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.beverage_rbe_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_banquet_rev_amt {
    label: "Rev Beverage RB&E Banquet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.beverage_rbe_banquet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_catering_rev_amt {
    label: "Rev Beverage RB&E Catering $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.beverage_rbe_catering_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_outlet_rev_amt {
    label: "Rev Beverage RB&E Outlet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.beverage_rbe_outlet_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_conference_services_rev_amt {
    label: "Rev Beverage RB&E Conference Services $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.beverage_rbe_conference_services_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #measure: beverage_rbe_banquet_catering_conference_services_rev_amt {
  #  label: "Rev Beverage RB&E Banquet Catering Conference Services $"
  #  type: sum
  #  sql: iff( ${measure_bt} = 1, ${glm_property_f.beverage_rbe_banquet_catering_conference_services_rev_amt}, to_number( null ) ) ;;
  #  value_format_name: usd_0
  #}

  measure: beverage_rbe_room_service_rev_amt {
    label: "Rev Beverage RB&E Room Service $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.beverage_rbe_room_service_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_other_rev_amt {
    label: "Rev Beverage RB&E Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.beverage_rbe_other_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_rev_amt {
    label: "Rev Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.spa_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_rev_amt {
    label: "Rev Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.golf_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_rev_amt {
    label: "Rev Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.fitness_recreation_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_rev_amt {
    label: "Rev Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.parking_transportation_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_rev_amt {
    label: "Rev Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.telecom_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_rev_amt {
    label: "Rev Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.retail_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #measure: spa_fitness_recreation_rev_amt {
  #  label: "Rev Spa Fitness & Rec $"
  #  type: sum
  #  sql: iff( ${measure_bt} = 1, ${glm_property_f.spa_fitness_recreation_rev_amt}, to_number( null ) ) ;;
  #  value_format_name: usd_0
  #}

  measure: other_operated_rev_amt {
    label: "Rev Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.other_operated_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_rev_amt {
    label: "Rev Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.property_mgmt_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_rev_amt {
    label: "Rev Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.misc_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_rev_amt {
    label: "Rev Nonoperating Realty $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_realty_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_rev_amt {
    label: "Rev Nonoperating Airport $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_airport_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_rev_amt {
    label: "Rev Nonoperating Utility $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_util_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Expenses

  measure: exp_amt {
    label: "Exp $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_exp_amt {
    label: "Exp Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.room_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_exp_amt {
    label: "Exp RB&E $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_exp_amt {
    label: "Exp Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.spa_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_exp_amt {
    label: "Exp Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.golf_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_exp_amt {
    label: "Exp Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.fitness_recreation_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_exp_amt {
    label: "Exp Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.parking_transportation_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_exp_amt {
    label: "Exp Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.telecom_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_exp_amt {
    label: "Exp Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.retail_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_exp_amt {
    label: "Exp Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.other_operated_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_exp_amt {
    label: "Exp Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.property_mgmt_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: administrative_general_exp_amt {
    label: "Exp A&G $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.administrative_general_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: information_technology_exp_amt {
    label: "Exp IT $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.information_technology_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: sales_marketing_exp_amt {
    label: "Exp S&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.sales_marketing_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_operations_maintenance_exp_amt {
    label: "Exp R&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.property_operations_maintenance_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_exp_amt {
    label: "Exp Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.misc_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_exp_amt {
    label: "Exp Nonoperating Realty Airport $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_realty_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_exp_amt {
    label: "Exp Nonoperating Airport $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_airport_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_exp_amt {
    label: "Exp Nonoperating Utility $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_util_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }


  #-- Other Expenses

  measure: other_exp_amt {
    label: "Exp Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_other_exp_amt {
    label: "Exp Other Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.room_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_exp_amt {
    label: "Exp Other RB&E $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_other_exp_amt {
    label: "Exp Other Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.spa_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_other_exp_amt {
    label: "Exp Other Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.golf_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_other_exp_amt {
    label: "Exp Other Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.fitness_recreation_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_other_exp_amt {
    label: "Exp Other Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.parking_transportation_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_other_exp_amt {
    label: "Exp Other Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.telecom_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_other_exp_amt {
    label: "Exp Other Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.retail_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_other_exp_amt {
    label: "Exp Other Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.other_operated_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_other_exp_amt {
    label: "Exp Other Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.property_mgmt_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: administrative_general_other_exp_amt {
    label: "Exp Other A&G $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.administrative_general_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: information_technology_other_exp_amt {
    label: "Exp Other IT $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.information_technology_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: sales_marketing_other_exp_amt {
    label: "Exp Other S&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.sales_marketing_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_operations_maintenance_other_exp_amt {
    label: "Exp Other R&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.property_operations_maintenance_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_other_exp_amt {
    label: "Exp Other Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.misc_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_other_exp_amt {
    label: "Exp Other Nonoperating Realty $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_realty_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_other_exp_amt {
    label: "Exp Other Nonoperating Airport $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_airport_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_other_exp_amt {
    label: "Exp Other Nonoperating Utility $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_util_other_exp_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Other Expenses Rev Pct (Out of Dept Revenue)

  measure: room_other_exp_rev_pct {
    label: "Exp /Rev Other Rms %"
    type: number
    sql: utl..udf_divide( ${room_other_exp_amt}, ${room_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_rev_pct {
    label: "Exp /Rev Other RB&E %"
    type: number
    sql: utl..udf_divide( ${rbe_other_exp_amt}, ${rbe_rev_amt} );;
    value_format_name: percent_1
  }

  measure: spa_other_exp_rev_pct {
    label: "Exp /Rev Other Spa %"
    type: number
    sql: utl..udf_divide( ${spa_other_exp_amt}, ${spa_rev_amt} );;
    value_format_name: percent_1
  }

  measure: golf_other_exp_rev_pct {
    label: "Exp /Rev Other Golf %"
    type: number
    sql: utl..udf_divide( ${golf_other_exp_amt}, ${golf_rev_amt} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_rev_pct {
    label: "Exp /Rev Other Fitness & Rec %"
    type: number
    sql: utl..udf_divide( ${fitness_recreation_other_exp_amt}, ${fitness_recreation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_rev_pct {
    label: "Exp /Rev Other Parking & Trans %"
    type: number
    sql: utl..udf_divide( ${parking_transportation_other_exp_amt}, ${parking_transportation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_rev_pct {
    label: "Exp /Rev Other Telecom %"
    type: number
    sql: utl..udf_divide( ${telecom_other_exp_amt}, ${telecom_rev_amt} );;
    value_format_name: percent_1
  }

  measure: retail_other_exp_rev_pct {
    label: "Exp /Rev Other Retail %"
    type: number
    sql: utl..udf_divide( ${retail_other_exp_amt}, ${retail_rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_rev_pct {
    label: "Exp /Rev Other Other Op. Dept. %"
    type: number
    sql: utl..udf_divide( ${other_operated_other_exp_amt}, ${other_operated_rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_rev_pct {
    label: "Exp /Rev Other Mgmt Srvcs %"
    type: number
    sql: utl..udf_divide( ${property_mgmt_other_exp_amt}, ${property_mgmt_rev_amt} );;
    value_format_name: percent_1
  }

  #-- Other Expenses Rev Pct (Out of Total Revenue)

  measure: other_exp_ttl_rev_pct {
    label: "Exp /TRev Other %"
    type: number
    sql: utl..udf_divide( ${other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: room_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Rms %"
    type: number
    sql: utl..udf_divide( ${room_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other RB&E %"
    type: number
    sql: utl..udf_divide( ${rbe_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: spa_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Spa %"
    type: number
    sql: utl..udf_divide( ${spa_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: golf_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Golf %"
    type: number
    sql: utl..udf_divide( ${golf_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Fitness & Rec %"
    type: number
    sql: utl..udf_divide( ${fitness_recreation_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Parking & Trans %"
    type: number
    sql: utl..udf_divide( ${parking_transportation_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: telecom_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Telecom %"
    type: number
    sql: utl..udf_divide( ${telecom_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: retail_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Retail %"
    type: number
    sql: utl..udf_divide( ${retail_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_operated_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Other Op. Dept. %"
    type: number
    sql: utl..udf_divide( ${other_operated_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Mgmt Srvcs %"
    type: number
    sql: utl..udf_divide( ${property_mgmt_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: administrative_general_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other A&G %"
    type: number
    sql: utl..udf_divide( ${administrative_general_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: information_technology_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other IT %"
    type: number
    sql: utl..udf_divide( ${information_technology_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: sales_marketing_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other S&M %"
    type: number
    sql: utl..udf_divide( ${sales_marketing_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_operations_maintenance_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other R&M %"
    type: number
    sql: utl..udf_divide( ${property_operations_maintenance_other_exp_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: misc_other_exp_ttl_rev_pct {
    label: "Exp /TRev Other Rentals & Other %"
    type: number
    sql: utl..udf_divide( ${misc_other_exp_amt}, ${misc_rev_amt} );;
    value_format_name: percent_1
  }

  #-- Payroll

  measure: payroll_amt {
    label: "Payroll $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_payroll_amt {
    label: "Payroll Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.room_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_payroll_amt {
    label: "Payroll RB&E $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_payroll_amt {
    label: "Payroll Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.spa_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_payroll_amt {
    label: "Payroll Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.golf_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_payroll_amt {
    label: "Payroll Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.fitness_recreation_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_payroll_amt {
    label: "Payroll Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.parking_transportation_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_payroll_amt {
    label: "Payroll Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.telecom_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_payroll_amt {
    label: "Payroll Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.retail_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_payroll_amt {
    label: "Payroll Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.other_operated_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_payroll_amt {
    label: "Payroll Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.property_mgmt_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: administrative_general_payroll_amt {
    label: "Payroll A&G $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.administrative_general_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: information_technology_payroll_amt {
    label: "Payroll IT $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.information_technology_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: sales_marketing_payroll_amt {
    label: "Payroll S&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.sales_marketing_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_operations_maintenance_payroll_amt {
    label: "Payroll R&M $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.property_operations_maintenance_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_payroll_amt {
    label: "Payroll Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.misc_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_payroll_amt {
    label: "Payroll Nonoperating Realty $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_realty_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_payroll_amt {
    label: "Payroll Nonoperating Airport $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_airport_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_payroll_amt {
    label: "Payroll Nonoperating Utility $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_util_payroll_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }


  #-- Payroll Rev %

  measure: room_payroll_rev_pct {
    label: "Payroll /Rev Rms %"
    type: number
    sql: utl..udf_divide( ${room_payroll_amt}, ${room_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_payroll_rev_pct {
    label: "Payroll /Rev RB&E %"
    type: number
    sql: utl..udf_divide( ${rbe_payroll_amt}, ${rbe_rev_amt} );;
    value_format_name: percent_1
  }

  measure: spa_payroll_rev_pct {
    label: "Payroll /Rev Spa %"
    type: number
    sql: utl..udf_divide( ${spa_payroll_amt}, ${spa_rev_amt} );;
    value_format_name: percent_1
  }

  measure: golf_payroll_rev_pct {
    label: "Payroll /Rev Golf %"
    type: number
    sql: utl..udf_divide( ${golf_payroll_amt}, ${golf_rev_amt} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_payroll_rev_pct {
    label: "Payroll /Rev Fitness & Rec %"
    type: number
    sql: utl..udf_divide( ${fitness_recreation_payroll_amt}, ${fitness_recreation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_payroll_rev_pct {
    label: "Payroll /Rev Parking & Trans %"
    type: number
    sql: utl..udf_divide( ${parking_transportation_payroll_amt}, ${parking_transportation_rev_amt} );;
    value_format_name: usd_0
  }

  measure: telecom_payroll_rev_pct {
    label: "Payroll /Rev Telecom %"
    type: number
    sql: utl..udf_divide( ${telecom_payroll_amt}, ${telecom_rev_amt} );;
    value_format_name: percent_1
  }

  measure: retail_payroll_rev_pct {
    label: "Payroll /Rev Retail %"
    type: number
    sql: utl..udf_divide( ${retail_payroll_amt}, ${retail_rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_operated_payroll_rev_pct {
    label: "Payroll /Rev Other Op. Dept. %"
    type: number
    sql: utl..udf_divide( ${other_operated_payroll_amt}, ${other_operated_rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_payroll_rev_pct {
    label: "Payroll /Rev Mgmt Srvcs %"
    type: number
    sql: utl..udf_divide( ${property_mgmt_payroll_amt}, ${property_mgmt_rev_amt} );;
    value_format_name: percent_1
  }

  measure: misc_payroll_rev_pct {
    label: "Payroll /Rev Rentals & Other %"
    type: number
    sql: utl..udf_divide( ${misc_payroll_amt}, ${misc_rev_amt} );;
    value_format_name: percent_1
  }


  #-- Covers

  measure: rbe_cover_cnt {
    label: "Cvrs RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.rbe_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_cover_cnt {
    label: "Cvrs RB&E Banquet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_banquet_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_cover_cnt {
    label: "Cvrs RB&E Catering $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_catering_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_cover_cnt {
    label: "Cvrs RB&E Outlet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_outlet_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_room_service_cover_cnt {
    label: "Cvrs RB&E Room Service $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_room_service_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_cover_cnt {
    label: "Cvrs RB&E Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_other_cover_cnt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Treatments

  measure: spa_treatment_cnt {
    label: "Trtmnts Spa"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.spa_treatment_cnt}, to_number( null ) ) ;;
  }

  measure: golf_round_cnt {
    label: "Rnds Golf"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.golf_round_cnt}, to_number( null ) ) ;;
  }

  #-- Rooms

  measure: arrival_cnt {
    label: "Arrivals"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.arrival_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_room_cnt {
    label: "Rms Occ"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.occupied_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_transient_room_cnt {
    label: "Rms Occ Transient"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.occupied_transient_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_group_room_cnt {
    label: "Rms Occ Group"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.occupied_group_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_contract_room_cnt {
    label: "Rms Occ Contract"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.occupied_contract_room_cnt}, to_number( null ) ) ;;
  }

  measure: avail_room_cnt {
    label: "Rms Avail"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.avail_room_cnt}, to_number( null ) ) ;;
  }

  measure: occupied_owner_room_cnt {
    label: "Rms Occ Owner"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.occupied_owner_room_cnt}, to_number( null ) ) ;;
  }

  measure: comp_room_cnt {
    label: "Rms Occ Comp"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.comp_room_cnt}, to_number( null ) ) ;;
  }

  measure: net_avail_room_cnt {
    label: "Rms Avail Net"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.net_avail_room_cnt}, to_number( null ) ) ;;
  }

  #-- Group / Transient

  measure: transient_room_rev_amt {
    label: "Rev Rms Transient $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.transient_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: group_room_rev_amt {
    label: "Rev Rms Group $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.group_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: contract_room_rev_amt {
    label: "Rev Rms Contract $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.contract_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: no_show_room_rev_amt {
    label: "Rev Rms No Show $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.no_show_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: service_charge_incl_room_rev_amt {
    label: "Rev Rms Srvc Charge $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.service_charge_incl_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  # does not include no shows and does include service charges with seg4 0000
  measure: other_room_rev_amt {
    label: "Rev Rms Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.other_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Profit

  measure: profit_amt {
    label: "Profit $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_profit_amt {
    label: "Profit Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.room_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_profit_amt {
    label: "Profit RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.rbe_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_banquet_profit_amt {
    label: "Profit RB&E Banquet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_banquet_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_catering_profit_amt {
    label: "Profit RB&E Catering $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_catering_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_outlet_profit_amt {
    label: "Profit RB&E Outlet $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_outlet_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_conference_services_profit_amt {
    label: "Profit RB&E Conference Services $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_conference_services_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #measure: rbe_banquet_catering_conference_services_profit_amt {
  #  label: "Profit RB&E Banquet Catering Conference Services $"
  #  type: sum
  #  sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_banquet_catering_conference_services_profit_amt}, to_number( null ) ) ;;
  #  value_format_name: usd_0
  #}

  measure: rbe_room_service_profit_amt {
    label: "Profit RB&E Room Service $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_room_service_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_other_profit_amt {
    label: "Profit RB&E Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_other_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #measure: rbe_outlet_other_profit_amt {
  #  label: "Profit RB&E Outlet Other $"
  #  type: sum
  #  sql: iff( ${measure_bt} = 1, ${glm_property_f.rbe_outlet_other_profit_amt}, to_number( null ) ) ;;
  #  value_format_name: usd_0
  #}

  measure: spa_profit_amt {
    label: "Profit Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.spa_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_profit_amt {
    label: "Profit Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.golf_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_profit_amt {
    label: "Profit Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.fitness_recreation_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_profit_amt {
    label: "Profit Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.parking_transportation_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_profit_amt {
    label: "Profit Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.telecom_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_profit_amt {
    label: "Profit Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.retail_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #measure: spa_fitness_recreation_profit_amt {
  #  label: "Profit Spa Fitness & Rec $"
  #  type: sum
  #  sql: iff( ${measure_bt} = 1, ${glm_property_f.spa_fitness_recreation_profit_amt}, to_number( null ) ) ;;
  #  value_format_name: usd_0
  #}

  measure: other_operated_profit_amt {
    label: "Profit Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.other_operated_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_profit_amt {
    label: "Profit Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.property_mgmt_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_profit_amt {
    label: "Profit Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.misc_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_profit_amt {
    label: "Profit Nonoperating Realty $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_realty_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_profit_amt {
    label: "Profit Nonoperating Airport $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_airport_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_profit_amt {
    label: "Profit Nonoperating Utility $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_util_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: undistributed_profit_amt {
    label: "Profit Undistributed $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.undistributed_profit_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Cost

  measure: cost_of_sales_amt {
    label: "COS $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: room_cost_of_sales_amt {
    label: "COS Rms $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.room_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: rbe_cost_of_sales_amt {
    label: "COS RB&E $"
    type: sum
    sql:  iff( ${measure_bt} = 1, ${glm_property_f.rbe_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: spa_cost_of_sales_amt {
    label: "COS Spa $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.spa_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: golf_cost_of_sales_amt {
    label: "COS Golf $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.golf_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: fitness_recreation_cost_of_sales_amt {
    label: "COS Fitness & Rec $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.fitness_recreation_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: parking_transportation_cost_of_sales_amt {
    label: "COS Parking & Trans $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.parking_transportation_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: telecom_cost_of_sales_amt {
    label: "COS Telecom $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.telecom_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: retail_cost_of_sales_amt {
    label: "COS Retail $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.retail_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: other_operated_cost_of_sales_amt {
    label: "COS Other Op. Dept. $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.other_operated_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: property_mgmt_cost_of_sales_amt {
    label: "COS Mgmt Srvcs $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.property_mgmt_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: misc_cost_of_sales_amt {
    label: "COS Rentals & Other $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.misc_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_realty_cost_of_sales_amt {
    label: "COS Nonoperating Realty $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_realty_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_airport_cost_of_sales_amt {
    label: "COS Nonoperating Airport $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_airport_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: nonoperating_util_cost_of_sales_amt {
    label: "COS Nonoperating Utility $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.nonoperating_util_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: food_rbe_cost_of_sales_amt {
    label: "COS RB&E Food $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.food_rbe_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  measure: beverage_rbe_cost_of_sales_amt {
    label: "COS RB&E Beverage $"
    type: sum
    sql: iff( ${measure_bt} = 1, ${glm_property_f.beverage_rbe_cost_of_sales_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #-- Cost to Rev %

  measure: cost_of_sales_rev_pct {
    label: "COS /Rev %"
    type: number
    sql: utl..udf_divide( ${cost_of_sales_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  measure: room_cost_of_sales_rev_pct {
    label: "COS /Rev Rms %"
    type: number
    sql: utl..udf_divide( ${room_cost_of_sales_amt}, ${room_rev_amt} );;
    value_format_name: percent_1
  }

  measure: rbe_cost_of_sales_rev_pct {
    label: "COS /Rev RB&E %"
    type: number
    sql: utl..udf_divide( ${rbe_cost_of_sales_amt}, ${rbe_rev_amt} );;
    value_format_name: percent_1
  }

  measure: spa_cost_of_sales_rev_pct {
    label: "COS /Rev Spa %"
    type: number
    sql: utl..udf_divide( ${spa_cost_of_sales_amt}, ${spa_rev_amt} );;
    value_format_name: percent_1
  }

  measure: golf_cost_of_sales_rev_pct {
    label: "COS /Rev Golf %"
    type: number
    sql: utl..udf_divide( ${golf_cost_of_sales_amt}, ${golf_rev_amt} );;
    value_format_name: percent_1
  }

  measure: fitness_recreation_cost_of_sales_rev_pct {
    label: "COS /Rev Fitness & Rec %"
    type: number
    sql: utl..udf_divide( ${fitness_recreation_cost_of_sales_amt}, ${fitness_recreation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: parking_transportation_cost_of_sales_rev_pct {
    label: "COS /Rev Parking & Trans %"
    type: number
    sql: utl..udf_divide( ${parking_transportation_cost_of_sales_amt}, ${parking_transportation_rev_amt} );;
    value_format_name: percent_1
  }

  measure: telecom_cost_of_sales_rev_pct {
    label: "COS /Rev Telecom %"
    type: number
    sql: utl..udf_divide( ${telecom_cost_of_sales_amt}, ${telecom_rev_amt} );;
    value_format_name: percent_1
  }

  measure: retail_cost_of_sales_rev_pct {
    label: "COS /Rev Retail %"
    type: number
    sql: utl..udf_divide( ${retail_cost_of_sales_amt}, ${retail_rev_amt} );;
    value_format_name: percent_1
  }

  measure: other_operated_cost_of_sales_rev_pct {
    label: "COS /Rev Other Op. Dept. %"
    type: number
    sql: utl..udf_divide( ${other_operated_cost_of_sales_amt}, ${other_operated_rev_amt} );;
    value_format_name: percent_1
  }

  measure: property_mgmt_cost_of_sales_rev_pct {
    label: "COS /Rev Mgmt Srvcs %"
    type: number
    sql: utl..udf_divide( ${property_mgmt_cost_of_sales_amt}, ${property_mgmt_rev_amt} );;
    value_format_name: percent_1
  }

  measure: misc_cost_of_sales_rev_pct {
    label: "COS /Rev Rentals & Other %"
    type: number
    sql: utl..udf_divide( ${misc_cost_of_sales_amt}, ${misc_rev_amt} );;
    value_format_name: percent_1
  }



  #-- Avg Rev per Spa Treatment / Golf Round

  measure: spa_rev_treatment_avg_amt {
    label: "Rev /Trtmnt Spa $"
    type: number
    sql: utl..udf_divide( ${spa_rev_amt}, ${spa_treatment_cnt} );;
    value_format_name: usd_0
  }

  measure: golf_rev_round_avg_amt {
    label: "Rev /Rnd Golf $"
    type: number
    sql: utl..udf_divide( ${golf_rev_amt}, ${golf_round_cnt} );;
    value_format_name: usd_0
  }

  #-- Occupancy

  measure: occupied_room_pct {
    label: "Rms Occ %"
    type: number
    sql: utl..udf_divide( ${occupied_room_cnt}, ${net_avail_room_cnt} );;
    value_format_name: percent_1
  }

  measure: occupied_group_room_pct {
    label: "Rms Occ % Group "
    type: number
    sql: utl..udf_divide( ${occupied_group_room_cnt}, ${net_avail_room_cnt} );;
    value_format_name: percent_1
  }

  measure: occupied_transient_room_pct {
    label: "Rms Occ % Transient"
    type: number
    sql: utl..udf_divide( ${occupied_transient_room_cnt}, ${net_avail_room_cnt} );;
    value_format_name: percent_1
  }

  measure: occupied_contract_room_pct {
    label: "Rms Occ % Contract"
    type: number
    sql: utl..udf_divide( ${occupied_contract_room_cnt}, ${net_avail_room_cnt} );;
    value_format_name: percent_1
  }


  #-- ADR

  measure: adr_amt {
    label: "ADR $"
    type: number
    sql: utl..udf_divide( ${room_rev_amt}, ${occupied_room_cnt} );;
    value_format_name: usd_0
  }

  measure: adr_transient_amt {
    label: "ADR Transient $"
    type: number
    sql: utl..udf_divide( ${transient_room_rev_amt}, ${occupied_transient_room_cnt} );;
    value_format_name: decimal_2
  }

  measure: adr_group_amt {
    label: "ADR Group $"
    type: number
    sql: utl..udf_divide( ${group_room_rev_amt}, ${occupied_group_room_cnt} );;
    value_format_name: decimal_2
  }

  #-- Room nights

  measure: room_night_transient_pct {
    label: "Rms Night Transient %"
    type: number
    sql: utl..udf_divide( ${occupied_transient_room_cnt}, ${occupied_room_cnt} );;
    value_format_name: percent_1
  }

  measure: room_night_group_pct {
    label: "Rms Night Group %"
    type: number
    sql: utl..udf_divide( ${occupied_group_room_cnt}, ${occupied_room_cnt} );;
    value_format_name: percent_1
  }

  #-- Rev PAR

  measure: rev_par_amt {
    label: "Rev PAR $"
    type: number
    sql: utl..udf_divide( ${room_rev_amt}, ${net_avail_room_cnt} );;
    value_format_name: usd_0
  }

  measure: rev_par_group_amt {
    label: "Rev PAR $ Group"
    type: number
    sql: utl..udf_divide( ${group_room_rev_amt}, ${net_avail_room_cnt} );;
    value_format_name: usd_0
  }

  measure: rev_par_transient_amt {
    label: "Rev PAR $ Transient"
    type: number
    sql: utl..udf_divide( ${transient_room_rev_amt}, ${net_avail_room_cnt} );;
    value_format_name: usd_0
  }

  #-- Rev POR

  measure: rev_por_amt {
    label: "Rev POR $"
    type: number
    sql: utl..udf_divide( ${rev_amt}, ${occupied_room_cnt} );;
    value_format_name: usd_0
  }

  #-- Avg check

  measure: rbe_check_avg_amt {
    label: "Cvrs RB&E Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_rev_amt}, ${rbe_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_banquet_check_avg_amt {
    label: "Cvrs RB&E Banquet Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_banquet_rev_amt}, ${rbe_banquet_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_catering_check_avg_amt {
    label: "Cvrs RB&E Catering Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_catering_rev_amt}, ${rbe_catering_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_outlet_check_avg_amt {
    label: "Cvrs RB&E Outlet Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_outlet_rev_amt}, ${rbe_outlet_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_room_service_check_avg_amt {
    label: "Cvrs RB&E Room Service Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_room_service_rev_amt}, ${rbe_room_service_cover_cnt} );;
    value_format_name: usd_0
  }

  measure: rbe_other_check_avg_amt {
    label: "Cvrs RB&E Other Avg $"
    type: number
    sql: utl..udf_divide( ${rbe_other_rev_amt}, ${rbe_other_cover_cnt} );;
    value_format_name: usd_0
  }

  #-- Payroll /Rev
  measure: payroll_rev_pct {
    label: "Payroll /Rev %"
    type: number
    sql: utl..udf_divide( ${payroll_amt}, ${rev_amt} );;
    value_format_name: percent_1
  }

  #-- Avg length of stay
  measure: length_of_stay_avg_amt {
    label: "Stay Length Avg Night"
    type: number
    sql: utl..udf_divide( ${occupied_transient_room_cnt} + ${occupied_group_room_cnt} + ${occupied_contract_room_cnt} + ${occupied_owner_room_cnt} + ${comp_room_cnt},
      ${arrival_cnt} );;
    value_format_name: decimal_1
  }



}
