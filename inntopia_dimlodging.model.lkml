connection: "edw"
include: "*.view"         # include all views in this project

label: "Inntopia"

datagroup: model_caching_dg {
  sql_trigger: select max( dw_update_dt ) from praw_inntopia.dbo.dimlodging ;;
  max_cache_age: "8 hours"
}

explore: inntopia_dimlodging {
  group_label: "***Development***"
  label: "Inntopia Dimlodging (dev)"
  persist_with: model_caching_dg
  case_sensitive: no
}
