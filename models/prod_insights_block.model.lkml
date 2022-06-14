connection: "@{SNOWFLAKE_CONNECTION_NAME}"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/dashboards/*.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: insight_events {
  group_label: "Monte Carlo"
}

explore: insight_monitors {
  group_label: "Monte Carlo"
  label: "Active Monitors"
  view_label: "Active Monitors"

  join: last_90_days_calendar {
    type: left_outer
    sql_on: {% condition events.incident_date_filter %} ${last_90_days_calendar.date} {% endcondition %} ;;
    relationship: many_to_one
  }

  join: events {
    from: insight_events
    type: left_outer
    sql_on: ${events.full_table_id} = ${insight_monitors.full_table_id}
      and {% condition events.incident_date_filter %} ${events.created_date} {% endcondition %}
      and ${events.created_date} = ${last_90_days_calendar.date}
      ;;
    relationship: one_to_many
  }
}

explore: insight_table_read_write_stats {
  group_label: "Monte Carlo"}

explore: insight_incident_history {
  group_label: "Monte Carlo"}

explore: insight_dashboard_analytics {
  group_label: "Monte Carlo"}

explore: events {
  group_label: "Monte Carlo"
  label: "Incident Analytics"
  description: "Use for reporting on and analyzing events / incidents."
  from: insight_events
}
