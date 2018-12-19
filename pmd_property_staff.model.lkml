connection: "edw"
include: "*.view"         # include all views in this project

label: "Property Staff"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from pedw.fact.property_dm ;;
  max_cache_age: "8 hours"
}

explore: pmd_dim_staff {
  group_label: "***Development***"
  label: "Property Staff"
  view_label: "  Employee"
  persist_with: model_caching_dg
  case_sensitive: no

  access_filter: {
    field: user_property_fdm.user_id
    user_attribute: looker_ldap_user_id
  }

  join: pmd_dim_staff_dept {
    from:  pmd_dim_staff_dept
    sql_on: ${pmd_dim_staff.property_staff_dept_key} = ${pmd_dim_staff_dept.property_staff_dept_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: pmd_dim_staff_title {
    from:  pmd_dim_staff_title
    sql_on: ${pmd_dim_staff.property_staff_title_key} = ${pmd_dim_staff_title.property_staff_title_key} ;;
    type: inner
    relationship: many_to_one
  }

  join: pmd_staff_property_lnk {
      from: pmd_dim_staff_property
      sql_on: ${pmd_staff_property_lnk.property_staff_key} = ${pmd_dim_staff.property_staff_key} ;;
      relationship: many_to_one
  }

  join: property_dm {
    from: property_dm
    view_label: " Property"
    sql_on: ${property_dm.property_key} = ${pmd_staff_property_lnk.property_key} ;;
    type: inner
    relationship: one_to_many
  }


  join: user_property_fdm {
    from:  user_property_fdm
    sql_on: ${user_property_fdm.property_key} = ${property_dm.property_key} ;;
    type: inner
    relationship: many_to_one
  }
}
