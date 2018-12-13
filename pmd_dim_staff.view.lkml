view: pmd_dim_staff {
  sql_table_name: praw_pmd.dbo.dimpropertystaff ;;

# Keys

  dimension: property_staff_key{
    type: number
    sql: ${TABLE}.propertystaffey ;;
    hidden: yes
  }

  dimension: property_staff_title_key{
    type: number
    sql: ${TABLE}.propertystafftitlekey ;;
    hidden: yes
  }

  dimension: property_staff_dept_key{
    type: number
    sql: ${TABLE}.propertystaffdeptkey ;;
    hidden: yes
  }


  #--------------------------------------------------------------------------------
  #-- dimensions
  #--------------------------------------------------------------------------------
  dimension: first_name {
    view_label: "Employee"
    label: "First Name"
    description: "First Name"
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: last_name {
    view_label: "Employee"
    label: "Last Name"
    description: "Last Name"
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: middle_name {
    view_label: "Employee"
    label: "Middle Name"
    description: "Middle Name"
    type: string
    sql: ${TABLE}.middlenameorinitial ;;
  }

  dimension: phone {
    view_label: "Employee"
    label: "Phone"
    description: "Phone"
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: ext {
    view_label: "Employee"
    label: "Ext"
    description: "Extension"
    type: string
    sql: ${TABLE}.ext ;;
  }

  dimension: cellphone {
    view_label: "Employee"
    label: "Cell Phone"
    description: "Cell Phone"
    type: string
    sql: ${TABLE}.cellphone ;;
  }

  dimension: emailaddress {
    view_label: "Employee"
    label: "Email Address"
    description: "Email Addres"
    type: string
    sql: ${TABLE}.emailaddress ;;
  }

  dimension: regional_yn {
    view_label: "Employee"
    label: "Regional Y/N"
    description: "Regional Y/N"
    type: string
    sql: ${TABLE}.isregional ;;
  }
}
