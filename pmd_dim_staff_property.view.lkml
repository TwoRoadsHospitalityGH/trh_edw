view: pmd_dim_staff_property {
  sql_table_name: praw_pmd.dbo.lnk_property_propertystaff ;;

# Keys

  dimension: property_key{
    type: number
    sql: ${TABLE}.propertykey ;;
    hidden: yes
  }

  dimension: property_staff_key{
    type: number
    sql: ${TABLE}.propertystaffkey ;;
    hidden: yes
  }



}
