- dashboard: str_daily_corporate_summary
  title: STR Daily Corporate Summary
  layout: newspaper
  elements:
  - title: Chain
    name: Chain
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.property_name
    - date_dm.year
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
    filters:
      date_dm.current_period_ytd: 'Yes'
      property_dm.brand_name: Chain
    sorts:
    - date_dm.year desc
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
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Active Properties: property_dm.active_fl
    row: 8
    col: 0
    width: 24
    height: 7
  - title: Alila
    name: Alila
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.property_name
    - date_dm.year
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
    filters:
      date_dm.current_period_ytd: 'Yes'
      property_dm.brand_name: Alila
    sorts:
    - date_dm.year desc
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
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Active Properties: property_dm.active_fl
    row: 15
    col: 0
    width: 24
    height: 5
  - title: Destination
    name: Destination
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.property_name
    - date_dm.year
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
    filters:
      date_dm.current_period_ytd: 'Yes'
      property_dm.brand_name: Destination
    sorts:
    - date_dm.year desc
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
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Active Properties: property_dm.active_fl
    row: 20
    col: 0
    width: 24
    height: 11
  - title: Joie de Vivre
    name: Joie de Vivre
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.property_name
    - date_dm.year
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
    filters:
      date_dm.current_period_ytd: 'Yes'
      property_dm.brand_name: Joie De Vivre
    sorts:
    - date_dm.year desc
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
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Active Properties: property_dm.active_fl
    row: 31
    col: 0
    width: 24
    height: 11
  - title: Thompson
    name: Thompson
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.property_name
    - date_dm.year
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
    filters:
      date_dm.current_period_ytd: 'Yes'
      property_dm.brand_name: Thompson
    sorts:
    - date_dm.year desc
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
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Active Properties: property_dm.active_fl
    row: 42
    col: 0
    width: 24
    height: 11
  - title: Portfolio
    name: Portfolio
    model: strd_property_f
    explore: str_property_v
    type: table
    fields:
    - property_dm.brand_name
    - date_dm.year
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
    filters:
      date_dm.current_period_ytd: 'Yes'
    sorts:
    - date_dm.year desc
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
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Month: date_dm.month
      Same Store Revenue: property_dm.same_store_revenue_fl
      Active Properties: property_dm.active_fl
    row: 2
    col: 0
    width: 24
    height: 6
  - title: Reporting Period
    name: Reporting Period
    model: strd_property_f
    explore: str_property_v
    type: single_value
    fields:
    - date_dm.month_range
    limit: 500
    query_timezone: America/Denver
    listen:
      Month: date_dm.month
      Active Properties: property_dm.active_fl
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Month
    title: Month
    type: field_filter
    default_value: 3 months
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
  - name: Active Properties
    title: Active Properties
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: strd_property_f
    explore: str_property_v
    listens_to_filters: []
    field: property_dm.active_fl
