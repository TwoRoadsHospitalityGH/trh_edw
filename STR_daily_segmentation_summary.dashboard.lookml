- dashboard: str_monthly_segmentation_summary
  title: STR Monthly Segmentation Summary
  layout: newspaper
  elements:
  - title: Period
    name: Period
    model: strd_property_f
    explore: str_property_v
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
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    model: strd_property_f
    explore: str_property_v
    type: looker_single_record
    fields:
    - date_dm.date_range
    - str_property_v.property_cnt
    - str_property_v.pr_group_occupancy_rate_pct
    - strd_property_f_toly.pr_group_occupancy_rate_pct_toly
    - str_property_v.cs_group_occupancy_rate_pct
    - strd_property_f_toly.cs_group_occupancy_rate_pct_toly
    - str_property_v.pr_group_occ_index_pct
    - strd_property_f_toly.pr_group_occ_index_pct_toly
    - str_property_v.pr_group_adr_amt
    - strd_property_f_toly.pr_group_adr_amt_toly
    - str_property_v.cs_group_adr_amt
    - strd_property_f_toly.cs_group_adr_amt_toly
    - str_property_v.pr_group_adr_index_pct
    - strd_property_f_toly.pr_group_adr_index_pct_toly
    - str_property_v.pr_group_revpar_amt
    - strd_property_f_toly.pr_group_revpar_amt_toly
    - str_property_v.cs_group_revpar_amt
    - strd_property_f_toly.cs_group_revpar_amt_toly
    - str_property_v.pr_group_revpar_index_pct
    - strd_property_f_toly.pr_group_revpar_index_pct_toly
    filters: {}
    sorts:
    - date_dm.date_range desc
    limit: 500
    query_timezone: America/Denver
    show_view_names: false
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 2
    col: 6
    width: 6
    height: 10
  - title: All Segments
    name: All Segments
    model: strd_property_f
    explore: str_property_v
    type: looker_single_record
    fields:
    - date_dm.date_range
    - str_property_v.property_cnt
    - str_property_v.property_occupancy_rate_pct
    - strd_property_f_toly.property_occupancy_rate_pct_toly
    - str_property_v.compset_occupancy_rate_pct
    - strd_property_f_toly.compset_occupancy_rate_pct_toly
    - str_property_v.property_occ_index_pct
    - strd_property_f_toly.property_occ_index_pct_toly
    - str_property_v.property_adr_amt
    - strd_property_f_toly.property_adr_amt_toly
    - str_property_v.compset_adr_amt
    - strd_property_f_toly.compset_adr_amt_toly
    - str_property_v.property_adr_index_pct
    - strd_property_f_toly.property_adr_index_pct_toly
    - str_property_v.property_revpar_amt
    - strd_property_f_toly.property_revpar_amt_toly
    - str_property_v.compset_revpar_amt
    - strd_property_f_toly.compset_revpar_amt_toly
    - str_property_v.property_revpar_index_pct
    - strd_property_f_toly.property_revpar_index_pct_toly
    filters: {}
    sorts:
    - str_property_v.property_occupancy_rate_pct desc
    limit: 500
    query_timezone: America/Denver
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    width: 6
    height: 10
  - title: Transient
    name: Transient
    model: strd_property_f
    explore: str_property_v
    type: looker_single_record
    fields:
    - date_dm.date_range
    - str_property_v.property_cnt
    - str_property_v.pr_transient_occupancy_rate_pct
    - strd_property_f_toly.pr_transient_occupancy_rate_pct_toly
    - str_property_v.cs_transient_occupancy_rate_pct
    - strd_property_f_toly.cs_transient_occupancy_rate_pct_toly
    - str_property_v.pr_transient_occ_index_pct
    - strd_property_f_toly.pr_transient_occ_index_pct_toly
    - str_property_v.pr_transient_adr_amt
    - strd_property_f_toly.pr_transient_adr_amt_toly
    - str_property_v.cs_transient_adr_amt
    - strd_property_f_toly.cs_transient_adr_amt_toly
    - str_property_v.pr_transient_adr_index_pct
    - strd_property_f_toly.pr_transient_adr_index_pct_toly
    - str_property_v.pr_transient_revpar_amt
    - strd_property_f_toly.pr_transient_revpar_amt_toly
    - str_property_v.cs_transient_revpar_amt
    - strd_property_f_toly.cs_transient_revpar_amt_toly
    - str_property_v.pr_transient_revpar_index_pct
    - strd_property_f_toly.pr_transient_revpar_index_pct_toly
    filters: {}
    sorts:
    - date_dm.date_range desc
    limit: 500
    query_timezone: America/Denver
    show_view_names: false
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 2
    col: 12
    width: 6
    height: 10
  - title: Contract
    name: Contract
    model: strd_property_f
    explore: str_property_v
    type: looker_single_record
    fields:
    - date_dm.date_range
    - str_property_v.property_cnt
    - str_property_v.pr_contract_occupancy_rate_pct
    - strd_property_f_toly.pr_contract_occupancy_rate_pct_toly
    - str_property_v.cs_contract_occupancy_rate_pct
    - strd_property_f_toly.cs_contract_occupancy_rate_pct_toly
    - str_property_v.pr_contract_occ_index_pct
    - strd_property_f_toly.pr_contract_occ_index_pct_toly
    - str_property_v.pr_contract_adr_amt
    - strd_property_f_toly.pr_contract_adr_amt_toly
    - str_property_v.cs_contract_adr_amt
    - strd_property_f_toly.cs_contract_adr_amt_toly
    - str_property_v.pr_contract_adr_index_pct
    - strd_property_f_toly.pr_contract_adr_index_pct_toly
    - str_property_v.pr_contract_revpar_amt
    - strd_property_f_toly.pr_contract_revpar_amt_toly
    - str_property_v.cs_contract_revpar_amt
    - strd_property_f_toly.cs_contract_revpar_amt_toly
    - str_property_v.pr_contract_revpar_index_pct
    - strd_property_f_toly.pr_contract_revpar_index_pct_toly
    filters: {}
    sorts:
    - date_dm.date_range desc
    limit: 500
    query_timezone: America/Denver
    show_view_names: false
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 2
    col: 18
    width: 6
    height: 10
  - title: Daily All Segments
    name: Daily All Segments
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.property_name
    - str_property_v.property_occupancy_rate_pct
    - strd_property_f_toly.property_occupancy_rate_pct_toly
    - str_property_v.compset_occupancy_rate_pct
    - strd_property_f_toly.compset_occupancy_rate_pct_toly
    - str_property_v.property_occ_index_pct
    - strd_property_f_toly.property_occ_index_pct_toly
    - str_property_v.property_adr_amt
    - strd_property_f_toly.property_adr_amt_toly
    - str_property_v.compset_adr_amt
    - strd_property_f_toly.compset_adr_amt_toly
    - str_property_v.property_adr_index_pct
    - strd_property_f_toly.property_adr_index_pct_toly
    - str_property_v.property_revpar_amt
    - strd_property_f_toly.property_revpar_amt_toly
    - str_property_v.compset_revpar_amt
    - strd_property_f_toly.compset_revpar_amt_toly
    - str_property_v.property_revpar_index_pct
    - strd_property_f_toly.property_revpar_index_pct_toly
    filters: {}
    sorts:
    - str_property_v.property_occupancy_rate_pct desc
    limit: 500
    total: true
    query_timezone: America/Denver
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 12
    col: 0
    width: 24
    height: 11
  - title: Daily Group
    name: Daily Group
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.property_name
    - str_property_v.pr_group_occupancy_rate_pct
    - strd_property_f_toly.pr_group_occupancy_rate_pct_toly
    - str_property_v.cs_group_occupancy_rate_pct
    - strd_property_f_toly.cs_group_occupancy_rate_pct_toly
    - str_property_v.pr_group_occ_index_pct
    - strd_property_f_toly.pr_group_occ_index_pct_toly
    - str_property_v.pr_group_adr_amt
    - strd_property_f_toly.pr_group_adr_amt_toly
    - str_property_v.cs_group_adr_amt
    - strd_property_f_toly.cs_group_adr_amt_toly
    - str_property_v.pr_group_adr_index_pct
    - strd_property_f_toly.pr_group_adr_index_pct_toly
    - str_property_v.pr_group_revpar_amt
    - strd_property_f_toly.pr_group_revpar_amt_toly
    - str_property_v.cs_group_revpar_amt
    - strd_property_f_toly.cs_group_revpar_amt_toly
    - str_property_v.pr_group_revpar_index_pct
    - strd_property_f_toly.pr_group_revpar_index_pct_toly
    filters: {}
    limit: 500
    total: true
    query_timezone: America/Denver
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 23
    col: 0
    width: 24
    height: 11
  - title: Daily Transient
    name: Daily Transient
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.property_name
    - str_property_v.pr_transient_occupancy_rate_pct
    - strd_property_f_toly.pr_transient_occupancy_rate_pct_toly
    - str_property_v.cs_transient_occupancy_rate_pct
    - strd_property_f_toly.cs_transient_occupancy_rate_pct_toly
    - str_property_v.pr_transient_occ_index_pct
    - strd_property_f_toly.pr_transient_occ_index_pct_toly
    - str_property_v.pr_transient_adr_amt
    - strd_property_f_toly.pr_transient_adr_amt_toly
    - str_property_v.cs_transient_adr_amt
    - strd_property_f_toly.cs_transient_adr_amt_toly
    - str_property_v.pr_transient_adr_index_pct
    - strd_property_f_toly.pr_transient_adr_index_pct_toly
    - str_property_v.pr_transient_revpar_amt
    - strd_property_f_toly.pr_transient_revpar_amt_toly
    - str_property_v.cs_transient_revpar_amt
    - strd_property_f_toly.cs_transient_revpar_amt_toly
    - str_property_v.pr_transient_revpar_index_pct
    - strd_property_f_toly.pr_transient_revpar_index_pct_toly
    filters: {}
    limit: 500
    total: true
    query_timezone: America/Denver
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 34
    col: 0
    width: 24
    height: 11
  - title: Daily Contract
    name: Daily Contract
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.property_name
    - str_property_v.pr_contract_occupancy_rate_pct
    - strd_property_f_toly.pr_contract_occupancy_rate_pct_toly
    - str_property_v.cs_contract_occupancy_rate_pct
    - strd_property_f_toly.cs_contract_occupancy_rate_pct_toly
    - str_property_v.pr_contract_occ_index_pct
    - strd_property_f_toly.pr_contract_occ_index_pct_toly
    filters: {}
    limit: 500
    total: true
    query_timezone: America/Denver
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Brand: property_dm.brand_name
      Property: property_dm.property_name
      Regional Ops Leader: property_dm.evp_full_last_first
      Active: property_dm.active_fl
    row: 45
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
    model: strd_property_f
    explore: str_property_v
    listens_to_filters: []
    field: date_dm.month
  - name: Same Store Revenue
    title: Same Store Revenue
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: strd_property_f
    explore: str_property_v
    listens_to_filters: []
    field: property_dm.same_store_revenue_fl
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: strd_property_f
    explore: str_property_v
    listens_to_filters: []
    field: property_dm.brand_name
  - name: Property
    title: Property
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: strd_property_f
    explore: str_property_v
    listens_to_filters: []
    field: property_dm.property_name
  - name: Regional Ops Leader
    title: Regional Ops Leader
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: strd_property_f
    explore: str_property_v
    listens_to_filters: []
    field: property_dm.evp_full_last_first
  - name: Active
    title: Active
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: strd_property_f
    explore: str_property_v
    listens_to_filters: []
    field: property_dm.active_fl
