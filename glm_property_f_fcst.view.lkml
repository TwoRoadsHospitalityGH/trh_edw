include: "glm_property_f_ty.view.lkml"

view: glm_property_f_fcst {
  extends: [glm_property_f_ty]

  dimension: measure_bt {
    sql: ${glm_property_f.fcst_bt} ;;
    hidden: yes
  }

}
