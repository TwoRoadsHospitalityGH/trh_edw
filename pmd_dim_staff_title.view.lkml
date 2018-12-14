view: pmd_dim_staff_title {
  sql_table_name: praw_pmd.dbo.dimpropertystafftitle ;;

# Keys

  dimension: property_staff_title_key{
    type: number
    sql: ${TABLE}.propertystafftitlekey ;;
    hidden: yes
  }


  #--------------------------------------------------------------------------------
  #-- dimensions
  #--------------------------------------------------------------------------------
  dimension: staff_title {
    view_label: "Employee"
    label: "Department"
    description: "Employee Department"
    type: string
    sql: ${TABLE}.stafftitle ;;
  }
}
