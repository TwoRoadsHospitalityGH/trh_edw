- dashboard: str_monthly_segmentation
  title: STR Monthly Segmentation
  layout: newspaper
  elements:
  - title: Period
    name: Period
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: single_value
    fields:
    - date_dm.month_range
    filters: {}
    limit: 500
    query_timezone: America/Denver
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Group
    name: Group
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: looker_single_record
    fields:
    - str_property_seg_v_ty.property_cnt
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    filters:
      str_property_seg_v.segment_name: Group
    limit: 500
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 2
    col: 5
    width: 5
    height: 11
  - title: Transient
    name: Transient
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: looker_single_record
    fields:
    - str_property_seg_v_ty.property_cnt
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    filters:
      str_property_seg_v.segment_name: Transient
    limit: 500
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 2
    col: 10
    width: 5
    height: 11
  - title: Contract
    name: Contract
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: looker_single_record
    fields:
    - str_property_seg_v_ty.property_cnt
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    filters:
      str_property_seg_v.segment_name: Contract
    limit: 500
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 2
    col: 15
    width: 5
    height: 11
  - title: Unassigned
    name: Unassigned
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: looker_single_record
    fields:
    - str_property_seg_v_ty.property_cnt
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    filters:
      str_property_seg_v.segment_name: Unassigned
    limit: 500
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 2
    col: 20
    width: 4
    height: 11
  - title: Total
    name: Total
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: looker_single_record
    fields:
    - str_property_seg_v_ty.property_cnt
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    filters: {}
    limit: 500
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 2
    col: 0
    width: 5
    height: 11
  - title: Segments & Total
    name: Segments & Total
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: table
    fields:
    - str_property_seg_v_ty.property_cnt
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    - str_property_seg_v.segment_name
    filters: {}
    sorts:
    - str_property_seg_v.segment_name
    limit: 500
    total: true
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 13
    col: 0
    width: 24
    height: 5
  - title: Total by Property
    name: Total by Property
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: table
    fields:
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    - property_dm.property_name
    filters: {}
    sorts:
    - property_dm.property_name
    limit: 500
    total: true
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 18
    col: 0
    width: 24
    height: 11
  - title: Group by Property
    name: Group by Property
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: table
    fields:
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    - property_dm.property_name
    filters:
      str_property_seg_v.segment_name: Group
    sorts:
    - property_dm.property_name
    limit: 500
    total: true
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 29
    col: 0
    width: 24
    height: 11
  - title: Transient by Property
    name: Transient by Property
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: table
    fields:
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    - property_dm.property_name
    filters:
      str_property_seg_v.segment_name: Transient
    sorts:
    - property_dm.property_name
    limit: 500
    total: true
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 40
    col: 0
    width: 24
    height: 11
  - title: Contract by Property
    name: Contract by Property
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: table
    fields:
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    - property_dm.property_name
    filters:
      str_property_seg_v.segment_name: Contract
    sorts:
    - property_dm.property_name
    limit: 500
    total: true
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 51
    col: 0
    width: 24
    height: 11
  - title: Unassigned by Property
    name: Unassigned by Property
    model: strm_property_seg_f
    explore: str_property_seg_v
    type: table
    fields:
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_toly.property_occupancy_rate_pct_toly
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    - str_property_seg_v_toly.compset_occupancy_rate_pct_toly
    - str_property_seg_v_ty.property_occ_index_pct
    - str_property_seg_v_toly.property_occ_index_pct_toly
    - str_property_seg_v_ty.property_adr_sp
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_toly.property_adr_amt_toly_v
    - str_property_seg_v_toly.property_adr_amt_toly
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_toly.compset_adr_amt_toly
    - str_property_seg_v_ty.property_adr_index_pct
    - str_property_seg_v_toly.property_adr_index_pct_toly
    - str_property_seg_v_ty.property_revpar_sp
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_toly.property_revpar_amt_toly_v
    - str_property_seg_v_toly.property_revpar_amt_toly
    - str_property_seg_v_ty.compset_revpar_amt
    - str_property_seg_v_toly.compset_revpar_amt_toly
    - str_property_seg_v_ty.property_revpar_index_pct
    - str_property_seg_v_toly.property_revpar_index_pct_toly
    - property_dm.property_name
    filters:
      str_property_seg_v.segment_name: Unassigned
    sorts:
    - property_dm.property_name
    limit: 500
    total: true
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 62
    col: 0
    width: 24
    height: 11
  filters:
  - name: Month
    title: Month
    type: field_filter
    default_value: 14 months
    allow_multiple_values: true
    required: false
    model: strm_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: date_dm.month
  - name: Same Store Revenue
    title: Same Store Revenue
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: strm_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: property_dm.same_store_revenue_fl
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: strm_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: property_dm.brand_name
  - name: Property
    title: Property
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: strm_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: property_dm.property_name
  - name: Regional Ops Leader
    title: Regional Ops Leader
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: strm_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: property_dm.evp_full_last_first
  - name: Active
    title: Active
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: strm_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: property_dm.active_fl
