view: pmd_dim_staff_dept {
    sql_table_name: praw_pmd.dbo.dimpropertystaffdept ;;

# Keys

    dimension: property_staff_dept_key{
      type: number
      sql: ${TABLE}.propertystaffdeptkey ;;
      hidden: yes
    }


    #--------------------------------------------------------------------------------
    #-- dimensions
    #--------------------------------------------------------------------------------
    dimension: property_staff_dept {
      view_label: "Employee"
      label: "Department"
      description: "Employee Department"
      type: string
      sql: ${TABLE}.propertystaffdept ;;
    }
    }
