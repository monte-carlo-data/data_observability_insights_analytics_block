connection: "@{SNOWFLAKE_CONNECTION_NAME}"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/dashboards/*.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: insight_events {}

explore: insight_monitors {
  label: "Active Monitors"
  view_label: "Active Monitors"
}

explore: insight_table_read_write_stats {}

explore: insight_incident_history {}

explore: insight_dashboard_analytics {}
