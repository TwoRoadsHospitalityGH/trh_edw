include: "glm_property_f_ty.view.lkml"

view: glm_property_f_bdgt {
    extends: [glm_property_f_ty]

    dimension: measure_bt {
      sql: ${glm_property_f.bdgt_bt} ;;
      hidden: yes
    }

}
