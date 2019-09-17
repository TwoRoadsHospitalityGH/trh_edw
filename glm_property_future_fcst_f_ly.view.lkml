include: "glm_property_future_fcst_f_ty.view.lkml"

view: glm_property_future_fcst_f_ly {
  extends: [glm_property_future_fcst_f_ty]

  dimension: measure_bt {
    sql: ${glm_property_future_fcst_f.act_ly_bt} ;;
    hidden: yes
  }

}
