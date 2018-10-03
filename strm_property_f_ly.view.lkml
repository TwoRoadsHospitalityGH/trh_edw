include: "strm_property_f.view.lkml"

view: strm_property_f_ly {
  extends: [strm_property_f]

  measure: rec_cnt {
    view_label: "    aa"
    type: sum
    sql: 1 ;;
    value_format_name: decimal_0
    hidden: no
  }

  #--------------------------------------------------------------------------------
  #-- property to LY: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------
  measure: property_occupancy_rate_pct_toly {
    view_label: "    Measures"
    group_label: "  Property"
    label: "Rms Occ %  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.property_occupancy_rate_pct}, ${strm_property_f_ly.property_occupancy_rate_pct} );;
    value_format_name: percent_1
  }

  measure: property_adr_amt_toly {
    view_label: "    Measures"
    group_label: "  Property"
    label: "ADR  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.property_adr_amt}, ${strm_property_f_ly.property_adr_amt} );;
    value_format_name: percent_1
  }

  measure: compset_adr_amt_toly {
    view_label: "    Measures"
    group_label: "  Property"
    label: "ADR Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.compset_adr_amt}, ${strm_property_f_ly.compset_adr_amt} );;
    value_format_name: percent_1
  }

  measure: property_revpar_amt_toly {
    view_label: "    Measures"
    group_label: "  Property"
    label: "RevPAR  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${strm_property_f.property_revpar_amt}, ${strm_property_f_ly.property_revpar_amt} );;
    value_format_name: percent_1
  }

}
