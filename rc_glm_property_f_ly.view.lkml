include: "rc_glm_property_f_ty.view.lkml"

view: rc_glm_property_f_ly {
  extends: [rc_glm_property_f_ty]

  dimension: measure_bt {
    sql: ${rc_glm_property_f.act_ly_bt} ;;
    hidden: yes
  }

}
