include: "str_property_v_ty_seg.view.lkml"

view: str_property_v_ly_seg {
  extends: [str_property_v_ty_seg]


  #-------------------------------------------------------------------------------------------
  #-- dimensions
  #-------------------------------------------------------------------------------------------

  dimension: tyly_bt {
    sql: ${str_property_v_seg.ly_bt} ;;
    hidden: yes
  }


}
