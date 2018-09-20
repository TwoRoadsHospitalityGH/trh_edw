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
  }

  measure: property_rev_amt {
    group_label: " Property"
    label: "Pr Rev $"
    description: "Property Revenue $"
    type: sum
    sql: ${TABLE}.property_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_rbe_rev_amt {
    group_label: " Property"
    label: "Pr Rev RB&E $"
    description: "Property RB&E Revenue $"
    type: sum
    sql: ${TABLE}.property_rbe_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rooms $"
    description: "Property Rooms Revenue $"
    type: sum
    sql: ${TABLE}.property_room_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_group_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rooms Group $"
    description: "Property Rooms Group Revenue $"
    type: sum
    sql: ${TABLE}.property_room_group_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_transient_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rooms Transient $"
    description: "Property Rooms Transient Revenue $"
    type: sum
    sql: ${TABLE}.property_room_transient_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_contract_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rooms Contract $"
    description: "Property Rooms Contract Revenue $"
    type: sum
    sql: ${TABLE}.property_room_Contract_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_other_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rooms Other $"
    description: "Property Rooms Other Revenue $"
    type: sum
    sql: ${TABLE}.property_room_other_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_avail_cnt {
    group_label: " Property"
    label: "Pr Rooms Available"
    description: "Property Rooms Available"
    type: sum
    sql: ${TABLE}.property_room_avail_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_sold_cnt {
    group_label: " Property"
    label: "Pr Rooms Sold"
    description: "Property Rooms Sold"
    type: sum
    sql: ${TABLE}.property_room_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_contract_sold_cnt {
    group_label: " Property"
    label: "Pr Rooms Sold Contract"
    description: "Property Contract Rooms Sold"
    type: sum
    sql: ${TABLE}.property_room_contract_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_group_sold_cnt {
    group_label: " Property"
    label: "Pr Rooms Sold Group"
    description: "Property Group Rooms Sold"
    type: sum
    sql: ${TABLE}.property_room_group_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_transient_sold_cnt {
    group_label: " Property"
    label: "Pr Rooms Sold Transient"
    description: "Property Transient Rooms Sold"
    type: sum
    sql: ${TABLE}.property_room_transient_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_occupancy_rate_pct {
    group_label: " Property"
    label: "Pr  Occupancy Rate"
    description: "Property Occupancy Rate"
    type: number
    sql: utl..udf_divide( ${property_room_sold_cnt}, ${property_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: property_adr_amt {
    group_label: " Property"
    label: "Pr  ADR"
    description: "Property Average Daily Rate"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_sold_cnt} );;
    value_format_name: usd
  }

  measure: property_revpar_amt {
    group_label: " Property"
    label: "Pr  RevPAR"
    description: "Property Revenue Per Available Room"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_avail_cnt} );;
    value_format_name: usd
  }

  measure: property_occ_index_pct {
    group_label: " Property"
    label: "Pr Index Occupancy"
    description: "Pr Occupancy Rate / Cs Occupancy Rate"
    type: number
    sql: utl..udf_divide( ${property_occupancy_rate_pct}, ${compset_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: property_occ_index_prev_pct {
    view_label: "  % Previous"
    label: "Pr Index Occupancy %Prev"
    description: "Pr Occupancy Rate / Cs Occupancy Rate"
    type: percent_of_previous
    sql: ${property_occ_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: property_adr_index_pct {
    group_label: " Property"
    label: "Pr Index ADR"
    description: "Pr ADR / Cs ADR"
    type: number
    sql: utl..udf_divide( ${property_adr_amt}, ${compset_adr_amt} );;
    value_format_name: percent_1
  }

  measure: property_adr_index_prev_pct {
    view_label: "  % Previous"
    label: "Pr Index ADR %Prev"
    description: "Pr ADR / Cs ADR"
    type: percent_of_previous
    sql: ${property_adr_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: property_revpar_index_pct {
    group_label: " Property"
    label: "Pr Index RevPAR"
    description: "Pr RevPAR / Cs RevPAR"
    type: number
    sql: utl..udf_divide( ${property_revpar_amt}, ${compset_revpar_amt} );;
    value_format_name: percent_1
  }

  measure: property_revpar_index_prev_pct {
    view_label: "  % Previous"
    label: "Pr Index RevPAR %Prev"
    description: "Pr RevPAR / Cs RevPAR"
    type: percent_of_previous
    sql: ${property_revpar_index_pct} ;;
    value_format: "0.0\%"
  }

  #-- compset
  measure: compset_rev_amt {
    group_label: "Compset"
    label: "Cs Rev $"
    description: "Compset Revenue $"
    type: sum
    sql: ${TABLE}.compset_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_rbe_rev_amt {
    group_label: "Compset"
    label: "Cs Rev RB&E $"
    description: "Compset RB&E Revenue $"
    type: sum
    sql: ${TABLE}.compset_rbe_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rooms $"
    description: "Compset Rooms Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_group_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rooms Group $"
    description: "Compset Rooms Group Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_group_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_transient_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rooms Transient $"
    description: "Compset Rooms Transient Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_transient_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_contract_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rooms Contract $"
    description: "Compset Rooms Contract Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_Contract_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_other_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rooms Other $"
    description: "Compset Rooms Other Revenue $"
    type: sum
    sql: ${TABLE}.compset_room_other_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_avail_cnt {
    group_label: "Compset"
    label: "Cs Rooms Available"
    description: "Compset Rooms Available"
    type: sum
    sql: ${TABLE}.compset_room_avail_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_sold_cnt {
    group_label: "Compset"
    label: "Cs Rooms Sold"
    description: "Compset Rooms Sold"
    type: sum
    sql: ${TABLE}.compset_room_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_contract_sold_cnt {
    group_label: "Compset"
    label: "Cs Rooms Sold Contract"
    description: "Compset Contract Rooms Sold"
    type: sum
    sql: ${TABLE}.compset_room_contract_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_group_sold_cnt {
    group_label: "Compset"
    label: "Cs Rooms Sold Group"
    description: "Compset Group Rooms Sold"
    type: sum
    sql: ${TABLE}.compset_room_group_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_transient_sold_cnt {
    group_label: "Compset"
    label: "Cs Rooms Sold Transient"
    description: "Compset Transient Rooms Sold"
    type: sum
    sql: ${TABLE}.compset_room_transient_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_occupancy_rate_pct {
    group_label: "Compset"
    label: "Cs  Occupancy Rate"
    description: "Compset Occupancy Rate"
    type: number
    sql: utl..udf_divide( ${compset_room_sold_cnt}, ${compset_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: compset_adr_amt {
    group_label: "Compset"
    label: "Cs  ADR"
    description: "Compset Average Daily Rate"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_sold_cnt} );;
    value_format_name: usd
  }

  measure: compset_revpar_amt {
    group_label: "Compset"
    label: "Cs  RevPAR"
    description: "Compset Revenue Per Available Room"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_avail_cnt} );;
    value_format_name: usd
  }

}
