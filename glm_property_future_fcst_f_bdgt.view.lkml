include: "glm_property_future_fcst_f_fcstact.view.lkml"

view: glm_property_future_fcst_f_bdgt {
  extends: [glm_property_future_fcst_f_fcstact]

  dimension: measure_bt {
    sql: ${glm_property_future_fcst_f.bdgt_bt} ;;
    hidden: yes
  }

}
