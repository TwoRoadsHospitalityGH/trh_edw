view: glm_property_f_tofcst30 {

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

    measure: rev_amt_tofcst30_v {
      label: "Rev Act:Fcst30 - var"
      description: "Actual - Fcst30"
      type: number
      sql: ${glm_property_f_ty.rev_amt} - ${glm_property_f_fcst30.rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: AGOP_amt_tofcst30_v {
      label: "AGOP Act:Fcst30 - var"
      description: "Actual - Fcst30"
      type: number
      sql: ${glm_property_f_ty.AGOP} - ${glm_property_f_fcst30.AGOP} ;;
      value_format_name: decimal_0
    }

    measure: rooms_rev_amt_tofcst30_v {
      label: "Rev Rms Act:Fcst30 - var"
      description: "Actual - Fcst30"
      type: number
      sql: ${glm_property_f_ty.rooms_rev_amt} - ${glm_property_f_fcst30.rooms_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_rev_amt_tofcst30_v {
      label: "Rev RBE Act:Fcst30 - var"
      description: "Actual - Fcst30"
      type: number
      sql: ${glm_property_f_ty.rbe_rev_amt} - ${glm_property_f_fcst30.rbe_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_banquet_rev_amt_tofcst30_v {
      label: "Rev RBE Banquet Act:Fcst30 - var"
      description: "Actual - Fcst30"
      type: number
      sql: ${glm_property_f_ty.rbe_banquet_rev_amt} - ${glm_property_f_fcst30.rbe_banquet_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_catering_rev_amt_tofcst30_v {
      label: "Rev RBE Catering Act:Fcst30 - var"
      description: "Actual - Fcst30"
      type: number
      sql: ${glm_property_f_ty.rbe_catering_rev_amt} - ${glm_property_f_fcst30.rbe_catering_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_conference_services_rev_amt_tofcst30_v {
      label: "Rev RBE Conference Services Act:Fcst30 - var"
      description: "Actual - Fcst30"
      type: number
      sql: ${glm_property_f_ty.rbe_conference_services_rev_amt} - ${glm_property_f_fcst30.rbe_conference_services_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_outlet_rev_amt_tofcst30_v {
      label: "Rev RBE Outlet Act:Fcst30 - var"
      description: "Actual - Fcst30"
      type: number
      sql: ${glm_property_f_ty.rbe_outlet_rev_amt} - ${glm_property_f_fcst30.rbe_outlet_rev_amt} ;;
      value_format_name: decimal_0
    }

    measure: rbe_other_rev_amt_tofcst30_v {
      label: "Rev RBE Other Act:Fcst30 - var"
      description: "Actual - Fcst30"
      type: number
      sql: ${glm_property_f_ty.rbe_other_rev_amt} - ${glm_property_f_fcst30.rbe_other_rev_amt} ;;
      value_format_name: decimal_0
    }
  }
