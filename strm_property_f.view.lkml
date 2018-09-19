view: strm_property_f {
  sql_table_name: pedw.dev.strm_property_f ;;

# Keys

  dimension: property_key{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: month_date_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.month_date_sid ;;
    hidden: yes
  }

# measures

  #-- property
  measure: property_cnt {
    group_label: " Property"
    label: "Properties"
    description: "Count of distinct properties."
    type: count_distinct
    sql: ${property_key} ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: property_rev_amt {
    group_label: " Property"
    label: "Pr Rev $"
    description: "Property Revenue $"
    type: sum
    sql: ${TABLE}.property_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: property_rbe_rev_amt {
    group_label: " Property"
    label: "Pr Rev RB&E $"
    description: "Property RB&E Revenue $"
    type: sum
    sql: ${TABLE}.property_rbe_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: property_room_rev_amt {
    group_label: " Property"
    label: "Pr Rev Room $"
    description: "Property Room Revenue $"
    type: sum
    sql: ${TABLE}.property_room_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: property_room_group_rev_amt {
    group_label: " Property"
    label: "Pr Rev Room Group $"
    description: "Property Room Group Revenue $"
    type: sum
    sql: ${TABLE}.property_room_group_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: property_room_transient_rev_amt {
    group_label: " Property"
    label: "Pr Rev Room Transient $"
    description: "Property Room Transient Revenue $"
    type: sum
    sql: ${TABLE}.property_room_transient_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: property_room_contract_rev_amt {
    group_label: " Property"
    label: "Pr Rev Room Contract $"
    description: "Property Room Contract Revenue $"
    type: sum
    sql: ${TABLE}.property_room_Contract_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: property_room_other_rev_amt {
    group_label: " Property"
    label: "Pr Rev Room Other $"
    description: "Property Room Other Revenue $"
    type: sum
    sql: ${TABLE}.property_room_other_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: property_room_avail_cnt {
    group_label: " Property"
    label: "Pr Rooms Available"
    description: "Property Rooms Available"
    type: sum
    sql: ${TABLE}.property_room_avail_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: property_room_sold_cnt {
    group_label: " Property"
    label: "Pr Rooms Sold"
    description: "Property Rooms Sold"
    type: sum
    sql: ${TABLE}.property_room_sold_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: property_room_contract_sold_cnt {
    group_label: " Property"
    label: "Pr Rooms Sold Contract"
    description: "Property Contract Rooms Sold"
    type: sum
    sql: ${TABLE}.property_room_contract_sold_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: property_room_group_sold_cnt {
    group_label: " Property"
    label: "Pr Rooms Sold Group"
    description: "Property Group Rooms Sold"
    type: sum
    sql: ${TABLE}.property_room_group_sold_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: property_room_transient_sold_cnt {
    group_label: " Property"
    label: "Pr Rooms Sold Transient"
    description: "Property Transient Rooms Sold"
    type: sum
    sql: ${TABLE}.property_room_transient_sold_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: property_occupancy_rate_pct {
    group_label: " Property"
    label: "Pr  Occupancy Rate"
    description: "Property Occupancy Rate"
    type: number
    sql: utl..udf_divide( ${property_room_sold_cnt}, ${property_room_avail_cnt} );;
    value_format_name: percent_1
    hidden: no
  }

  measure: property_adr_amt {
    group_label: " Property"
    label: "Pr  ADR"
    description: "Property Average Daily Rate"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_sold_cnt} );;
    value_format_name: usd
    hidden: no
  }

  measure: property_revpar_amt {
    group_label: " Property"
    label: "Pr  RevPAR"
    description: "Property Revenue Per Available Room"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_avail_cnt} );;
    value_format_name: usd
    hidden: no
  }

  measure: property_occ_index_pct {
    group_label: " Property"
    label: "Pr Index Occupancy"
    description: "Pr Occupancy Rate / Cs Occupancy Rate"
    type: number
    sql: utl..udf_divide( ${property_occupancy_rate_pct}, ${compset_occupancy_rate_pct} );;
    value_format_name: percent_1
    hidden: no
  }

  measure: property_occ_index_prev_pct {
    view_label: "  % Previous"
    label: "Pr Index Occupancy"
    description: "Pr Occupancy Rate / Cs Occupancy Rate"
    type: percent_of_previous
    sql: ${property_occ_index_pct} ;;
    value_format: "0.0\%"
    hidden: no
  }

  measure: property_adr_index_pct {
    group_label: " Property"
    label: "Pr Index ADR"
    description: "Pr ADR / Cs ADR"
    type: number
    sql: utl..udf_divide( ${property_adr_amt}, ${compset_adr_amt} );;
    value_format_name: percent_1
    hidden: no
  }

  measure: property_adr_index_prev_pct {
    view_label: "  % Previous"
    label: "Pr Index ADR"
    description: "Pr ADR / Cs ADR"
    type: percent_of_previous
    sql: ${property_adr_index_pct} ;;
    value_format: "0.0\%"
    hidden: no
  }

  measure: property_revpar_index_pct {
    group_label: " Property"
    label: "Pr Index RevPAR"
    description: "Pr RevPAR / Cs RevPAR"
    type: number
    sql: utl..udf_divide( ${property_revpar_amt}, ${compset_revpar_amt} );;
    value_format_name: percent_1
    hidden: no
  }

  measure: property_revpar_index_prev_pct {
    view_label: "  % Previous"
    label: "Pr Index RevPAR"
    description: "Pr RevPAR / Cs RevPAR"
    type: percent_of_previous
    sql: ${property_revpar_index_pct} ;;
    value_format: "0.0\%"
    hidden: no
  }

  #-- compset
  measure: compset_rev_amt {
    group_label: "Compset"
    label: "Cs Rev $"
    description: "Compset Revenue $"
    type: sum
    sql: ${TABLE}.compset_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: compset_rbe_rev_amt {
    group_label: "Compset"
    label: "Cs Rev RB&E $"
    description: "Compset RB&E Revenue $"
    type: sum
    sql: ${TABLE}.compset_rbe_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: compset_room_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Room $"
    description: "Compset Room Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: compset_room_group_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Room Group $"
    description: "Compset Room Group Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_group_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: compset_room_transient_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Room Transient $"
    description: "Compset Room Transient Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_transient_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: compset_room_contract_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Room Contract $"
    description: "Compset Room Contract Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_Contract_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: compset_room_other_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Room Other $"
    description: "Compset Room Other Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_other_rev_amt ;;
    value_format_name: usd_0
    hidden: no
  }

  measure: compset_room_avail_cnt {
    group_label: "Compset"
    label: "Cs Rooms Available"
    description: "Compset Rooms Available"
    type: sum
    sql: ${TABLE}.compset_room_avail_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: compset_room_sold_cnt {
    group_label: "Compset"
    label: "Cs Rooms Sold"
    description: "Compset Rooms Sold"
    type: sum
    sql: ${TABLE}.compset_room_sold_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: compset_room_contract_sold_cnt {
    group_label: "Compset"
    label: "Cs Rooms Sold Contract"
    description: "Compset Contract Rooms Sold"
    type: sum
    sql: ${TABLE}.compset_room_contract_sold_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: compset_room_group_sold_cnt {
    group_label: "Compset"
    label: "Cs Rooms Sold Group"
    description: "Compset Group Rooms Sold"
    type: sum
    sql: ${TABLE}.compset_room_group_sold_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: compset_room_transient_sold_cnt {
    group_label: "Compset"
    label: "Cs Rooms Sold Transient"
    description: "Compset Transient Rooms Sold"
    type: sum
    sql: ${TABLE}.compset_room_transient_sold_cnt ;;
    value_format_name: decimal_0
    hidden: no
  }

  measure: compset_occupancy_rate_pct {
    group_label: "Compset"
    label: "Cs  Occupancy Rate"
    description: "Compset Occupancy Rate"
    type: number
    sql: utl..udf_divide( ${compset_room_sold_cnt}, ${compset_room_avail_cnt} );;
    value_format_name: percent_1
    hidden: no
  }

  measure: compset_adr_amt {
    group_label: "Compset"
    label: "Cs  ADR"
    description: "Compset Average Daily Rate"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_sold_cnt} );;
    value_format_name: usd
    hidden: no
  }

  measure: compset_revpar_amt {
    group_label: "Compset"
    label: "Cs  RevPAR"
    description: "Compset Revenue Per Available Room"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_avail_cnt} );;
    value_format_name: usd
    hidden: no
  }

}
