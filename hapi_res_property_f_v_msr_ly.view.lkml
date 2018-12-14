include: "hapi_res_property_f_v_msr_ty.view.lkml"

view: hapi_res_property_f_v_msr_ly {
  extends: [hapi_res_property_f_v_msr_ty]


  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: tyly_bt {
    sql: ${hapi_res_property_f_v.ly_bt} ;;
    hidden: yes
  }


}
