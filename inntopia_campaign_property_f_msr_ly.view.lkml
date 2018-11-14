include: "inntopia_campaign_property_f_msr_ty.view.lkml"

view: inntopia_campaign_property_f_msr_ly {
  extends: [inntopia_campaign_property_f_msr_ty]


  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: tyly_bt {
    sql: ${inntopia_campaign_property_f.ly_bt} ;;
    hidden: yes
  }


}
