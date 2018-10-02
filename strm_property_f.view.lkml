view: strm_property_f {
  sql_table_name: pedw.dev.strm_property_f ;;

  #--------------------------------------------------------------------------------
  # Keys
  #--------------------------------------------------------------------------------

  dimension: property_key{
    type: number
    sql: ${TABLE}.property_key ;;
    hidden: yes
  }

  dimension: month_date_sid {
    type: number
    sql: ${TABLE}.month_date_sid ;;
    hidden: yes
  }

  #--------------------------------------------------------------------------------
  # measures
  #--------------------------------------------------------------------------------

  #--------------------------------------------------------------------------------
  #-- property
  #--------------------------------------------------------------------------------
  measure: property_cnt {
    group_label: "  Property"
    label: " Properties"
    description: "Distinct count of properties."
    type: count_distinct
    sql: ${property_key} ;;
    value_format_name: decimal_0
  }

  measure: property_rev_amt {
    group_label: "  Property"
    label: "Rev $  Pr"
    description: "Revenue $ Property"
    type: sum
    sql: ${TABLE}.property_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_rbe_rev_amt {
    group_label: "  Property"
    label: "Rev RB&E $  Pr"
    description: "Revenue RB&E $ Property"
    type: sum
    sql: ${TABLE}.property_rbe_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_rev_amt {
    group_label: "  Property"
    label: "Rev Rms $  Pr"
    description: "Revenue Rooms $ Property"
    type: sum
    sql: ${TABLE}.property_room_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_group_rev_amt {
    group_label: " Group"
    label: "Rev Rms Group $  Pr"
    description: "Revenue Rooms Group $ Property"
    type: sum
    sql: ${TABLE}.property_room_group_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_transient_rev_amt {
    group_label: " Transient"
    label: "Rev Rms Transient $  Pr"
    description: "Revenue Rooms Transient $ Property"
    type: sum
    sql: ${TABLE}.property_room_transient_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_contract_rev_amt {
    group_label: " Contract"
    label: "Rev Rms Contract $  Pr"
    description: "Revenue Rooms Contract $ Property"
    type: sum
    sql: ${TABLE}.property_room_Contract_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_other_rev_amt {
    group_label: "Other"
    label: "Rev Rms Other $  Pr"
    description: "Revenue Rooms Other $ Property"
    type: sum
    sql: ${TABLE}.property_room_other_rev_amt ;;
    value_format_name: usd_0
  }

  measure: property_room_avail_cnt {
    group_label: "  Property"
    label: "Rms Avail  Pr"
    description: "Rooms Available Property"
    type: sum
    sql: ${TABLE}.property_room_avail_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_sold_cnt {
    group_label: "  Property"
    label: "Rms Occ  Pr"
    description: "Rooms Occupied Property"
    type: sum
    sql: ${TABLE}.property_room_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_contract_sold_cnt {
    group_label: " Contract"
    label: "Rms Occ Contract  Pr"
    description: "Rooms Occupied Contract Property"
    type: sum
    sql: ${TABLE}.property_room_contract_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_group_sold_cnt {
    group_label: " Group"
    label: "Rms Occ Group  Pr"
    description: "Rooms Occupied Group Property"
    type: sum
    sql: ${TABLE}.property_room_group_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: property_room_transient_sold_cnt {
    group_label: " Transient"
    label: "Rms Occ Transient  Pr"
    description: "Rooms Occupied Transient Property"
    type: sum
    sql: ${TABLE}.property_room_transient_sold_cnt ;;
    value_format_name: decimal_0
  }

  #--------------------------------------------------------------------------------
  #-- property calcs: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------
  measure: property_occupancy_rate_pct {
    group_label: "  Property"
    label: "Rms Occ %  Pr"
    description: "Rooms Occupancy Rate % Property
    Rms Occ / Rms Available"
    type: number
    sql: utl..udf_divide( ${property_room_sold_cnt}, ${property_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: property_adr_amt {
    group_label: "  Property"
    label: "ADR  Pr"
    description: "Average Daily Rate Property
    Rev Rms / Rms Occ"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_sold_cnt} );;
    value_format_name: usd
  }

  measure: property_revpar_amt {
    group_label: "  Property"
    label: "RevPAR  Pr"
    description: "Revenue Per Available Room Property
    Rev Rms / Rms Avail"
    type: number
    sql: utl..udf_divide( ${property_room_rev_amt}, ${property_room_avail_cnt} );;
    value_format_name: usd
  }

  #--------------------------------------------------------------------------------
  #-- property segment calcs: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------

  #-- contract
  measure: pr_contract_occupancy_rate_pct {
    group_label: " Contract"
    label: "Rms Occ % Contract  Pr"
    description: "Rooms Occupancy Rate % Contract Property
    Rms Occ Contract / Rms Available"
    type: number
    sql: utl..udf_divide( ${property_room_contract_sold_cnt}, ${property_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: pr_contract_adr_amt {
    group_label: " Contract"
    label: "ADR Contract  Pr"
    description: "Average Daily Rate Contract Property
    Rev Rms Contract / Rms Occ Contract"
    type: number
    sql: utl..udf_divide( ${property_room_contract_rev_amt}, ${property_room_contract_sold_cnt} );;
    value_format_name: usd
  }

  measure: pr_contract_revpar_amt {
    group_label: " Contract"
    label: "RevPAR Contract  Pr"
    description: "Revenue Per Available Room Contract Property
    Rev Rms Contract / Rms Avail"
    type: number
    sql: utl..udf_divide( ${property_room_contract_rev_amt}, ${property_room_avail_cnt} );;
    value_format_name: usd
  }

  #-- group
  measure: pr_group_occupancy_rate_pct {
    group_label: " Group"
    label: "Rms Occ % Group  Pr"
    description: "Rooms Occupancy Rate % Group Property
    Rms Occ Group / Rms Available"
    type: number
    sql: utl..udf_divide( ${property_room_group_sold_cnt}, ${property_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: pr_group_adr_amt {
    group_label: " Group"
    label: "ADR Group  Pr"
    description: "Average Daily Rate Group Property
    Rev Rms Group / Rms Occ Group"
    type: number
    sql: utl..udf_divide( ${property_room_group_rev_amt}, ${property_room_group_sold_cnt} );;
    value_format_name: usd
  }

  measure: pr_group_revpar_amt {
    group_label: " Group"
    label: "RevPAR Group  Pr"
    description: "Revenue Per Available Room Group Property
    Rev Rms Group / Rms Avail"
    type: number
    sql: utl..udf_divide( ${property_room_group_rev_amt}, ${property_room_avail_cnt} );;
    value_format_name: usd
  }

  #-- transient
  measure: pr_transient_occupancy_rate_pct {
    group_label: " Transient"
    label: "Rms Occ % Transient  Pr"
    description: "Rooms Occupancy Rate % Transient Property
    Rms Occ Transient / Rms Available"
    type: number
    sql: utl..udf_divide( ${property_room_transient_sold_cnt}, ${property_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: pr_transient_adr_amt {
    group_label: " Transient"
    label: "ADR Transient  Pr"
    description: "Average Daily Rate Transient Property
    Rev Rms Transient / Rms Occ Transient"
    type: number
    sql: utl..udf_divide( ${property_room_transient_rev_amt}, ${property_room_transient_sold_cnt} );;
    value_format_name: usd
  }

  measure: pr_transient_revpar_amt {
    group_label: " Transient"
    label: "RevPAR Transient  Pr"
    description: "Revenue Per Available Room Transient Property
    Rev Rms Transient / Rms Avail"
    type: number
    sql: utl..udf_divide( ${property_room_transient_rev_amt}, ${property_room_avail_cnt} );;
    value_format_name: usd
  }

  #--------------------------------------------------------------------------------
  #-- property indexes to compset
  #--------------------------------------------------------------------------------
  measure: property_occ_index_pct {
    group_label: "  Property"
    label: "Rms Occ % Index:Cs"
    description: "Rooms Occupancy Rate %
    Index to Compset
    Pr Rms Occ % / Cs Rms Occ %"
    type: number
    sql: utl..udf_divide( ${property_occupancy_rate_pct}, ${compset_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: property_adr_index_pct {
    group_label: "  Property"
    label: "ADR Index:Cs"
    description: "Average Daily Rate
    Index to Compset
    Pr ADR / Cs ADR"
    type: number
    sql: utl..udf_divide( ${property_adr_amt}, ${compset_adr_amt} );;
    value_format_name: percent_1
  }

  measure: property_revpar_index_pct {
    group_label: "  Property"
    label: "RevPAR Index:Cs"
    description: "RevPAR Index to Compset
    Pr RevPAR / Cs RevPAR"
    type: number
    sql: utl..udf_divide( ${property_revpar_amt}, ${compset_revpar_amt} );;
    value_format_name: percent_1
  }

  #--------------------------------------------------------------------------------
  #-- property segments indexes to compset
  #--------------------------------------------------------------------------------

  #-- contract
  measure: pr_contract_occ_index_pct {
    group_label: " Contract"
    label: "Rms Occ % Contract Index:Cs"
    description: "Rooms Occupancy Rate % Contract
    Index to Compset
    Rms Occ % Contract Pr / Rms Occ % Contract Cs"
    type: number
    sql: utl..udf_divide( ${pr_contract_occupancy_rate_pct}, ${cs_contract_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: pr_contract_adr_index_pct {
    group_label: " Contract"
    label: "ADR Contract Index:Cs"
    description: "Average Daily Rate Contract
    Index to Compset
    ADR Contract Pr / ADR Contract Cs"
    type: number
    sql: utl..udf_divide( ${pr_contract_adr_amt}, ${cs_contract_adr_amt} );;
    value_format_name: percent_1
  }

  measure: pr_contract_revpar_index_pct {
    group_label: " Contract"
    label: "RevPAR Contract Index:Cs"
    description: "RevPAR Contract Index to Compset
    RevPAR Contract Pr / RevPAR Contract Cs"
    type: number
    sql: utl..udf_divide( ${pr_contract_revpar_amt}, ${cs_contract_revpar_amt} );;
    value_format_name: percent_1
  }

  #-- group
  measure: pr_group_occ_index_pct {
    group_label: " Group"
    label: "Rms Occ % Group Index:Cs"
    description: "Rooms Occupancy Rate % Group
    Index to Compset
    Rms Occ % Group Pr / Rms Occ % Group Cs"
    type: number
    sql: utl..udf_divide( ${pr_group_occupancy_rate_pct}, ${cs_group_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: pr_group_adr_index_pct {
    group_label: " Group"
    label: "ADR Group Index:Cs"
    description: "Average Daily Rate Group
    Index to Compset
    ADR Group Pr / ADR Group Cs"
    type: number
    sql: utl..udf_divide( ${pr_group_adr_amt}, ${cs_group_adr_amt} );;
    value_format_name: percent_1
  }

  measure: pr_group_revpar_index_pct {
    group_label: " Group"
    label: "RevPAR Group Index:Cs"
    description: "RevPAR Group Index to Compset
    RevPAR Group Pr / RevPAR Group Cs"
    type: number
    sql: utl..udf_divide( ${pr_group_revpar_amt}, ${cs_group_revpar_amt} );;
    value_format_name: percent_1
  }

  #-- transient
  measure: pr_transient_occ_index_pct {
    group_label: " Transient"
    label: "Rms Occ % Transient Index:Cs"
    description: "Rooms Occupancy Rate % Transient
    Index to Compset
    Rms Occ % Transient Pr / Rms Occ % Transient Cs"
    type: number
    sql: utl..udf_divide( ${pr_transient_occupancy_rate_pct}, ${cs_transient_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: pr_transient_adr_index_pct {
    group_label: " Transient"
    label: "ADR Transient Index:Cs"
    description: "Average Daily Rate Transient
    Index to Compset
    ADR Transient Pr / ADR Transient Cs"
    type: number
    sql: utl..udf_divide( ${pr_transient_adr_amt}, ${cs_transient_adr_amt} );;
    value_format_name: percent_1
  }

  measure: pr_transient_revpar_index_pct {
    group_label: " Transient"
    label: "RevPAR Transient Index:Cs"
    description: "RevPAR Transient Index to Compset
    RevPAR Transient Pr / RevPAR Transient Cs"
    type: number
    sql: utl..udf_divide( ${pr_transient_revpar_amt}, ${cs_transient_revpar_amt} );;
    value_format_name: percent_1
  }

  #--------------------------------------------------------------------------------
  #-- property % previous
  #--------------------------------------------------------------------------------
  measure: property_occ_index_pct_prev {
    group_label: "  Property"
    label: "Rms Occ % Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${property_occ_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: property_adr_index_pct_prev {
    group_label: "  Property"
    label: "ADR Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${property_adr_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: property_revpar_index_pct_prev {
    group_label: "  Property"
    label: "RevPAR Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${property_revpar_index_pct} ;;
    value_format: "0.0\%"
  }

  #--------------------------------------------------------------------------------
  #-- property segments % previous
  #--------------------------------------------------------------------------------

  #-- contract
  measure: pr_contract_occ_index_pct_prev {
    group_label: " Contract"
    label: "Rms Occ % Contract Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${pr_contract_occ_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: pr_contract_adr_index_pct_prev {
    group_label: " Contract"
    label: "ADR Contract Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${pr_contract_adr_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: pr_contract_revpar_index_pct_prev {
    group_label: " Contract"
    label: "RevPAR Contract Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${pr_contract_revpar_index_pct} ;;
    value_format: "0.0\%"
  }

  #-- group
  measure: pr_group_occ_index_pct_prev {
    group_label: " Group"
    label: "Rms Occ % Group Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${pr_group_occ_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: pr_group_adr_index_pct_prev {
    group_label: " Group"
    label: "ADR Group Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${pr_group_adr_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: pr_group_revpar_index_pct_prev {
    group_label: " Group"
    label: "RevPAR Group Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${pr_group_revpar_index_pct} ;;
    value_format: "0.0\%"
  }

  #-- transient
  measure: pr_transient_occ_index_pct_prev {
    group_label: " Transient"
    label: "Rms Occ % Transient Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${pr_transient_occ_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: pr_transient_adr_index_pct_prev {
    group_label: " Transient"
    label: "ADR Transient Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${pr_transient_adr_index_pct} ;;
    value_format: "0.0\%"
  }

  measure: pr_transient_revpar_index_pct_prev {
    group_label: " Transient"
    label: "RevPAR Transient Index:Cs %Prev"
    description: "Percent to previous column or row."
    type: percent_of_previous
    sql: ${pr_transient_revpar_index_pct} ;;
    value_format: "0.0\%"
  }

  #--------------------------------------------------------------------------------
  #-- compset
  #--------------------------------------------------------------------------------
  measure: compset_rev_amt {
    group_label: "  Property"
    label: "Rev $ Cs"
    description: "Revenue $ Compset"
    type: sum
    sql: ${TABLE}.compset_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_rbe_rev_amt {
    group_label: "  Property"
    label: "Rev RB&E $ Cs"
    description: "Revenue RB&E $ Compset"
    type: sum
    sql: ${TABLE}.compset_rbe_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_rev_amt {
    group_label: "  Property"
    label: "Rev Rms $ Cs"
    description: "Revenue Rooms $ Compset"
    type: sum
    sql: ${TABLE}.compset_room_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_group_rev_amt {
    group_label: " Group"
    label: "Rev Rms Group $ Cs"
    description: "Revenue Rooms Group $ Compset"
    type: sum
    sql: ${TABLE}.compset_room_group_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_transient_rev_amt {
    group_label: " Transient"
    label: "Rev Rms Transient $ Cs"
    description: "Revenue Rooms Transient $ Compset"
    type: sum
    sql: ${TABLE}.compset_room_transient_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_contract_rev_amt {
    group_label: " Contract"
    label: "Rev Rms Contract $ Cs"
    description: "Revenue Rooms Contract $ Compset"
    type: sum
    sql: ${TABLE}.compset_room_Contract_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_other_rev_amt {
    group_label: "Other"
    label: "Rev Rms Other $ Cs"
    description: "Revenue Rooms Other $ Compset"
    type: sum
    sql: ${TABLE}.compset_room_other_rev_amt ;;
    value_format_name: usd_0
  }

  measure: compset_room_avail_cnt {
    group_label: "  Property"
    label: "Rms Avail Cs"
    description: "Rooms Available Compset"
    type: sum
    sql: ${TABLE}.compset_room_avail_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_sold_cnt {
    group_label: "  Property"
    label: "Rms Occ Cs"
    description: "Rooms Occupied Compset"
    type: sum
    sql: ${TABLE}.compset_room_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_contract_sold_cnt {
    group_label: " Contract"
    label: "Rms Occ Contract Cs"
    description: "Rooms Occupied Contract Compset"
    type: sum
    sql: ${TABLE}.compset_room_contract_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_group_sold_cnt {
    group_label: " Group"
    label: "Rms Occ Group Cs"
    description: "Rooms Occupied Group Compset"
    type: sum
    sql: ${TABLE}.compset_room_group_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_room_transient_sold_cnt {
    group_label: " Transient"
    label: "Rms Occ Transient Cs"
    description: "Rooms Occupied Transient Compset"
    type: sum
    sql: ${TABLE}.compset_room_transient_sold_cnt ;;
    value_format_name: decimal_0
  }

  measure: compset_occupancy_rate_pct {
    group_label: "  Property"
    label: "Rms Occ % Cs"
    description: "Rooms Occupancy Rate % Compset
    Rms Occ / Rms Available"
    type: number
    sql: utl..udf_divide( ${compset_room_sold_cnt}, ${compset_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: compset_adr_amt {
    group_label: "  Property"
    label: "ADR Cs"
    description: "Average Daily Rate Compset
    Rev Rms / Rms Occ Compset"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_sold_cnt} );;
    value_format_name: usd
  }

  measure: compset_revpar_amt {
    group_label: "  Property"
    label: "RevPAR Cs"
    description: "Revenue Per Available Room Compset
    Rev Rms / Rms Avail"
    type: number
    sql: utl..udf_divide( ${compset_room_rev_amt}, ${compset_room_avail_cnt} );;
    value_format_name: usd
  }

  #--------------------------------------------------------------------------------
  #-- compset segment calcs: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------

  #-- contract
  measure: cs_contract_occupancy_rate_pct {
    group_label: " Contract"
    label: "Rms Occ % Contract Cs"
    description: "Rooms Occupancy Rate % Contract Compset
    Rms Occ Contract / Rms Available"
    type: number
    sql: utl..udf_divide( ${compset_room_contract_sold_cnt}, ${compset_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: cs_contract_adr_amt {
    group_label: " Contract"
    label: "ADR Contract Cs"
    description: "Average Daily Rate Contract Compset
    Rev Rms Contract / Rms Occ Contract"
    type: number
    sql: utl..udf_divide( ${compset_room_contract_rev_amt}, ${compset_room_contract_sold_cnt} );;
    value_format_name: usd
  }

  measure: cs_contract_revpar_amt {
    group_label: " Contract"
    label: "RevPAR Contract Cs"
    description: "Revenue Per Available Room Contract Compset
    Rev Rms Contract / Rms Avail"
    type: number
    sql: utl..udf_divide( ${compset_room_contract_rev_amt}, ${compset_room_avail_cnt} );;
    value_format_name: usd
  }

  #-- group
  measure: cs_group_occupancy_rate_pct {
    group_label: " Group"
    label: "Rms Occ % Group Cs"
    description: "Rooms Occupancy Rate % Group Compset
    Rms Occ Group / Rms Available"
    type: number
    sql: utl..udf_divide( ${compset_room_group_sold_cnt}, ${compset_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: cs_group_adr_amt {
    group_label: " Group"
    label: "ADR Group Cs"
    description: "Average Daily Rate Group Compset
    Rev Rms Group / Rms Occ Group"
    type: number
    sql: utl..udf_divide( ${compset_room_group_rev_amt}, ${compset_room_group_sold_cnt} );;
    value_format_name: usd
  }

  measure: cs_group_revpar_amt {
    group_label: " Group"
    label: "RevPAR Group Cs"
    description: "Revenue Per Available Room Group Compset
    Rev Rms Group / Rms Avail"
    type: number
    sql: utl..udf_divide( ${compset_room_group_rev_amt}, ${compset_room_avail_cnt} );;
    value_format_name: usd
  }

  #-- transient
  measure: cs_transient_occupancy_rate_pct {
    group_label: " Transient"
    label: "Rms Occ % Transient Cs"
    description: "Rooms Occupancy Rate % Transient Compset
    Rms Occ Transient / Rms Available"
    type: number
    sql: utl..udf_divide( ${compset_room_transient_sold_cnt}, ${compset_room_avail_cnt} );;
    value_format_name: percent_1
  }

  measure: cs_transient_adr_amt {
    group_label: " Transient"
    label: "ADR Transient Cs"
    description: "Average Daily Rate Transient Compset
    Rev Rms Transient / Rms Occ Transient"
    type: number
    sql: utl..udf_divide( ${compset_room_transient_rev_amt}, ${compset_room_transient_sold_cnt} );;
    value_format_name: usd
  }

  measure: cs_transient_revpar_amt {
    group_label: " Transient"
    label: "RevPAR Transient Cs"
    description: "Revenue Per Available Room Transient Compset
    Rev Rms Transient / Rms Avail"
    type: number
    sql: utl..udf_divide( ${compset_room_transient_rev_amt}, ${compset_room_avail_cnt} );;
    value_format_name: usd
  }

}
