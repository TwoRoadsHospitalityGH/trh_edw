view: rpi_property_f_ty {
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
    sql: ${rpi_property_f.ty_bt} ;;
    hidden: yes
  }

  #-------------------------------------------------------------------------------------------
  #-- measures
  #-------------------------------------------------------------------------------------------

  measure: property_cnt {
    label: " Properties"
    description: "Distinct count of properties."
    type: count_distinct
    sql_distinct_key: ${rpi_property_f.property_key} ;;
    sql: iff( ${tyly_bt} = 1, ${rpi_property_f.property_key}, to_number( null ) ) ;;
    value_format_name: decimal_0
  }

  measure: property_room_avail_cnt {
    label: "Rms Avail  Pr"
    description: "Rooms Available Property"
    type: sum_distinct
    sql_distinct_key: ${rpi_property_f.period_key} ;;
    sql: iff( ${tyly_bt} = 1, ${rpi_property_f.property_room_avail_cnt}, 0 ) ;;
    value_format_name: decimal_0
  }

  measure: property_room_sold_cnt {
    label: "Rms Occ  Pr"
    description: "Rooms Occupied Property"
    type: sum
    sql: iff( ${tyly_bt} = 1, ${rpi_property_f.property_room_sold_cnt}, to_number( null ) ) ;;
    value_format_name: decimal_0
  }

  measure: property_room_rev_amt {
    label: "Rev Rms $  Pr"
    description: "Revenue Rooms $ Property"
    type: sum
    sql: iff( ${tyly_bt} = 1, ${rpi_property_f.property_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #--------------------------------------------------------------------------------
  #-- property calcs: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------

  measure: property_occupancy_rate_pct {
    label: "Rms Occ %  Pr"
    description: "Rooms Occupancy Rate % Property
    Rms Occ / Rms Available"
    type: number
    sql: utl..udf_divide( ${property_room_sold_cnt}, ${property_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: property_adr_amt {
    label: "ADR  Pr"
    description: "Average Daily Rate Property
    Rev Rms / Rms Occ"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_sold_cnt} );;
    value_format_name: usd
  }

  measure: property_revpar_amt {
    label: "RevPAR  Pr"
    description: "Revenue Per Available Room Property
    Rev Rms / Rms Avail"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_avail_cnt} );;
    value_format_name: usd
  }



  #--------------------------------------------------------------------------------
  #-- compset
  #--------------------------------------------------------------------------------
  measure: compset_room_avail_cnt {
    label: "Rms Avail Cs"
    description: "Rooms Available Compset"
    type: sum_distinct
    sql_distinct_key: ${rpi_property_f.period_key} ;;
    sql: iff( ${tyly_bt} = 1, ${rpi_property_f.compset_room_avail_cnt}, 0 ) ;;
    value_format_name: decimal_0
  }

  measure: compset_room_sold_cnt {
    label: "Rms Occ Cs"
    description: "Rooms Occupied Compset"
    type: sum
    sql: iff( ${tyly_bt} = 1, ${rpi_property_f.compset_room_sold_cnt}, to_number( null ) ) ;;
    value_format_name: decimal_0
  }

  measure: compset_room_rev_amt {
    label: "Rev Rms $ Cs"
    description: "Revenue Rooms $ Compset"
    type: sum
    sql: iff( ${tyly_bt} = 1, ${rpi_property_f.compset_room_rev_amt}, to_number( null ) ) ;;
    value_format_name: usd_0
  }

  #--------------------------------------------------------------------------------
  #-- compset calcs: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------
  measure: compset_occupancy_rate_pct {
    label: "Rms Occ % Cs"
    description: "Rooms Occupancy Rate % Compset
    Rms Occ / Rms Available"
    type: number
    sql: utl..udf_divide( ${compset_room_sold_cnt}, ${compset_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: compset_adr_amt {
    label: "ADR Cs"
    description: "Average Daily Rate Compset
    Rev Rms / Rms Occ"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_sold_cnt} );;
    value_format_name: usd
  }

  measure: compset_revpar_amt {
    label: "RevPAR Cs"
    description: "Revenue Per Available Room Compset
    Rev Rms / Rms Avail"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_avail_cnt} );;
    value_format_name: usd
  }

  #--------------------------------------------------------------------------------
  #-- property indexes to compset
  #--------------------------------------------------------------------------------
  measure: property_occ_index_pct {
    label: "Rms Occ % Index:Cs"
    description: "Rooms Occupancy Rate %
    Index to Compset
    Pr Rms Occ % / Cs Rms Occ %"
    type: number
    sql: utl..udf_divide( ${property_occupancy_rate_pct}, ${compset_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: property_adr_index_pct {
    label: "ADR Index:Cs"
    description: "Average Daily Rate
    Index to Compset
    Pr ADR / Cs ADR"
    type: number
    sql: utl..udf_divide( ${property_adr_amt}, ${compset_adr_amt} );;
    value_format_name: percent_1
  }

  measure: property_revpar_index_pct {
    label: "RevPAR Index:Cs"
    description: "RevPAR Index to Compset
    Pr RevPAR / Cs RevPAR"
    type: number
    sql: utl..udf_divide( ${property_revpar_amt}, ${compset_revpar_amt} );;
    value_format_name: percent_1
  }

}
