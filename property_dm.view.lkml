view: property_dm {
  sql_table_name: pedw.fact.PROPERTY_DM ;;

  dimension: property_key {
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
    label: "Property Name"
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
    type: string
    sql: ${TABLE}.MARKETING_NAME ;;
    drill_fields: [property_ds*]
  }

  dimension: brand_cd {
    label: "Brand Code"
    type: string
    sql: ${TABLE}.brand_cd ;;
  }

  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand_name ;;
    drill_fields: [property_ds*]
  }

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.CITY_NAME ;;
  }

  dimension: state_province_cd {
    label: "State/Providence Code"
    type: string
    sql: ${TABLE}.STATE_PROVINCE_CD ;;
  }

  dimension: state_province_name {
    type: string
    sql: ${TABLE}.STATE_PROVINCE_NAME ;;
  }

  dimension: zip_cd {
    label: "Zip Code"
    type: string
    sql: ${TABLE}.ZIP_CD ;;
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
    type: location
    sql_latitude: ${property_lat} ;;
    sql_longitude: ${property_long} ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.REGION_NAME ;;
    drill_fields: [property_ds*]
  }

  dimension: location_type_name {
    type: string
    sql: ${TABLE}.location_type_name ;;
  }

  dimension: ownership_group_name {
    type: string
    sql: ${TABLE}.ownership_group_name ;;
  }

  dimension: evp_full_last_first {
    label: "Regional Ops Leader Name"
    type: string
    sql: ${TABLE}.evp_full_last_first ;;
  }

  dimension: phone_no {
    label: "Phone Number"
    type: string
    sql: ${TABLE}.PHONE_NO ;;
  }

  dimension: website_url {
    type: string
    sql: ${TABLE}.WEBSITE_URL ;;
  }

  dimension: opening_dt {
    label: "Opening Date"
    type: date
    sql: ${TABLE}.opening_dt ;;
  }

  dimension: transition_dt {
    label: "Transition Date"
    type: date
    sql: ${TABLE}.transition_dt ;;
  }

  dimension: same_store_financial_fl {
    label: "Same Store Financial"
    type: yesno
    sql: ${TABLE}.same_store_financial_bt = 1 ;;
  }

  dimension: same_store_revenue_fl {
    label: "Same Store Revenue"
    type: yesno
    sql: ${TABLE}.same_store_revenue_bt = 1 ;;
  }

  dimension: closed_fl {
    label: "Closed"
    type: yesno
    sql: ${TABLE}.closed_bt = 1 ;;
  }

  dimension: active_fl {
    label: "Active"
    type: yesno
    sql: ${TABLE}.active_bt = 1 ;;
  }

  dimension: mih_eligible_fl {
    label: "MIH Eligible"
    type: yesno
    sql: ${TABLE}.mih_eligible_bt = 1 ;;
  }


 #   filters

  filter: same_store_financial {
    label: "Same Store Financial"
    type: yesno
    sql: ${TABLE}.same_store_financial_bt = 1 ;;
  }

  filter: same_store_revenue {
    label: "Same Store Revenue"
    type: yesno
    sql: ${TABLE}.same_store_revenue_bt = 1 ;;
  }

  filter: closed {
    label: "Closed"
    type: yesno
    sql: ${TABLE}.closed_bt = 1 ;;
  }

  filter: active {
    label: "Active"
    type: yesno
    sql: ${TABLE}.active_bt = 1 ;;
  }

  filter: mih_eligible {
    label: "MIH Eligible"
    type: yesno
    sql: ${TABLE}.mih_eligible_bt = 1 ;;
  }

  filter: gl_entity_bt {
    label: "GL Entity"
    type: yesno
    sql: ${TABLE}.gl_entity_bt = 1 ;;
  }

  #--------------
  #   filters

#   filter: brand {
#     type: string
#     sql: ${brand_name} ;;
#     }
#
#   filter: ops_leader{
#     type: string
#     sql: = ${evp_full_last_first}  ;;
#   }

  # ----- Sets of fields for drilling ------
  set: property_ds {
    fields: [
      brand_name,
      property_name,
      gl_account_dm.seg2_department_name,
      gl_account_dm.seg2_subdepartment_name,
      date_dm.fiscal_period_label,
      ownership_group_name,
      marketing_name,
      region_name
    ]
  }
}
