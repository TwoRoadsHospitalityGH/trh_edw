view: property_dm {
  sql_table_name: pedw.fact.PROPERTY_DM ;;

  dimension: property_key {
    label: "Property Key PMD"
    description: "Property Code within PMD."
    type: number
    sql: ${TABLE}.PROPERTY_KEY ;;
    hidden: no
  }

  dimension: property_name_sort {
    type: string
    sql: ${TABLE}.property_name_sort  ;;
    hidden: yes
  }

  dimension: property_name {
    label: "Property"
    description: "Name of property."
    type: string
    sql: ${TABLE}.PROPERTY_NAME ;;
    drill_fields: [property_ds*]
    order_by_field: property_name_sort

    link: {
      label: "Website"
      url: "http://www.google.com/search?q={{ value | encode_uri }}+about&btnI"
      icon_url: "http://www.google.com/s2/favicons?domain={{ value }}"
    }

#     link: {
#       label: "{{value}} Analytics Dashboard"
#       url: "/dashboards/3?Property%20Name={{ value | encode_uri }}"
#       icon_url: "http://www.looker.com/favicon.ico"
#     }

  }

  dimension: marketing_name {
    label: "Marketing Name"
    type: string
    sql: ${TABLE}.MARKETING_NAME ;;
    drill_fields: [property_ds*]
    hidden: yes
  }

  dimension: brand_cd {
    label: "Brand Abbreviation"
    description: "Abbreviation of brand name."
    type: string
    sql: ${TABLE}.brand_cd ;;
  }

  dimension: brand_name {
    label: "Brand Name"
    description: "Property brand name."
    type: string
    sql: ${TABLE}.brand_name ;;
    drill_fields: [property_ds*]
  }

  dimension: address {
    label: "Address"
    description: "Property address."
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: city_name {
    label: "City"
    description: "Property city."
    type: string
    sql: ${TABLE}.CITY_NAME ;;
    drill_fields: [property_ds*]
  }

  dimension: state_province_cd {
    label: "State/Province Abbreviation"
    description: "Property State/Province abbreviation."
    type: string
    sql: ${TABLE}.STATE_PROVINCE_CD ;;
  }

  dimension: state_province_name {
    label: "State/Province"
    description: "Property State/Province."
    type: string
    sql: ${TABLE}.STATE_PROVINCE_NAME ;;
    drill_fields: [property_ds*]
  }

  dimension: zip_cd {
    label: "Zip Code"
    description: "Property zip code"
    type: string
    sql: ${TABLE}.ZIP_CD ;;
    drill_fields: [property_ds*]
  }

  dimension: property_lat {
    type: number
    sql: ${TABLE}.latitude ;;
    hidden: yes
  }

  dimension: property_long {
    type: number
    sql: ${TABLE}.longitude ;;
    hidden: yes
  }

  dimension: property_location {
    label: "Lat/Long"
    description: "Property location."
    type: location
    sql_latitude: ${property_lat} ;;
    sql_longitude: ${property_long} ;;
  }

  dimension: country_name {
    label: "Country"
    description: "Property country."
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
    drill_fields: [property_ds*]
  }

  dimension: region_name {
    label: "Region"
    description: "Property region."
    type: string
    sql: ${TABLE}.REGION_NAME ;;
    drill_fields: [property_ds*]
  }

  dimension: location_type_name {
    label: "Location Type"
    description: "Type of property location."
    type: string
    sql: ${TABLE}.location_type_name ;;
  }

  dimension: ownership_group_name {
    label: "Ownership Group"
    description: "Property owner."
    type: string
    sql: ${TABLE}.ownership_group_name ;;
  }

  dimension: evp_full_last_first {
    label: "Regional Ops Leader"
    description: "Regoinal operations leader."
    type: string
    sql: ${TABLE}.regional_ops_ldr_full_name ;;
    drill_fields: [property_ds*]
  }

  dimension: regional_fnc_ldr_full_name {
    label: "Regional Fnc Leader"
    description: "Regional financial leader."
    type: string
    sql: ${TABLE}.regional_fnc_ldr_full_name ;;
    drill_fields: [property_ds*]
  }

  dimension: regional_rev_mngr_full_name {
    label: "Regional Rev Mngr"
    description: "Regional Revenue Manager."
    type: string
    sql: ${TABLE}.regional_rm_ldr_full_name ;;
    drill_fields: [property_ds*]
  }

  dimension: regional_sales_ldr_full_name {
    label: "Regional Sales Leader"
    description: "Regional Sales Leader."
    type: string
    sql: ${TABLE}.regional_sales_ldr_full_name ;;
    drill_fields: [property_ds*]
  }

  dimension: phone_no {
    label: "Phone Number"
    description: "Property phone number."
    type: string
    sql: ${TABLE}.PHONE_NO ;;
  }

  dimension: website_url {
    label: "Website URL"
    description: "Property website URL."
    type: string
    sql: ${TABLE}.WEBSITE_URL ;;
  }

  dimension: opening_dt {
    label: "Opening Date"
    description: "Property opening date."
    type: date
    sql: ${TABLE}.opening_dt ;;
  }

  dimension: transition_dt {
    label: "Transition Date"
    description: "Property transition date."
    type: date
    sql: ${TABLE}.transition_dt ;;
  }

  dimension: same_store_financial_fl {
    label: "Same Store Financial"
    description: "Indication of same store financials property."
    type: yesno
    sql: ${TABLE}.same_store_financial_bt = 1 ;;
  }

  dimension: same_store_revenue_fl {
    label: "Same Store Revenue"
    description: "Indication of same store revenue property."
    type: yesno
    sql: ${TABLE}.same_store_revenue_bt = 1 ;;
  }

  dimension: closed_fl {
    label: "Closed"
    description: "Indication of closed property."
    type: yesno
    sql: ${TABLE}.closed_bt = 1 ;;
  }

  dimension: active_fl {
    label: "Active"
    description: "Indication of active property."
    type: yesno
    sql: ${TABLE}.active_bt = 1 ;;
  }

  dimension: mih_eligible_fl {
    label: "MIH Eligible"
    description: "Indication of MIH eligible property."
    type: yesno
    sql: ${TABLE}.mih_eligible_bt = 1 ;;
  }

  dimension: gl_entity_id {
    label: "GL Entities"
    description: "GL Entity."
    type: string
    sql: ${TABLE}.oracle_entity_str ;;
  }

  dimension: tripadvisor_id {
    label: "Trip Advisor ID"
    description: "Trip Advisor ID."
    type: string
    sql: ${TABLE}.tripadvisor_id_str ;;
  }

  dimension: revinate_guest_id {
    label: "Revinate Guest ID"
    description: "Revinate Guest ID."
    type: string
    sql: ${TABLE}.revinate_guest_id_str ;;
  }

  dimension: revinate_meeting_id {
    label: "Revinate Meeting ID"
    description: "Revinate Meeting ID."
    type: string
    sql: ${TABLE}.revinate_meeting_id_str ;;
  }

  dimension: str_id {
    label: "STR #"
    description: "Smith Travel Census Number."
    type: string
    sql: ${TABLE}.str_id_str ;;
  }


 #   filters

#   filter: same_store_financial {
#     label: "Same Store Financial"
#     type: yesno
#     sql: ${TABLE}.same_store_financial_bt = 1 ;;
#   }
#
#   filter: same_store_revenue {
#     label: "Same Store Revenue"
#     type: yesno
#     sql: ${TABLE}.same_store_revenue_bt = 1 ;;
#   }
#
#   filter: closed {
#     label: "Closed"
#     type: yesno
#     sql: ${TABLE}.closed_bt = 1 ;;
#   }
#
#   filter: active {
#     label: "Active"
#     type: yesno
#     sql: ${TABLE}.active_bt = 1 ;;
#   }
#
#   filter: mih_eligible {
#     label: "MIH Eligible"
#     type: yesno
#     sql: ${TABLE}.mih_eligible_bt = 1 ;;
#   }

  filter: gl_entity_bt {
    label: "GL Entity"
    type: yesno
    sql: ${TABLE}.gl_entity_bt = 1 ;;
    hidden: yes
  }

  # ----- Sets of fields for drilling ------
  set: property_ds {
    fields: [
      brand_name,
      property_name,
      ownership_group_name,
      marketing_name,
      evp_full_last_first,
      regional_fnc_ldr_full_name,
      regional_rev_mngr_full_name,
      regional_sales_ldr_full_name,
      region_name,
      state_province_name,
      city_name
    ]
  }
}
