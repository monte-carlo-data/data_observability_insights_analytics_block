- dashboard: data_quality_slas
  title: Data Quality SLAs
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Active Monitors
    name: Active Monitors
    model: prod_insights_block
    explore: insight_monitors
    type: looker_grid
    fields: [insight_monitors.table_type, insight_monitors.count]
    sorts: [insight_monitors.count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Muted (Yes / No): insight_monitors.muted
      Dataset Name: insight_monitors.dataset_name
    row: 2
    col: 0
    width: 10
    height: 3
  - title: Write Jobs per Day
    name: Write Jobs per Day
    model: prod_insights_block
    explore: insight_table_read_write_stats
    type: looker_column
    fields: [insight_table_read_write_stats.timestamp_date, count_of_full_table_id]
    fill_fields: [insight_table_read_write_stats.timestamp_date]
    filters:
      insight_table_read_write_stats.metric: '"table_write_count"'
      insight_table_read_write_stats.timestamp_date: 14 days ago for 14 days
    sorts: [insight_table_read_write_stats.timestamp_date desc]
    limit: 500
    dynamic_fields: [{measure: count_of_full_table_id, based_on: insight_table_read_write_stats.full_table_id,
        expression: '', label: Count of Full Table ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 5
    col: 0
    width: 10
    height: 6
  - title: Incidents per Day
    name: Incidents per Day
    model: prod_insights_block
    explore: insight_incident_history
    type: looker_column
    fields: [insight_incident_history.incident_created_timestamp_date, insight_incident_history.count,
      insight_incident_history.incident_type]
    pivots: [insight_incident_history.incident_type]
    fill_fields: [insight_incident_history.incident_created_timestamp_date]
    filters:
      insight_incident_history.incident_created_timestamp_date: 14 days ago for 14
        days
    sorts: [insight_incident_history.incident_created_timestamp_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    reference_lines: [{reference_type: line, line_value: '5', range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Daily Incident Target SLA}]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Dataset Name: insight_incident_history.dataset_name
    row: 11
    col: 0
    width: 10
    height: 6
  - title: Dataset Quality
    name: Dataset Quality
    model: prod_insights_block
    explore: insight_incident_history
    type: looker_grid
    fields: [insight_incident_history.count, insight_incident_history.incident_type,
      insight_incident_history.dataset_name]
    pivots: [insight_incident_history.incident_type]
    filters:
      insight_incident_history.incident_created_timestamp_date: 14 days ago for 14
        days
    sorts: [insight_incident_history.count desc 0, insight_incident_history.incident_type]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: '5', range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Daily Incident Target SLA}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Dataset Name: insight_incident_history.dataset_name
    row: 2
    col: 10
    width: 14
    height: 15
  - name: Daily Standup
    type: text
    title_text: Daily Standup
    subtitle_text: ''
    body_text: ''
    row: 17
    col: 0
    width: 24
    height: 2
  - name: SLA Overview
    type: text
    title_text: SLA Overview
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Latest Incidents
    name: Latest Incidents
    model: prod_insights_block
    explore: insight_incident_history
    type: looker_grid
    fields: [insight_incident_history.row_number, insight_incident_history.incident_id,
      insight_incident_history.incident_created_timestamp_time, insight_incident_history.last_feedback,
      insight_incident_history.owner, insight_incident_history.incident_type, insight_incident_history.dataset_name,
      sum_of_n_events, sum_of_n_key_assets]
    filters:
      insight_incident_history.incident_created_date: 7 days
    sorts: [insight_incident_history.incident_created_timestamp_time desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_n_events, based_on: insight_incident_history.n_events,
        expression: '', label: Sum of N Events, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_n_key_assets, based_on: insight_incident_history.n_key_assets,
        expression: '', label: Sum of N Key Assets, type: sum, _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      sum_of_n_events:
        is_active: true
      sum_of_n_key_assets:
        is_active: true
    hidden_fields: [insight_incident_history.row_number]
    defaults_version: 1
    series_column_widths:
      insight_incident_history.incident_id: 284
      insight_incident_history.incident_created_timestamp_time: 218
      insight_incident_history.last_feedback: 114
      insight_incident_history.owner: 75
      insight_incident_history.incident_type: 133
      insight_incident_history.dataset_name: 270
      sum_of_n_events: 124
      sum_of_n_key_assets: 149
    listen:
      Dataset Name: insight_incident_history.dataset_name
    row: 19
    col: 0
    width: 24
    height: 11
  filters:
  - name: Muted (Yes / No)
    title: Muted (Yes / No)
    type: field_filter
    default_value: 'No'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: prod_insights_block
    explore: insight_monitors
    listens_to_filters: []
    field: insight_monitors.muted
  - name: Dataset Name
    title: Dataset Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: prod_insights_block
    explore: insight_incident_history
    listens_to_filters: []
    field: insight_incident_history.dataset_name
