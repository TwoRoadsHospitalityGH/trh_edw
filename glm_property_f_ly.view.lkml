include: "glm_property_f_ty.view.lkml"

view: glm_property_f_ly {
  extends: [glm_property_f_ty]

  dimension: measure_bt {
    sql: ${glm_property_f.act_ly_bt} ;;
    hidden: yes
  }

}
