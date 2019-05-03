include: "glm_property_future_fcst_f_fcstact.view.lkml"

view: glm_property_future_fcst_f_ly {
  extends: [glm_property_future_fcst_f_fcstact]

  dimension: measure_bt {
    sql: ${glm_property_future_fcst_f.act_ly_bt} ;;
    hidden: yes
  }

}
