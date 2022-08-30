view: last_90_days_calendar {
  derived_table: {
    sql: select
        dateadd(
          day,
          '-' || row_number() over (order by null),
          dateadd(day, '+1', current_date())
        ) as date
      from table (generator(rowcount => 90))
       ;;
  }

  dimension: date {
    type: date
    sql: ${TABLE}."DATE" ;;
  }

  measure: percent_freshness {
    type: number
    sql: 1 - (${events.freshness_incident_count} / nullif(${insight_monitors.freshness_monitors}, 0)) ;;
    value_format_name: percent_4
  }
}
