include: "gl_balances_ty.view.lkml"

view: gl_balances_ly {
  extends: [gl_balances_ty]

  dimension: measure_bt {
    sql: ${gl_base_fields_v.ly_bt} ;;
    hidden: yes
  }




}
