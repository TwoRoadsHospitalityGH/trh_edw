include: "rc_glm_property_f_ty.view.lkml"

view: rc_glm_property_f_fcst30 {
  extends: [rc_glm_property_f_ty]

  dimension: measure_bt {
    sql: ${rc_glm_property_f.fcst30_bt} ;;
    hidden: yes
  }

}
