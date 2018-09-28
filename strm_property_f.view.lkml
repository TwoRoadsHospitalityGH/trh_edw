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

  #--------------------------------------------------------------------------------
  #-- property
  #--------------------------------------------------------------------------------
  measure: property_cnt {
    group_label: " Property"
    label: "Properties"
    description: "Distinct count of properties."
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
    description: "Property Revenue RB&E $"
    type: sum
    sql: ${TABLE}.property_rbe_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rms $"
    description: "Property Revenue Rooms $"
    type: sum
    sql: ${TABLE}.property_room_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_group_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rms Group $"
    description: "Property Revenue Rooms Group $"
    type: sum
    sql: ${TABLE}.property_room_group_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_transient_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rms Transient $"
    description: "Property Revenue Rooms Transient $"
    type: sum
    sql: ${TABLE}.property_room_transient_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_contract_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rms Contract $"
    description: "Property Revenue Rooms Contract $"
    type: sum
    sql: ${TABLE}.property_room_Contract_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_other_rev_amt {
    group_label: " Property"
    label: "Pr Rev Rms Other $"
    description: "Property Revenue Rooms Other $"
    type: sum
    sql: ${TABLE}.property_room_other_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_avail_cnt {
    group_label: " Property"
    label: "Pr Rms Avail"
    description: "Property Rooms Available"
    type: sum
    sql: ${TABLE}.property_room_avail_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_sold_cnt {
    group_label: " Property"
    label: "Pr Rms Occ"
    description: "Property Rooms Occupied"
    type: sum
    sql: ${TABLE}.property_room_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_contract_sold_cnt {
    group_label: " Property"
    label: "Pr Rms Occ Contract"
    description: "Property Rooms Occupied Contract"
    type: sum
    sql: ${TABLE}.property_room_contract_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_group_sold_cnt {
    group_label: " Property"
    label: "Pr Rms Occ Group"
    description: "Property Rooms Occupied Group"
    type: sum
    sql: ${TABLE}.property_room_group_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_transient_sold_cnt {
    group_label: " Property"
    label: "Pr Rms Occ Transient"
    description: "Property Rooms Occupied Transient"
    type: sum
    sql: ${TABLE}.property_room_transient_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_occupancy_rate_pct {
    group_label: " Property"
    label: "Pr Rms Occ %"
    description: "Property Rooms Occupancy Rate %.  Rms Occ / Rms Available"
    type: number
    sql: utl..udf_divide( ${property_room_sold_cnt}, ${property_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: property_adr_amt {
    group_label: " Property"
    label: "Pr ADR"
    description: "Property Average Daily Rate. Rev Rms / Rms Occ"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_sold_cnt} );;
    value_format_name: usd
  }

  measure: property_revpar_amt {
    group_label: " Property"
    label: "Pr RevPAR"
    description: "Property Revenue Per Available Room. Rev Rms / Rms Avail"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_avail_cnt} );;
    value_format_name: usd
  }

  measure: property_occ_index_pct {
    group_label: " Property"
    label: "Pr Rms Occ % Index to Compset"
    description: "Property Rooms Occupancy Rate % Indexed to Compset. Rms Occ % / Cs Occ %"
    type: number
    sql: utl..udf_divide( ${property_occupancy_rate_pct}, ${compset_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: property_occ_index_pct_prev {
    view_label: "  % Previous"
    label: "Pr Rms Occ % Index to Compset %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${property_occ_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: property_adr_index_pct {
    group_label: " Property"
    label: "Pr ADR Index to Compset"
    description: "Pr ADR / Cs ADR"
    type: number
    sql: utl..udf_divide( ${property_adr_amt}, ${compset_adr_amt} );;
    value_format_name: percent_1
  }

  measure: property_adr_index_pct_prev {
    view_label: "  % Previous"
    label: "Pr ADR Index to Compset %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${property_adr_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: property_revpar_index_pct {
    group_label: " Property"
    label: "Pr RevPAR Index to Compset"
    description: "Pr RevPAR / Cs RevPAR"
    type: number
    sql: utl..udf_divide( ${property_revpar_amt}, ${compset_revpar_amt} );;
    value_format_name: percent_1
  }

  measure: property_revpar_index_pct_prev {
    view_label: "  % Previous"
    label: "Pr RevPAR Index to Compset %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${property_revpar_index_pct} ;;
    value_format: "0.0\%"
  }

  #--------------------------------------------------------------------------------
  #-- compset
  #--------------------------------------------------------------------------------
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
    description: "Compset Revenue RB&E $"
    type: sum
    sql: ${TABLE}.compset_rbe_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rms $"
    description: "Compset Revenue Rooms $"
    type: sum
    sql: ${TABLE}.compset_room_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_group_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rms Group $"
    description: "Compset Revenue Rooms Group $"
    type: sum
    sql: ${TABLE}.compset_room_group_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_transient_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rms Transient $"
    description: "Compset Revenue Rooms Transient $"
    type: sum
    sql: ${TABLE}.compset_room_transient_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_contract_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rms Contract $"
    description: "Compset Revenue Rooms Contract $"
    type: sum
    sql: ${TABLE}.compset_room_Contract_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_other_rev_amt {
    group_label: "Compset"
    label: "Cs Rev Rms Other $"
    description: "Compset Revenue Rooms Other $"
    type: sum
    sql: ${TABLE}.compset_room_other_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_avail_cnt {
    group_label: "Compset"
    label: "Cs Rms Avail"
    description: "Compset Rooms Available"
    type: sum
    sql: ${TABLE}.compset_room_avail_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_sold_cnt {
    group_label: "Compset"
    label: "Cs Rms Occ"
    description: "Compset Rooms Occupied"
    type: sum
    sql: ${TABLE}.compset_room_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_contract_sold_cnt {
    group_label: "Compset"
    label: "Cs Rms Occ Contract"
    description: "Compset Rooms Occupied Contract"
    type: sum
    sql: ${TABLE}.compset_room_contract_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_group_sold_cnt {
    group_label: "Compset"
    label: "Cs Rms Occ Group"
    description: "Compset Rooms Occupied Group"
    type: sum
    sql: ${TABLE}.compset_room_group_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_transient_sold_cnt {
    group_label: "Compset"
    label: "Cs Rms Occ Transient"
    description: "Compset Rooms Occupied Transient"
    type: sum
    sql: ${TABLE}.compset_room_transient_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_occupancy_rate_pct {
    group_label: "Compset"
    label: "Cs Rms Occ %"
    description: "Compset Rooms Occupancy Rate %.  Rms Occ / Rms Available"
    type: number
    sql: utl..udf_divide( ${compset_room_sold_cnt}, ${compset_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: compset_adr_amt {
    group_label: "Compset"
    label: "Cs ADR"
    description: "Compset Average Daily Rate. Rev Rms / Rms Occ"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_sold_cnt} );;
    value_format_name: usd
  }

  measure: compset_revpar_amt {
    group_label: "Compset"
    label: "Cs RevPAR"
    description: "Compset Revenue Per Available Room. Rev Rms / Rms Avail"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_avail_cnt} );;
    value_format_name: usd
  }

}
