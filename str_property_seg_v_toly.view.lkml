view: str_property_seg_v_toly {
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

  measure: property_room_rev_amt_toly_v {
    label: "Rev Rms $  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${str_property_seg_v_ty.property_room_rev_amt} - ${str_property_seg_v_ly.property_room_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_room_rev_amt_toly {
    label: "Rev Rms $  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_room_rev_amt}, ${str_property_seg_v_ly.property_room_rev_amt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_rbe_rev_amt_toly_v {
    label: "Rev RB&E $  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${str_property_seg_v_ty.property_rbe_rev_amt} - ${str_property_seg_v_ly.property_rbe_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_rbe_rev_amt_toly {
    label: "Rev RB&E $  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_rbe_rev_amt}, ${str_property_seg_v_ly.property_rbe_rev_amt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_room_other_rev_amt_toly_v {
    label: "Rev Other $  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${str_property_seg_v_ty.property_room_other_rev_amt} - ${str_property_seg_v_ly.property_room_other_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_room_other_rev_amt_toly {
    label: "Rev Other $  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_room_other_rev_amt}, ${str_property_seg_v_ly.property_room_other_rev_amt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_rev_amt_toly_v {
    label: "Rev $  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${str_property_seg_v_ty.property_rev_amt} - ${str_property_seg_v_ly.property_rev_amt} ;;
    value_format_name: decimal_0
  }

  measure: property_rev_amt_toly {
    label: "Rev $  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_rev_amt}, ${str_property_seg_v_ly.property_rev_amt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_room_sold_cnt_toly_v {
    label: "Rms Occ  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${str_property_seg_v_ty.property_room_sold_cnt} - ${str_property_seg_v_ly.property_room_sold_cnt} ;;
    value_format_name: decimal_0
  }

  measure: property_room_sold_cnt_toly {
    label: "Rms Occ  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_room_sold_cnt}, ${str_property_seg_v_ly.property_room_sold_cnt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_occupancy_rate_pct_toly {
    label: "Rms Occ %  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_occupancy_rate_pct}, ${str_property_seg_v_ly.property_occupancy_rate_pct} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_adr_amt_toly_v {
    label: "ADR  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${str_property_seg_v_ty.property_adr_amt} - ${str_property_seg_v_ly.property_adr_amt} ;;
    value_format_name: usd
  }

  measure: property_adr_amt_toly {
    label: "ADR  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_adr_amt}, ${str_property_seg_v_ly.property_adr_amt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_revpar_amt_toly_v {
    label: "RevPAR  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${str_property_seg_v_ty.property_revpar_amt} - ${str_property_seg_v_ly.property_revpar_amt} ;;
    value_format_name: usd
  }

  measure: property_revpar_amt_toly {
    label: "RevPAR  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_revpar_amt}, ${str_property_seg_v_ly.property_revpar_amt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_trevpar_amt_toly_v {
    label: "TRevPAR  Pr Act:LY - var"
    description: "Actual - LY"
    type: number
    sql: ${str_property_seg_v_ty.property_trevpar_amt} - ${str_property_seg_v_ly.property_trevpar_amt} ;;
    value_format_name: usd
  }

  measure: property_trevpar_amt_toly {
    label: "TRevPAR  Pr Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_trevpar_amt}, ${str_property_seg_v_ly.property_trevpar_amt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  #--------------------------------------------------------------------------------
  #-- property indexes to compset to LY
  #--------------------------------------------------------------------------------
  measure: property_occ_index_pct_toly {
    label: "Rms Occ % Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_occ_index_pct}, ${str_property_seg_v_ly.property_occ_index_pct} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_adr_index_pct_toly {
    label: "ADR Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_adr_index_pct}, ${str_property_seg_v_ly.property_adr_index_pct} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_revpar_index_pct_toly {
    label: "RevPAR Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_revpar_index_pct}, ${str_property_seg_v_ly.property_revpar_index_pct} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: property_trevpar_index_pct_toly {
    label: "TRevPAR Index:Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.property_trevpar_index_pct}, ${str_property_seg_v_ly.property_trevpar_index_pct} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  #--------------------------------------------------------------------------------
  #-- compset to LY: occ, adr, revpar, etc
  #--------------------------------------------------------------------------------
  measure: compset_occupancy_rate_pct_toly {
    label: "Rms Occ % Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.compset_occupancy_rate_pct}, ${str_property_seg_v_ly.compset_occupancy_rate_pct} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: compset_adr_amt_toly {
    label: "ADR Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.compset_adr_amt}, ${str_property_seg_v_ly.compset_adr_amt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

  measure: compset_revpar_amt_toly {
    label: "RevPAR Cs Act:LY - var %"
    description: "(Actual - LY) / LY"
    type: number
    sql: utl..udf_percent_var( ${str_property_seg_v_ty.compset_revpar_amt}, ${str_property_seg_v_ly.compset_revpar_amt} );;
    value_format_name: percent_1
    html:
    {% if value < 0 %}
    <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

}
