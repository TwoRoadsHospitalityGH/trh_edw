view: glm_property_f_tobdgt {

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
    #-- actual to LY: rev, AGOP, rooms_revenue, rbe
    #--------------------------------------------------------------------------------

    measure: rev_amt_tobdgt_v {
      label: "Rev Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${glm_property_f_ty.rev_amt} - ${glm_property_f_bdgt.rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: AGOP_amt_tobdgt_v {
      label: "AGOP Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${glm_property_f_ty.AGOP} - ${glm_property_f_bdgt.AGOP} ;;
      value_format_name: decimal_0
    }

    measure: rooms_rev_amt_tobdgt_v {
      label: "Rev Rms Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${glm_property_f_ty.rooms_rev_amt} - ${glm_property_f_bdgt.rooms_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_rev_amt_tobdgt_v {
      label: "Rev RBE Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${glm_property_f_ty.rbe_rev_amt} - ${glm_property_f_bdgt.rbe_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_banquet_rev_amt_tobdgt_v {
      label: "Rev RBE Banquet Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${glm_property_f_ty.rbe_banquet_rev_amt} - ${glm_property_f_bdgt.rbe_banquet_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_catering_rev_amt_tobdgt_v {
      label: "Rev RBE Catering Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${glm_property_f_ty.rbe_catering_rev_amt} - ${glm_property_f_bdgt.rbe_catering_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_outlet_rev_amt_tobdgt_v {
      label: "Rev RBE Outlet Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${glm_property_f_ty.rbe_outlet_rev_amt} - ${glm_property_f_bdgt.rbe_outlet_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_other_rev_amt_tobdgt_v {
      label: "Rev RBE Other Act:Bdgt - var"
      description: "Actual - Bdgt"
      type: number
      sql: ${glm_property_f_ty.rbe_other_rev_amt} - ${glm_property_f_bdgt.rbe_other_rev_amt} ;;
      value_format_name: decimal_0
    }
  }
