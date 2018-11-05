view: inntopia_res_property_f_msr_ty {
  derived_table: {
    sql: select 1 as key_no ;;
  }

  dimension: key_no {
    primary_key: yes
    type: number
    sql: ${TABLE}.key_no ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: tyly_bt {
    sql: ${inntopia_res_property_f.ty_bt} ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- measures
  #-------------------------------------------------------------------------------------------

  measure: record_cnt {
    label: "Records"
    description: "Records from table."
    type: sum
    sql: ${tyly_bt} ;;
    value_format_name: decimal_0
    hidden: yes
  }

  measure: reservation_cnt {
    label: "Reservations"
    description: "Count of distinct reservations"
    type: count_distinct
    sql: iff( ${tyly_bt} = 1, ${inntopia_res_property_f.reservation_key}, to_number( null ) );;
    value_format_name: decimal_0
  }
  }
