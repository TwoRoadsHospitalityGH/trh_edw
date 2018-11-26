- dashboard: str_daily_corporate_summary
  title: STR Daily Corporate Summary
  layout: newspaper
  elements:
  - title: Period
    name: Period
    model: strd_property_seg_f
    explore: str_property_seg_v
    type: single_value
    fields:
    - date_dm.month_range
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
      Active: property_dm.active_fl
    row: 0
    col: 0
    width: 24
    height: 2
  - title: by Brand
    name: by Brand
    model: strd_property_seg_f
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
    - property_dm.brand_name
    sorts:
    - property_dm.brand_name
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
      Active: property_dm.active_fl
    row: 2
    col: 0
    width: 24
    height: 6
  - title: Alila
    name: Alila
    model: strd_property_seg_f
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
      property_dm.brand_name: Alila
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
      Active: property_dm.active_fl
    row: 8
    col: 0
    width: 24
    height: 5
  - title: Chain
    name: Chain
    model: strd_property_seg_f
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
      property_dm.brand_name: Chain
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
      Active: property_dm.active_fl
    row: 13
    col: 0
    width: 24
    height: 9
  - title: Destination
    name: Destination
    model: strd_property_seg_f
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
      property_dm.brand_name: Destination
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
      Active: property_dm.active_fl
    row: 22
    col: 0
    width: 24
    height: 9
  - title: Joie De Vivre
    name: Joie De Vivre
    model: strd_property_seg_f
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
      property_dm.brand_name: Joie De Vivre
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
      Active: property_dm.active_fl
    row: 31
    col: 0
    width: 24
    height: 9
  - title: Thompson
    name: Thompson
    model: strd_property_seg_f
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
      property_dm.brand_name: Thompson
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
      Active: property_dm.active_fl
    row: 40
    col: 0
    width: 24
    height: 9
  filters:
  - name: Month
    title: Month
    type: field_filter
    default_value: 14 months
    allow_multiple_values: true
    required: false
    model: strd_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: date_dm.month
  - name: Same Store Revenue
    title: Same Store Revenue
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: strd_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: property_dm.same_store_revenue_fl
  - name: Active
    title: Active
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: strd_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: property_dm.active_fl
