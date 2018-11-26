- dashboard: str_daily_trends
  title: STR Daily Trends
  layout: newspaper
  elements:
  - title: Occupancy % Act:LY
    name: Occupancy % Act:LY
    model: strd_property_seg_f
    explore: str_property_seg_v
    type: looker_column
    fields:
    - str_property_seg_v_ly.property_occupancy_rate_pct
    - str_property_seg_v_ty.property_occupancy_rate_pct
    limit: 500
    query_timezone: America/Denver
    stacking: ''
    colors:
    - "#a6cee3"
    - "#1f78b4"
    - "#b2df8a"
    - "#33a02c"
    - "#fb9a99"
    - "#e31a1c"
    - "#fdbf6f"
    - "#ff7f00"
    - "#cab2d6"
    - "#6a3d9a"
    - "#edbc0e"
    - "#b15928"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: circle_outline
    series_colors:
      str_property_seg_v_ty.property_revpar_index_pct: "#637484"
      str_property_seg_v_ly.property_revpar_index_pct: "#1e77b2"
      str_property_seg_v_ly.property_occupancy_rate_pct: "#414448"
      str_property_seg_v_ty.property_occupancy_rate_pct: "#87ABCB"
    series_labels:
      str_property_seg_v_ty.property_revpar_index_pct: '2018'
      str_property_seg_v_ly.property_revpar_index_pct: '2017'
      str_property_seg_v_ty.property_occupancy_rate_pct: '2018'
      str_property_seg_v_ty.compset_occupancy_rate_pct: '20107'
      str_property_seg_v_ly.property_occupancy_rate_pct: '2017'
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: str_property_seg_v_ty.property_revpar_index_pct
        name: "    Measures"
        axisId: str_property_seg_v_ty.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 54
      - id: str_property_seg_v_ly.property_revpar_index_pct
        name: "   LY"
        axisId: str_property_seg_v_ly.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 57
      showLabels: true
      showValues: true
      unpinAxis: true
      tickDensity: default
      type: linear
      __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
      __LINE_NUM: 51
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    swap_axes: false
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    listen:
      Month: date_dm.month
      Property: property_dm.property_name
    row: 0
    col: 13
    width: 5
    height: 9
  - title: ADR Comparison
    name: ADR Comparison
    model: strd_property_seg_f
    explore: str_property_seg_v
    type: looker_column
    fields:
    - date_dm.month_name
    - str_property_seg_v_ty.property_adr_amt
    - str_property_seg_v_ty.compset_adr_amt
    - str_property_seg_v_ty.property_adr_index_pct
    sorts:
    - date_dm.month_name
    limit: 500
    column_limit: 50
    query_timezone: America/Denver
    stacking: ''
    colors:
    - "#a6cee3"
    - "#1f78b4"
    - "#b2df8a"
    - "#33a02c"
    - "#fb9a99"
    - "#e31a1c"
    - "#fdbf6f"
    - "#ff7f00"
    - "#cab2d6"
    - "#6a3d9a"
    - "#edbc0e"
    - "#b15928"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors:
      str_property_seg_v_ty.compset_revpar_amt: "#414448"
      str_property_seg_v_ty.property_revpar_index_pct: "#99a0a8"
      str_property_seg_v_ty.property_revpar_amt: "#87abcb"
      str_property_seg_v_ty.compset_adr_amt: "#414448"
      str_property_seg_v_ty.property_adr_amt: "#87abcb"
      str_property_seg_v_ty.property_adr_index_pct: "#99a0a8"
    series_types:
      str_property_seg_v_ty.property_adr_index_pct: line
      str_property_seg_v_ty.property_revpar_index_pct: line
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: str_property_seg_v_ty.property_adr_amt
        name: ADR  Pr
        axisId: str_property_seg_v_ty.property_adr_amt
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 147
      - id: str_property_seg_v_ty.compset_adr_amt
        name: ADR Cs
        axisId: str_property_seg_v_ty.compset_adr_amt
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 150
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
      __LINE_NUM: 144
    - label:
      orientation: right
      series:
      - id: str_property_seg_v_ty.property_adr_index_pct
        name: ADR Index:Cs
        axisId: str_property_seg_v_ty.property_adr_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 161
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
      __LINE_NUM: 158
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    listen:
      Month: date_dm.month
      Property: property_dm.property_name
    row: 9
    col: 0
    width: 23
    height: 9
  - title: RevPAR Index Annual % Comparison
    name: RevPAR Index Annual % Comparison
    model: strd_property_seg_f
    explore: str_property_seg_v
    type: looker_area
    fields:
    - date_dm.month_name
    - str_property_seg_v_ly.property_revpar_index_pct
    - str_property_seg_v_ty.property_revpar_index_pct
    sorts:
    - date_dm.month_name
    limit: 500
    query_timezone: America/Denver
    stacking: ''
    colors:
    - "#a6cee3"
    - "#1f78b4"
    - "#b2df8a"
    - "#33a02c"
    - "#fb9a99"
    - "#e31a1c"
    - "#fdbf6f"
    - "#ff7f00"
    - "#cab2d6"
    - "#6a3d9a"
    - "#edbc0e"
    - "#b15928"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: circle_outline
    series_colors:
      str_property_seg_v_ty.property_revpar_index_pct: "#87ABCB"
      str_property_seg_v_ly.property_revpar_index_pct: "#414448"
    series_labels:
      str_property_seg_v_ty.property_revpar_index_pct: '2018'
      str_property_seg_v_ly.property_revpar_index_pct: '2017'
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: str_property_seg_v_ty.property_revpar_index_pct
        name: "    Measures"
        axisId: str_property_seg_v_ty.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 240
      - id: str_property_seg_v_ly.property_revpar_index_pct
        name: "   LY"
        axisId: str_property_seg_v_ly.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 243
      showLabels: true
      showValues: true
      unpinAxis: true
      tickDensity: default
      type: linear
      __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
      __LINE_NUM: 237
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    swap_axes: false
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    show_dropoff: false
    listen:
      Month: date_dm.month
      Property: property_dm.property_name
    row: 0
    col: 0
    width: 13
    height: 9
  - title: RevPAR Act:LY
    name: RevPAR Act:LY
    model: strd_property_seg_f
    explore: str_property_seg_v
    type: looker_column
    fields:
    - str_property_seg_v_ly.property_revpar_amt
    - str_property_seg_v_ty.property_revpar_amt
    limit: 500
    query_timezone: America/Denver
    stacking: ''
    colors:
    - "#a6cee3"
    - "#1f78b4"
    - "#b2df8a"
    - "#33a02c"
    - "#fb9a99"
    - "#e31a1c"
    - "#fdbf6f"
    - "#ff7f00"
    - "#cab2d6"
    - "#6a3d9a"
    - "#edbc0e"
    - "#b15928"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: circle_outline
    series_colors:
      str_property_seg_v_ty.property_revpar_index_pct: "#637484"
      str_property_seg_v_ly.property_revpar_index_pct: "#1e77b2"
      str_property_seg_v_ly.property_revpar_amt: "#414448"
      str_property_seg_v_ty.property_revpar_amt: "#87ABCB"
    series_labels:
      str_property_seg_v_ty.property_revpar_index_pct: '2018'
      str_property_seg_v_ly.property_revpar_index_pct: '2017'
      str_property_seg_v_ty.property_occupancy_rate_pct: Property
      str_property_seg_v_ty.compset_occupancy_rate_pct: CompSet
      str_property_seg_v_ly.property_revpar_amt: '2017'
      str_property_seg_v_ty.property_revpar_amt: '2018'
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: str_property_seg_v_ty.property_revpar_index_pct
        name: "    Measures"
        axisId: str_property_seg_v_ty.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 331
      - id: str_property_seg_v_ly.property_revpar_index_pct
        name: "   LY"
        axisId: str_property_seg_v_ly.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 334
      showLabels: true
      showValues: true
      unpinAxis: true
      tickDensity: default
      type: linear
      __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
      __LINE_NUM: 328
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    swap_axes: false
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    listen:
      Month: date_dm.month
      Property: property_dm.property_name
    row: 0
    col: 18
    width: 5
    height: 9
  - title: ADR
    name: ADR
    model: strd_property_seg_f
    explore: str_property_seg_v
    type: looker_column
    fields:
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_ty.compset_revpar_amt
    limit: 500
    query_timezone: America/Denver
    stacking: ''
    colors:
    - "#a6cee3"
    - "#1f78b4"
    - "#b2df8a"
    - "#33a02c"
    - "#fb9a99"
    - "#e31a1c"
    - "#fdbf6f"
    - "#ff7f00"
    - "#cab2d6"
    - "#6a3d9a"
    - "#edbc0e"
    - "#b15928"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: circle_outline
    series_colors:
      str_property_seg_v_ty.property_revpar_index_pct: "#637484"
      str_property_seg_v_ly.property_revpar_index_pct: "#1e77b2"
      str_property_seg_v_ty.compset_revpar_amt: "#414448"
    series_labels:
      str_property_seg_v_ty.property_revpar_index_pct: '2018'
      str_property_seg_v_ly.property_revpar_index_pct: '2017'
      str_property_seg_v_ty.property_occupancy_rate_pct: Property
      str_property_seg_v_ty.compset_occupancy_rate_pct: CompSet
      str_property_seg_v_ty.property_revpar_amt: Property
      str_property_seg_v_ty.compset_revpar_amt: CompSet
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: str_property_seg_v_ty.property_revpar_index_pct
        name: "    Measures"
        axisId: str_property_seg_v_ty.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 421
      - id: str_property_seg_v_ly.property_revpar_index_pct
        name: "   LY"
        axisId: str_property_seg_v_ly.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 424
      showLabels: true
      showValues: true
      unpinAxis: true
      tickDensity: default
      type: linear
      __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
      __LINE_NUM: 418
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    swap_axes: false
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    listen:
      Month: date_dm.month
      Property: property_dm.property_name
    row: 18
    col: 5
    width: 5
    height: 9
  - title: RevPAR CompSet Comparison
    name: RevPAR CompSet Comparison
    model: strd_property_seg_f
    explore: str_property_seg_v
    type: looker_area
    fields:
    - date_dm.month_name
    - str_property_seg_v_ty.property_revpar_amt
    - str_property_seg_v_ty.compset_revpar_amt
    sorts:
    - date_dm.month_name
    limit: 500
    query_timezone: America/Denver
    stacking: ''
    colors:
    - "#a6cee3"
    - "#1f78b4"
    - "#b2df8a"
    - "#33a02c"
    - "#fb9a99"
    - "#e31a1c"
    - "#fdbf6f"
    - "#ff7f00"
    - "#cab2d6"
    - "#6a3d9a"
    - "#edbc0e"
    - "#b15928"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: circle_outline
    series_colors:
      str_property_seg_v_ty.property_revpar_index_pct: "#87ABCB"
      str_property_seg_v_ly.property_revpar_index_pct: "#414448"
      str_property_seg_v_ty.compset_revpar_amt: "#414448"
    series_labels:
      str_property_seg_v_ty.property_revpar_index_pct: '2018'
      str_property_seg_v_ly.property_revpar_index_pct: '2017'
      str_property_seg_v_ty.property_revpar_amt: Property
      str_property_seg_v_ty.compset_revpar_amt: CompSet
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: str_property_seg_v_ty.property_revpar_amt
        name: RevPAR  Pr
        axisId: str_property_seg_v_ty.property_revpar_amt
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 512
      - id: str_property_seg_v_ty.compset_revpar_amt
        name: RevPAR Cs
        axisId: str_property_seg_v_ty.compset_revpar_amt
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 515
      showLabels: true
      showValues: true
      unpinAxis: true
      tickDensity: default
      type: linear
      __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
      __LINE_NUM: 509
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    swap_axes: false
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    show_dropoff: false
    listen:
      Month: date_dm.month
      Property: property_dm.property_name
    row: 18
    col: 10
    width: 13
    height: 9
  - title: Occupancy %
    name: Occupancy %
    model: strd_property_seg_f
    explore: str_property_seg_v
    type: looker_column
    fields:
    - str_property_seg_v_ty.property_occupancy_rate_pct
    - str_property_seg_v_ty.compset_occupancy_rate_pct
    limit: 500
    query_timezone: America/Denver
    stacking: ''
    colors:
    - "#a6cee3"
    - "#1f78b4"
    - "#b2df8a"
    - "#33a02c"
    - "#fb9a99"
    - "#e31a1c"
    - "#fdbf6f"
    - "#ff7f00"
    - "#cab2d6"
    - "#6a3d9a"
    - "#edbc0e"
    - "#b15928"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: circle_outline
    series_colors:
      str_property_seg_v_ty.property_revpar_index_pct: "#637484"
      str_property_seg_v_ly.property_revpar_index_pct: "#1e77b2"
      str_property_seg_v_ty.compset_occupancy_rate_pct: "#414448"
    series_labels:
      str_property_seg_v_ty.property_revpar_index_pct: '2018'
      str_property_seg_v_ly.property_revpar_index_pct: '2017'
      str_property_seg_v_ty.property_occupancy_rate_pct: Property
      str_property_seg_v_ty.compset_occupancy_rate_pct: CompSet
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: str_property_seg_v_ty.property_revpar_index_pct
        name: "    Measures"
        axisId: str_property_seg_v_ty.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 600
      - id: str_property_seg_v_ly.property_revpar_index_pct
        name: "   LY"
        axisId: str_property_seg_v_ly.property_revpar_index_pct
        __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
        __LINE_NUM: 603
      showLabels: true
      showValues: true
      unpinAxis: true
      tickDensity: default
      type: linear
      __FILE: trh_edw/str_daily_dashboard.dashboard.lookml
      __LINE_NUM: 597
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    swap_axes: false
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    listen:
      Month: date_dm.month
      Property: property_dm.property_name
    row: 18
    col: 0
    width: 5
    height: 9
  filters:
  - name: Month
    title: Month
    type: field_filter
    default_value: 12 months
    allow_multiple_values: true
    required: false
    model: strd_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: date_dm.month
  - name: Property
    title: Property
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: strd_property_seg_f
    explore: str_property_seg_v
    listens_to_filters: []
    field: property_dm.property_name
