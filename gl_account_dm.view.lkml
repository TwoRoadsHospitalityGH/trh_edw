view: gl_account_dm {
  sql_table_name: pedw.dev.GL_ACCOUNT_DM ;;

  dimension: gl_account_shk {
    type: string
    sql: ${TABLE}.GL_ACCOUNT_SHK ;;
    hidden: yes
  }

  dimension: account_type{
    label: "Account Type"
    type: string
    sql: ${TABLE}.account_type_cd ;;
  }

  dimension: segment1_cd {
    label: "Entity"
    type: number
    sql: ${TABLE}.SEGMENT1_CD;;
    value_format: "0"
  }

  dimension: segment1_name {
    label: "Entity Name"
    type: string
    sql: ${TABLE}.SEGMENT1_CD;;
  }

  dimension: Department {
    group_label: "Department"
    label: "Department"
    type: string
    sql: concat(concat(${segment2_cd}, ' - '), ${segment2_class_name}) ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment2_cd {
    group_label: "Department"
    label: "Department Number"
    type: number
    sql: ${TABLE}.SEGMENT2_CD ;;
    value_format: "0"
  }

  dimension: segment2_class_name {
    group_label: "Department"
    label: "Department Name"
    type: string
    sql: ${TABLE}.SEGMENT2_class_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment2_subclass_name {
    group_label: "Department"
    label: "SubDepartment"
    type: string
    sql: ${TABLE}.SEGMENT2_subclass_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: Account {
    group_label: "Account"
    label: "Account"
    type: string
    sql: concat(concat(${segment3_cd}, ' - '),${segment3_name})  ;;
  }

  dimension: segment3_cd {
    group_label: "Account"
    label: "Account Number"
    type: number
    sql: ${TABLE}.SEGMENT3_CD ;;
    value_format: "0"
  }

  dimension: segment3_name {
    group_label: "Account"
    label: "Account Name"
    type: string
    sql: ${TABLE}.SEGMENT3_NAME ;;
  }

  dimension: segment3_type_name {
    group_label: "Account"
    label: "Account Type"
    type: string
    sql: ${TABLE}.SEGMENT3_type_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment3_class_name {
    group_label: "Account"
    label: "Account Class"
    type: string
    sql: ${TABLE}.SEGMENT3_class_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment3_subclass_name {
    group_label: "Account"
    label: "Account SubClass"
    type: string
    sql: ${TABLE}.SEGMENT3_subclass_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment4_cd {
    group_label: "Other Segments"
    label: "Segment4"
    type: number
    sql: ${TABLE}.SEGMENT4_CD ;;
    value_format: "0"
  }

  dimension: segment4_name {
    group_label: "Other Segments"
    label: "Segment4 Name"
    type: string
    sql: ${TABLE}.SEGMENT4_NAME ;;
  }

  dimension: segment5_cd {
    group_label: "Other Segments"
    label: "Segment5"
    type: number
    sql: ${TABLE}.SEGMENT5_CD ;;
    value_format: "0"
  }

  dimension: segment5_name {
    group_label: "Other Segments"
    label: "Segment5 Name"
    type: string
    sql: ${TABLE}.SEGMENT5_NAME ;;
  }

# ----- Sets of fields for drilling ------
  set: gl_account_ds {
    fields: [
      segment2_class_name,
      segment3_type_name
    ]
  }
}
