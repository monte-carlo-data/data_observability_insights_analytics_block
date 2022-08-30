- dashboard: data_governance_dashboard
  title: Data Governance Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Detections
    name: Detections
    model: prod_insights_block
    explore: insight_events
    type: single_value
    fields: [insight_events.incident_count]
    filters:
      insight_events.created_date: 1 months
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 6
    col: 0
    width: 6
    height: 4
  - title: With Status Update
    name: With Status Update
    model: prod_insights_block
    explore: insight_events
    type: single_value
    fields: [insight_events.incident_count, insight_events.has_feedback]
    fill_fields: [insight_events.has_feedback]
    filters:
      insight_events.created_date: 1 months
    sorts: [insight_events.has_feedback desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${insight_events.incident_count}/sum(${insight_events.incident_count})",
        label: Proportion, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: proportion, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: [insight_events.has_feedback, insight_events.incident_count]
    listen: {}
    row: 6
    col: 6
    width: 6
    height: 4
  - title: Avg Response Time (hours)
    name: Avg Response Time (hours)
    model: prod_insights_block
    explore: insight_events
    type: single_value
    fields: [insight_events.average_time_to_first_feedback]
    filters:
      insight_events.created_date: 1 months
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 6
    col: 12
    width: 6
    height: 4
  - title: Incidents Fixed
    name: Incidents Fixed
    model: prod_insights_block
    explore: insight_events
    type: single_value
    fields: [insight_events.incident_count]
    filters:
      insight_events.is_resolved: 'Yes'
      insight_events.created_date: 1 months
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 6
    col: 18
    width: 6
    height: 4
  - name: Governance at a Glance
    type: text
    title_text: Governance at a Glance
    subtitle_text: ''
    body_text: |-
      Monte Carlo is a Data Observability Platform that uses machine learning to detect issues in your data that could otherwise go undiscovered for weeks. For any data-driven organization, it’s critical that the data flowing to executives, analysts, and customers is reliable and trustworthy.

      The metrics here reflect engagement with Monte Carlo’s detections. Consistent and timely engagement shows that the team is positioned to deliver trustworthy data.
    row: 0
    col: 4
    width: 16
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: Last Month
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: Month to Date
    body_text: ''
    row: 4
    col: 0
    width: 24
    height: 2
  - title: Detections
    name: Detections (2)
    model: prod_insights_block
    explore: insight_events
    type: single_value
    fields: [insight_events.incident_count]
    filters:
      insight_events.created_date: 1 months ago for 1 months
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    row: 12
    col: 0
    width: 6
    height: 4
  - title: With Status Update
    name: With Status Update (2)
    model: prod_insights_block
    explore: insight_events
    type: single_value
    fields: [insight_events.incident_count, insight_events.has_feedback]
    fill_fields: [insight_events.has_feedback]
    filters:
      insight_events.created_date: 1 months ago for 1 months
    sorts: [insight_events.has_feedback desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${insight_events.incident_count}/sum(${insight_events.incident_count})",
        label: Proportion, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: proportion, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: [insight_events.has_feedback, insight_events.incident_count]
    row: 12
    col: 6
    width: 6
    height: 4
  - title: Avg Response Time (hours)
    name: Avg Response Time (hours) (2)
    model: prod_insights_block
    explore: insight_events
    type: single_value
    fields: [insight_events.average_time_to_first_feedback]
    filters:
      insight_events.created_date: 1 months ago for 1 months
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    row: 12
    col: 12
    width: 6
    height: 4
  - title: Incidents Fixed
    name: Incidents Fixed (2)
    model: prod_insights_block
    explore: insight_events
    type: single_value
    fields: [insight_events.incident_count]
    filters:
      insight_events.is_resolved: 'Yes'
      insight_events.created_date: 1 months ago for 1 months
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 12
    col: 18
    width: 6
    height: 4
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: Detail
    body_text: ''
    row: 16
    col: 0
    width: 24
    height: 2
  - title: Detections
    name: Detections (3)
    model: prod_insights_block
    explore: insight_events
    type: looker_column
    fields: [insight_events.incident_count, insight_events.anomaly_type, insight_events.created_week]
    pivots: [insight_events.anomaly_type]
    fill_fields: [insight_events.created_week]
    filters:
      insight_events.created_month: 90 days
    sorts: [insight_events.anomaly_type]
    limit: 500
    column_limit: 50
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen: {}
    row: 18
    col: 0
    width: 15
    height: 6
  - title: "% of Detections with Status Update"
    name: "% of Detections with Status Update"
    model: prod_insights_block
    explore: insight_events
    type: looker_column
    fields: [insight_events.percent_of_incidents_with_status_update, insight_events.created_week]
    fill_fields: [insight_events.created_week]
    filters:
      insight_events.created_date: 90 days
    sorts: [insight_events.created_week desc]
    limit: 500
    column_limit: 50
    row_total: right
    dynamic_fields: [{category: table_calculation, expression: "${insight_events.incident_count}/${insight_events.incident_count:row_total}",
        label: Proportion, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: proportion, _type_hint: number, is_disabled: true}]
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
    series_colors:
      insight_events.percent_of_incidents_with_status_update: "#4276BE"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 24
    col: 0
    width: 15
    height: 6
  - title: Avg Hours to Status Update
    name: Avg Hours to Status Update
    model: prod_insights_block
    explore: insight_events
    type: looker_column
    fields: [insight_events.average_time_to_first_feedback, insight_events.created_week]
    fill_fields: [insight_events.created_week]
    filters:
      insight_events.created_date: 90 days
    sorts: [insight_events.created_week desc]
    limit: 500
    column_limit: 50
    row_total: right
    dynamic_fields: [{category: table_calculation, expression: "${insight_events.incident_count}/${insight_events.incident_count:row_total}",
        label: Proportion, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: proportion, _type_hint: number, is_disabled: true}]
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
    series_colors:
      insight_events.average_time_to_first_feedback: "#592EC2"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 30
    col: 0
    width: 15
    height: 6
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      ##Monte Carlo uses ML to monitor all data in the warehouse, and generates Detections about unusual behavior and changes.

      All tables are automatically monitored for Freshness, Volume, and Schema Changes.

      Users can opt-in important tables for a suite of field-level statistical monitors, or create custom SQL checks where they have specific business context.
    row: 18
    col: 15
    width: 9
    height: 6
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      ##Consistently updating statuses within 12 hours indicates healthy data governance.

      This metric is calculated as the hours from when a detection was generated to when it was marked with a status.

      This chart excludes status updates made over 7 days after an alert was created, since it is assumed these are part of cleanup efforts.
    row: 30
    col: 15
    width: 9
    height: 6
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "##For each Detection from Monte Carlo, teams can update the Status.\n\
      \nStatus updates are helpful indicators that your team is engaging with the\
      \ alerts that Monte Carlo is sending them. \n\nConsistent status updates are\
      \ an indicator of good data governance."
    row: 24
    col: 15
    width: 8
    height: 6
