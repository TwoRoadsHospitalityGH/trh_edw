include: "rpi_property_f_ty.view.lkml"

view: rpi_property_f_ly {
    extends: [rpi_property_f_ty]

    #-------------------------------------------------------------------------------------------
    #-- dimensions
    #-------------------------------------------------------------------------------------------

    dimension: ly_date_sid {
      sql: ${rpi_property_f.ly_date_sid} ;;
      hidden: yes
    }
  }
