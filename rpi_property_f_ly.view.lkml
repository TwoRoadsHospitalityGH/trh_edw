include: "rpi_property_f_ty.view.lkml"

view: rpi_property_f_ly {
    extends: [rpi_property_f_ty]

    #-------------------------------------------------------------------------------------------
    #-- dimensions
    #-------------------------------------------------------------------------------------------

  dimension: tyly_bt {
    sql: ${rpi_property_f.ly_bt} ;;
    hidden: yes
  }
  }
