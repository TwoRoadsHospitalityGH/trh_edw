connection: "edw"
# include: "*.view"         # include all views in this project

# label: "Revintel"

# datagroup: model_caching_dg {
#   sql_trigger: select max( dw_update_dt ) from praw_revintel.main.two_roads_extract ;;
#   max_cache_age: "8 hours"
# }

# explore: two_roads_extract {
#   group_label: "***Development***"
#   label: "Revintel Two Roads Extract (dev)"
#   persist_with: model_caching_dg
#   case_sensitive: no
# }
