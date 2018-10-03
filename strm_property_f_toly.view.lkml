view: strm_property_f_toly {
  derived_table: {
    sql: select 1 as key_no ;;
  }

  dimension: key_no {
    primary_key: yes
    type: number
    sql: ${TABLE}.key_no ;;
    hidden: yes
  }

  #--------------------------------------------------------------------------------
  #-- property to LY: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------
  measure: property_occupancy_rate_pct_toly {
    group_label: "  Property"
    label: "Rms Occ %  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.property_occupancy_rate_pct}, ${strm_property_f_ly.property_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: property_adr_amt_toly {
    group_label: "  Property"
    label: "ADR  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.property_adr_amt}, ${strm_property_f_ly.property_adr_amt} );;
    value_format_name: percent_1
  }

  measure: property_revpar_amt_toly {
    group_label: "  Property"
    label: "RevPAR  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.property_revpar_amt}, ${strm_property_f_ly.property_revpar_amt} );;
    value_format_name: percent_1
  }

  #--------------------------------------------------------------------------------
  #-- property segment to LY: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------

  #-- contract
  measure: pr_contract_occupancy_rate_pct_toly {
    group_label: " Contract"
    label: "Rms Occ % Contract  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_contract_occupancy_rate_pct}, ${strm_property_f_ly.pr_contract_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: pr_contract_adr_amt_toly {
    group_label: " Contract"
    label: "ADR Contract  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_contract_adr_amt}, ${strm_property_f_ly.pr_contract_adr_amt} );;
    value_format_name: percent_1
  }

  measure: pr_contract_revpar_amt_toly {
    group_label: " Contract"
    label: "RevPAR Contract  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_contract_revpar_amt}, ${strm_property_f_ly.pr_contract_revpar_amt} );;
    value_format_name: percent_1
  }

  #-- group
  measure: pr_group_occupancy_rate_pct_toly {
    group_label: " Group"
    label: "Rms Occ % Group  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_group_occupancy_rate_pct}, ${strm_property_f_ly.pr_group_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: pr_group_adr_amt_toly {
    group_label: " Group"
    label: "ADR Group  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_group_adr_amt}, ${strm_property_f_ly.pr_group_adr_amt} );;
    value_format_name: percent_1
  }

  measure: pr_group_revpar_amt_toly {
    group_label: " Group"
    label: "RevPAR Group  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_group_revpar_amt}, ${strm_property_f_ly.pr_group_revpar_amt} );;
    value_format_name: percent_1
  }

  #-- transient
  measure: pr_transient_occupancy_rate_pct_toly {
    group_label: " Transient"
    label: "Rms Occ % Transient  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_transient_occupancy_rate_pct}, ${strm_property_f_ly.pr_transient_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: pr_transient_adr_amt_toly {
    group_label: " Transient"
    label: "ADR Transient  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_transient_adr_amt}, ${strm_property_f_ly.pr_transient_adr_amt} );;
    value_format_name: percent_1
  }

  measure: pr_transient_revpar_amt_toly {
    group_label: " Transient"
    label: "RevPAR Transient  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_transient_revpar_amt}, ${strm_property_f_ly.pr_transient_revpar_amt} );;
    value_format_name: percent_1
  }

  #--------------------------------------------------------------------------------
  #-- property indexes to compset to LY
  #--------------------------------------------------------------------------------
  measure: property_occ_index_pct_toly {
    group_label: "  Property"
    label: "Rms Occ % Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.property_occ_index_pct}, ${strm_property_f_ly.property_occ_index_pct} );;
    value_format_name: percent_1
  }

  measure: property_adr_index_pct_toly {
    group_label: "  Property"
    label: "ADR Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.property_adr_index_pct}, ${strm_property_f_ly.property_adr_index_pct} );;
    value_format_name: percent_1
  }

  measure: property_revpar_index_pct_toly {
    group_label: "  Property"
    label: "RevPAR Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.property_revpar_index_pct}, ${strm_property_f_ly.property_revpar_index_pct} );;
    value_format_name: percent_1
  }

  #--------------------------------------------------------------------------------
  #-- property segments indexes to compset to LY
  #--------------------------------------------------------------------------------

  #-- contract
  measure: pr_contract_occ_index_pct_toly {
    group_label: " Contract"
    label: "Rms Occ % Contract Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_contract_occ_index_pct}, ${strm_property_f_ly.pr_contract_occ_index_pct} );;
    value_format_name: percent_1
  }

  measure: pr_contract_adr_index_pct_toly {
    group_label: " Contract"
    label: "ADR Contract Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_contract_adr_index_pct}, ${strm_property_f_ly.pr_contract_adr_index_pct} );;
    value_format_name: percent_1
  }

  measure: pr_contract_revpar_index_pct_toly {
    group_label: " Contract"
    label: "RevPAR Contract Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_contract_revpar_index_pct}, ${strm_property_f_ly.pr_contract_revpar_index_pct} );;
    value_format_name: percent_1
  }

  #-- group
  measure: pr_group_occ_index_pct_toly {
    group_label: " Group"
    label: "Rms Occ % Group Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_group_occ_index_pct}, ${strm_property_f_ly.pr_group_occ_index_pct} );;
    value_format_name: percent_1
  }

  measure: pr_group_adr_index_pct_toly {
    group_label: " Group"
    label: "ADR Group Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_group_adr_index_pct}, ${strm_property_f_ly.pr_group_adr_index_pct} );;
    value_format_name: percent_1
  }

  measure: pr_group_revpar_index_pct_toly {
    group_label: " Group"
    label: "RevPAR Group Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_group_revpar_index_pct}, ${strm_property_f_ly.pr_group_revpar_index_pct} );;
    value_format_name: percent_1
  }

  #-- transient
  measure: pr_transient_occ_index_pct_toly {
    group_label: " Transient"
    label: "Rms Occ % Transient Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_transient_occ_index_pct}, ${strm_property_f_ly.pr_transient_occ_index_pct} );;
    value_format_name: percent_1
  }

  measure: pr_transient_adr_index_pct_toly {
    group_label: " Transient"
    label: "ADR Transient Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_transient_adr_index_pct}, ${strm_property_f_ly.pr_transient_adr_index_pct} );;
    value_format_name: percent_1
  }

  measure: pr_transient_revpar_index_pct_toly {
    group_label: " Transient"
    label: "RevPAR Transient Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.pr_transient_revpar_index_pct}, ${strm_property_f_ly.pr_transient_revpar_index_pct} );;
    value_format_name: percent_1
  }

  #--------------------------------------------------------------------------------
  #-- compset to LY: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------
  measure: compset_occupancy_rate_pct_toly {
    group_label: "  Property"
    label: "Rms Occ % Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.compset_occupancy_rate_pct}, ${strm_property_f_ly.compset_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: compset_adr_amt_toly {
    group_label: "  Property"
    label: "ADR Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.compset_adr_amt}, ${strm_property_f_ly.compset_adr_amt} );;
    value_format_name: percent_1
  }

  measure: compset_revpar_amt_toly {
    group_label: "  Property"
    label: "RevPAR Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.compset_revpar_amt}, ${strm_property_f_ly.compset_revpar_amt} );;
    value_format_name: percent_1
  }

  #--------------------------------------------------------------------------------
  #-- compset segment to LY: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------

  #-- contract
  measure: cs_contract_occupancy_rate_pct_toly {
    group_label: " Contract"
    label: "Rms Occ % Contract Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.cs_contract_occupancy_rate_pct}, ${strm_property_f_ly.cs_contract_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: cs_contract_adr_amt_toly {
    group_label: " Contract"
    label: "ADR Contract Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.cs_contract_adr_amt}, ${strm_property_f_ly.cs_contract_adr_amt} );;
    value_format_name: percent_1
  }

  measure: cs_contract_revpar_amt_toly {
    group_label: " Contract"
    label: "RevPAR Contract Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.cs_contract_revpar_amt}, ${strm_property_f_ly.cs_contract_revpar_amt} );;
    value_format_name: percent_1
  }

  #-- group
  measure: cs_group_occupancy_rate_pct_toly {
    group_label: " Group"
    label: "Rms Occ % Group Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.cs_group_occupancy_rate_pct}, ${strm_property_f_ly.cs_group_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: cs_group_adr_amt_toly {
    group_label: " Group"
    label: "ADR Group Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.cs_group_adr_amt}, ${strm_property_f_ly.cs_group_adr_amt} );;
    value_format_name: percent_1
  }

  measure: cs_group_revpar_amt_toly {
    group_label: " Group"
    label: "RevPAR Group Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.cs_group_revpar_amt}, ${strm_property_f_ly.cs_group_revpar_amt} );;
    value_format_name: percent_1
  }

  #-- transient
  measure: cs_transient_occupancy_rate_pct_toly {
    group_label: " Transient"
    label: "Rms Occ % Transient Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.cs_transient_occupancy_rate_pct}, ${strm_property_f_ly.cs_transient_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: cs_transient_adr_amt_toly {
    group_label: " Transient"
    label: "ADR Transient Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.cs_transient_adr_amt}, ${strm_property_f_ly.cs_transient_adr_amt} );;
    value_format_name: percent_1
  }

  measure: cs_transient_revpar_amt_toly {
    group_label: " Transient"
    label: "RevPAR Transient Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.cs_transient_revpar_amt}, ${strm_property_f_ly.cs_transient_revpar_amt} );;
    value_format_name: percent_1
  }

}
