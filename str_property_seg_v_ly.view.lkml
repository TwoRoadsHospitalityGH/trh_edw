include: "str_property_seg_v_ty.view.lkml"

view: str_property_seg_v_ly {
  extends: [str_property_seg_v_ty]


  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: tyly_bt {
    sql: ${str_property_seg_v.ly_bt} ;;
    hidden: yes
  }


}
