connection: "edw"
include: "*.view"         # include all views in this project

label: "Guest Experience"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.fact.guest_experience_f ;;
  max_cache_age: "8 hours"
}

explore: guest_experience_rpt {
  group_label: "***Alpha Releases***"
  label: "Revinate Detail (alpha)"
  persist_with: model_caching_dg
  view_label: "    Measures"
  case_sensitive: no

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: atmp_userid
  }

  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${guest_experience_rpt.property_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: response_date_dm {
    from: date_dm
    view_label: "  Date Response"
    sql_on: ${response_date_dm.date_sid} = ${guest_experience_rpt.response_date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: checkin_date_dm {
    from: date_dm
    view_label: "  Date Checkin"
    sql_on: ${checkin_date_dm.date_sid} = ${guest_experience_rpt.checkin_date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: checkout_date_dm {
    from: date_dm
    view_label: "  Date Checkout"
    sql_on: ${checkout_date_dm.date_sid} = ${guest_experience_rpt.checkout_date_sid};;
    type: inner
    relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${guest_experience_rpt.property_key} ;;
    type: inner
    relationship: many_to_one
  }

}
