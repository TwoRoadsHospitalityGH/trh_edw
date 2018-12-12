include: "glm_property_f_ty.view.lkml"

view: glm_property_f_fcst30 {
  extends: [glm_property_f_ty]

  dimension: measure_bt {
    sql: ${glm_property_f.fcst30_bt} ;;
    hidden: yes
  }

}
