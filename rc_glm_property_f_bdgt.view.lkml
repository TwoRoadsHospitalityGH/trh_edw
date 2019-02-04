include: "rc_glm_property_f_ty.view.lkml"

view: rc_glm_property_f_bdgt {
  extends: [rc_glm_property_f_ty]

  dimension: measure_bt {
    sql: ${rc_glm_property_f.bdgt_bt} ;;
    hidden: yes
  }

}
