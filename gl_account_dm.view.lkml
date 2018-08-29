view: gl_account_dm {
  sql_table_name: pedw.dev.GL_ACCOUNT_DM ;;

  dimension: gl_account_str_shk {
    type: string
    sql: ${TABLE}.GL_ACCOUNT_STR_SHK ;;
    hidden: yes
  }

  dimension: account_type{
    label: "Account Type"
    type: string
    sql: ${TABLE}.account_type_cd ;;
  }

  dimension: account_string{
    label: "Account String"
    type: string
    sql: concat(concat(concat(concat(concat(concat(concat(concat(${segment1_cd}, '-'), ${segment2_cd}), '-'),${segment3_cd}), '-'), ${segment4_cd}), '-'), ${segment5_cd}) ;;
  }

  dimension: gop_bt{
    label: "GOP"
    description: "Gross Operating Profit"
    type: string
    sql: ${TABLE}.gop_bt ;;
  }

  dimension: agop_bt{
    label: "AGOP"
    description: "Adjusted Gross Operating Profit"
    type: string
    sql: ${TABLE}.agop_bt ;;
  }

  dimension: segment1_cd {
    group_label: "Seg1 - Entity"
    label: "Entity"
    type: number
    sql: ${TABLE}.SEGMENT1_CD;;
    value_format: "0"
  }

  dimension: segment1_name {
    group_label: "Seg1 - Entity"
    label: "Entity Name"
    type: string
    sql: ${TABLE}.SEGMENT1_NAME;;
  }

  dimension: Department {
    group_label: "Seg2 - Department"
    label: "Department"
    type: string
    sql: concat(concat(${segment2_cd}, ' - '), ${segment2_name}) ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment2_cd {
    group_label: "Seg2 - Department"
    label: "Department Number"
    type: string
    sql: ${TABLE}.SEGMENT2_CD ;;
    value_format: "0"
  }

  dimension: segment2_name {
    group_label: "Seg2 - Department"
    label: "Department Name"
    type: string
    sql: ${TABLE}.SEGMENT2_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment2_class_name {
    group_label: "Seg2 - Department"
    label: "Department Group"
    type: string
    sql: ${TABLE}.SEGMENT2_class_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment2_subclass_name {
    group_label: "Seg2 - Department"
    label: "Departmnet Rollup"
    type: string
    sql: ${TABLE}.SEGMENT2_subclass_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: Account {
    group_label: "Seg3 - Account"
    label: "Account"
    type: string
    sql: concat(concat(${segment3_cd}, ' - '),${segment3_name})  ;;
  }

  dimension: segment3_cd {
    group_label: "Seg3 - Account"
    label: "Account Number"
    type: number
    sql: ${TABLE}.SEGMENT3_CD ;;
    value_format: "0"
  }

  dimension: segment3_name {
    group_label: "Seg3 - Account"
    label: "Account Name"
    type: string
    sql: ${TABLE}.SEGMENT3_NAME ;;
  }

  dimension: segment3_type_name {
    group_label: "Seg3 - Account"
    label: "Account Group"
    type: string
    sql: ${TABLE}.SEGMENT3_class_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment3_class_name {
    group_label: "Seg3 - Account"
    label: "Account Class"
    type: string
    sql: ${TABLE}.SEGMENT3_type_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment3_subclass_name {
    group_label: "Seg3 - Account"
    label: "Account Sub Group"
    type: string
    sql: ${TABLE}.SEGMENT3_subclass_name ;;
    drill_fields: [gl_account_ds*,property_dm.property_ds*]
  }

  dimension: segment4_cd {
    group_label: "Seg4 - Sub Account"
    label: "Segment4"
    type: number
    sql: ${TABLE}.SEGMENT4_CD ;;
    value_format: "0"
  }

  dimension: segment4_name {
    group_label: "Seg4 - Sub Account"
    label: "Segment4 Name"
    type: string
    sql: ${TABLE}.SEGMENT4_NAME ;;
  }

  dimension: segment5_cd {
    group_label: "Seg5 - Future"
    label: "Segment5"
    type: number
    sql: ${TABLE}.SEGMENT5_CD ;;
    value_format: "0"
  }

  dimension: segment5_name {
    group_label: "Seg5 - Future"
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
