- dashboard: quality__slas
  title: Quality & SLAs
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: KRv8hFH1CFqLpCQgd0cWM0
  elements:
  - title: Dataset Deep-Dive
    name: Dataset Deep-Dive
    model: monte-carlo-product
    explore: events
    type: looker_grid
    fields: [events.type, incidents.count, incidents.dataset]
    pivots: [events.type]
    filters:
      events.type: -"incident_status_update",-"incident_owner_update",-"incident_severity_update",-comment
    sorts: [events.type, incidents.count desc 0]
    limit: 1000
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Segment, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: segment,
        args: [table_metadata.dataset_name, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Segment, filter: 'javascript,ios,android,firetv,roku,"android_tv_prod","ios_demo_app"'}],
          Other], _kind_hint: dimension, _type_hint: string}]
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
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      size_diff_events.incident_count: 103
      fresh_anom_events.incident_count: 94
      incident_status_update_events.incident_count: 184
      unchanged_size_anom_events.incident_count: 177
    series_cell_visualizations:
      events.incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      incidents.count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
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
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Incident Type: events.incident_type
      Incident Date Filter: events.incident_date_filter
    row: 21
    col: 10
    width: 14
    height: 8
  - title: Freshness Deep-Dive
    name: Freshness Deep-Dive
    model: monte-carlo-product
    explore: insight_monitors
    type: looker_grid
    fields: [insight_monitors.freshness_monitors, insight_monitors.dataset_name, events.freshness_incident_count]
    sorts: [insight_monitors.freshness_monitors desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      insight_monitors.freshness_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_anomaly_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
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
    series_types: {}
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
    listen:
      Incident Type: events.incident_type
      Incident Date Filter: events.incident_date_filter
      Muted (Yes / No): insight_monitors.muted
      Domains: insight_monitors.domains
    row: 21
    col: 0
    width: 10
    height: 8
  - title: All Incidents & Monitors
    name: All Incidents & Monitors
    model: monte-carlo-product
    explore: insight_monitors
    type: looker_grid
    fields: [insight_monitors.dataset_name, insight_monitors.total_monitors, insight_monitors.total_tables,
      events.incident_count, events.days_since_incident]
    filters: {}
    sorts: [insight_monitors.total_monitors desc]
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
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      insight_monitors.freshness_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_anomaly_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_tables:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
    conditional_formatting: [{type: between, value: [0, 5], background_color: 'rgb(61,
          133, 198)', font_color: !!null '', color_application: {collection_id: monte-carlo,
          palette_id: monte-carlo-sequential-0, options: {steps: 5, reverse: false}},
        bold: false, italic: false, strikethrough: false, fields: [events.days_since_incident]}]
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
    series_types: {}
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
    listen:
      Incident Type: events.incident_type
      Incident Date Filter: events.incident_date_filter
      Muted (Yes / No): insight_monitors.muted
      Domains: insight_monitors.domains
    row: 6
    col: 12
    width: 12
    height: 9
  - title: Monitors
    name: Monitors
    model: monte-carlo-product
    explore: insight_monitors
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [insight_monitors.total_monitors, insight_monitors.freshness_monitors,
      insight_monitors.size_monitors, insight_monitors.schema_monitors, insight_monitors.field_health_monitors,
      insight_monitors.distribution_monitors, events.incident_count]
    filters: {}
    sorts: [insight_monitors.total_monitors desc]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '14'
    show_title_insight_monitors.total_monitors: true
    show_comparison_events.incident_count: false
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      insight_monitors.freshness_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_anomaly_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
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
    series_types: {}
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
    defaults_version: 0
    title_hidden: true
    listen:
      Incident Type: events.incident_type
      Incident Date Filter: events.incident_date_filter
      Muted (Yes / No): insight_monitors.muted
      Domains: insight_monitors.domains
    row: 0
    col: 0
    width: 19
    height: 4
  - title: 'Incidents per # of Monitors'
    name: 'Incidents per # of Monitors'
    model: monte-carlo-product
    explore: insight_monitors
    type: single_value
    fields: [insight_monitors.total_monitors, events.incident_count]
    sorts: [insight_monitors.total_monitors desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${events.incident_count}\
          \ / ${insight_monitors.total_monitors}", label: Incidents pm, value_format: !!null '',
        value_format_name: decimal_4, _kind_hint: measure, table_calculation: incidents_pm,
        _type_hint: number}, {category: table_calculation, expression: "${insight_monitors.total_monitors}\
          \ / ${events.incident_count}", label: New Calculation, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: new_calculation,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    font_size_main: '14'
    show_title_insight_monitors.total_monitors: true
    show_comparison_events.incident_count: false
    hidden_fields: [events.incident_count, insight_monitors.total_monitors]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      insight_monitors.freshness_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_anomaly_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
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
    series_types: {}
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
    listen:
      Incident Type: events.incident_type
      Incident Date Filter: events.incident_date_filter
      Muted (Yes / No): insight_monitors.muted
      Domains: insight_monitors.domains
    row: 0
    col: 19
    width: 5
    height: 4
  - name: SLAs & Data Health
    type: text
    title_text: SLAs & Data Health
    subtitle_text: ''
    body_text: ''
    row: 4
    col: 0
    width: 24
    height: 2
  - title: Domain Health
    name: Domain Health
    model: monte-carlo-product
    explore: insight_monitors
    type: looker_grid
    fields: [insight_monitors.total_monitors, insight_monitors.total_tables, events.incident_count,
      insight_monitors.domains, events.days_since_incident]
    filters: {}
    sorts: [insight_monitors.total_monitors desc]
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
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      insight_monitors.freshness_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_anomaly_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_tables:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
    conditional_formatting: [{type: between, value: [0, 5], background_color: 'rgb(61,
          133, 198)', font_color: !!null '', color_application: {collection_id: monte-carlo,
          palette_id: monte-carlo-sequential-0, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: [events.days_since_incident]}]
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
    series_types: {}
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
    listen:
      Incident Type: events.incident_type
      Incident Date Filter: events.incident_date_filter

      Muted (Yes / No): insight_monitors.muted
      Domains: insight_monitors.domains
    row: 15
    col: 12
    width: 12
    height: 4
  - name: Data Deep Dive
    type: text
    title_text: Data Deep Dive
    subtitle_text: ''
    body_text: ''
    row: 19
    col: 0
    width: 24
    height: 2
  - title: Table Update SLAs
    name: Table Update SLAs
    model: monte-carlo-product
    explore: insight_monitors
    type: looker_column
    fields: [insight_monitors.freshness_monitors, events.freshness_incident_count,
      last_90_days_calendar.date, last_90_days_calendar.percent_freshness]
    fill_fields: [last_90_days_calendar.date]
    filters:
      events.incident_type: ''
      events.type: ''
    sorts: [last_90_days_calendar.date]
    limit: 500
    column_limit: 50
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: last_90_days_calendar.percent_freshness,
            id: last_90_days_calendar.percent_freshness, name: Percent Freshness}],
        showLabels: true, showValues: false, minValue: 0.9, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: events.freshness_incident_count, id: events.freshness_incident_count,
            name: Freshness Incident Count}], showLabels: true, showValues: false,
        maxValue: 15, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hidden_series: [insight_monitors.freshness_monitors]
    series_types:
      last_90_days_calendar.percent_freshness: line
    series_labels:
      last_90_days_calendar.percent_freshness: "% Tables Updated by SLA"
      events.freshness_incident_count: Table Update Incidents
    reference_lines: []
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
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
      insight_monitors.freshness_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_anomaly_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_tables:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
    conditional_formatting: [{type: between, value: [0, 5], background_color: 'rgb(61,
          133, 198)', font_color: !!null '', color_application: {collection_id: monte-carlo,
          palette_id: monte-carlo-sequential-0, options: {steps: 5, reverse: false}},
        bold: false, italic: false, strikethrough: false, fields: []}]
    defaults_version: 1
    hidden_fields: [insight_monitors.freshness_monitors]
    show_null_points: true
    interpolation: linear
    listen:
      Incident Date Filter: events.incident_date_filter

      Muted (Yes / No): insight_monitors.muted
      Domains: insight_monitors.domains
    row: 10
    col: 0
    width: 12
    height: 9
  - title: Domain Update SLAs
    name: Domain Update SLAs
    model: monte-carlo-product
    explore: insight_monitors
    type: looker_grid
    fields: [insight_monitors.freshness_monitors, events.freshness_incident_count,
      last_90_days_calendar.percent_freshness, insight_monitors.domains]
    filters:
      events.incident_type: ''
      events.type: ''
    sorts: [insight_monitors.freshness_monitors desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      last_90_days_calendar.percent_freshness: "% Tables Updated by SLA"
      events.freshness_incident_count: Table Update Incidents
    series_cell_visualizations:
      insight_monitors.freshness_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_anomaly_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_tables:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      last_90_days_calendar.percent_freshness:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
    conditional_formatting: [{type: between, value: [0, 5], background_color: 'rgb(61,
          133, 198)', font_color: !!null '', color_application: {collection_id: monte-carlo,
          palette_id: monte-carlo-sequential-0, options: {steps: 5, reverse: false}},
        bold: false, italic: false, strikethrough: false, fields: []}]
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
    stacking: ''
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: last_90_days_calendar.percent_freshness,
            id: last_90_days_calendar.percent_freshness, name: Percent Freshness}],
        showLabels: true, showValues: false, minValue: 0.9, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: events.freshness_incident_count, id: events.freshness_incident_count,
            name: Freshness Incident Count}], showLabels: true, showValues: false,
        maxValue: 15, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hidden_series: [insight_monitors.freshness_monitors]
    series_types: {}
    reference_lines: []
    defaults_version: 1
    hidden_fields: [insight_monitors.freshness_monitors]
    show_null_points: true
    interpolation: linear
    listen:
      Incident Date Filter: events.incident_date_filter

      Muted (Yes / No): insight_monitors.muted
      Domains: insight_monitors.domains
    row: 6
    col: 4
    width: 8
    height: 4
  - title: Table Updates SLA
    name: Table Updates SLA
    model: monte-carlo-product
    explore: insight_monitors
    type: single_value
    fields: [last_90_days_calendar.percent_freshness]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: last_90_days_calendar.percent_freshness,
            id: last_90_days_calendar.percent_freshness, name: Percent Freshness}],
        showLabels: true, showValues: false, minValue: 0.9, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: events.freshness_incident_count, id: events.freshness_incident_count,
            name: Freshness Incident Count}], showLabels: true, showValues: false,
        maxValue: 15, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hidden_series: [insight_monitors.freshness_monitors]
    series_types: {}
    series_labels:
      last_90_days_calendar.percent_freshness: "% Tables Updated by SLA"
      events.freshness_incident_count: Table Update Incidents
    reference_lines: []
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      insight_monitors.freshness_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_anomaly_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      events.freshness_incident_count:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_monitors:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      insight_monitors.total_tables:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
    conditional_formatting: [{type: between, value: [0, 5], background_color: 'rgb(61,
          133, 198)', font_color: !!null '', color_application: {collection_id: monte-carlo,
          palette_id: monte-carlo-sequential-0, options: {steps: 5, reverse: false}},
        bold: false, italic: false, strikethrough: false, fields: []}]
    defaults_version: 1
    hidden_fields: []
    show_null_points: true
    interpolation: linear
    listen:
      Incident Date Filter: events.incident_date_filter

      Muted (Yes / No): insight_monitors.muted
      Domains: insight_monitors.domains
    row: 6
    col: 0
    width: 4
    height: 4
  - title: Daily Standup
    name: Daily Standup
    model: slas
    explore: insight_incident_history
    type: looker_grid
    fields: [insight_incident_history.row_number, insight_incident_history.incident_id,
      insight_incident_history.incident_created_timestamp_time, insight_incident_history.last_feedback,
      insight_incident_history.owner, insight_incident_history.incident_type, insight_incident_history.dataset_name,
      sum_of_n_events, sum_of_n_key_assets]
    filters:
      insight_incident_history.incident_created_date: 7 days
      insight_incident_history.dataset_name: ''
      insight_incident_history.incident_created_timestamp_date: 14 days
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
    color_application:
      collection_id: monte-carlo
      palette_id: monte-carlo-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      insight_incident_history.incident_id: 284
      insight_incident_history.incident_created_timestamp_time: 218
      insight_incident_history.last_feedback: 114
      insight_incident_history.owner: 75
      insight_incident_history.incident_type: 133
      insight_incident_history.dataset_name: 270
      sum_of_n_events: 124
      sum_of_n_key_assets: 149
    series_cell_visualizations:
      sum_of_n_events:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
      sum_of_n_key_assets:
        is_active: true
        palette:
          palette_id: monte-carlo-sequential-0
          collection_id: monte-carlo
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
    series_types: {}
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
    hidden_fields: [insight_incident_history.row_number]
    defaults_version: 1
    title_hidden: true
    listen: {}
    row: 30
    col: 0
    width: 24
    height: 9
  - name: Daily Standup Triage
    type: text
    title_text: Daily Standup Triage
    subtitle_text: ''
    body_text: ''
    row: 29
    col: 0
    width: 24
    height: 1
  filters:
  - name: Incident Type
    title: Incident Type
    type: field_filter
    default_value: -"schema_changes"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: monte-carlo-product
    explore: events
    listens_to_filters: []
    field: events.type
  - name: Incident Date Filter
    title: Incident Date Filter
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: monte-carlo-product
    explore: insight_monitors
    listens_to_filters: []
    field: events.incident_date_filter
  - name: Muted (Yes / No)
    title: Muted (Yes / No)
    type: field_filter
    default_value: 'No'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: monte-carlo-product
    explore: insight_monitors
    listens_to_filters: []
    field: insight_monitors.muted
  - name: Domains
    title: Domains
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: monte-carlo-product
    explore: insight_monitors
    listens_to_filters: []
    field: insight_monitors.domains
