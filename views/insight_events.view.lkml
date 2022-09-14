view: insight_events {
  sql_table_name: "@{DATASET_NAME}"."@{TABLE_PREFIX}EVENTS"
    ;;

  filter: incident_date_filter {
    type: date_time
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: actual {
    type: string
    sql: ${TABLE}."ACTUAL" ;;
  }

  dimension_group: anomalous_data {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ANOMALOUS_DATA_TIME" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}."DATASET_NAME" ;;
  }

  dimension: expected {
    type: string
    sql: ${TABLE}."EXPECTED" ;;
  }

  dimension: field {
    type: string
    sql: ${TABLE}."FIELD" ;;
  }

  dimension: has_feedback {
    type: yesno
    sql: ${first_feedback} IS NOT NULL ;;
  }

  dimension: first_feedback {
    type: string
    sql: ${TABLE}."FIRST_STATUS" ;;
  }

  dimension_group: first_feedback {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."FIRST_STATUS_TIME" ;;
  }

  dimension: full_table_id {
    type: string
    sql: ${TABLE}."FULL_TABLE_ID" ;;
  }

  dimension: last_feedback {
    type: string
    sql: ${TABLE}."LAST_STATUS" ;;
  }

  dimension: is_resolved {
    type: yesno
    sql: ${last_feedback} IN ('fixed', 'expected', 'false_positie', 'no_action_needed') ;;
  }

  dimension_group: last_feedback {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LAST_STATUS_TIME" ;;
  }

  dimension: last_update {
    type: string
    sql: ${TABLE}."LAST_UPDATE" ;;
  }

  dimension: max_expected {
    type: string
    sql: ${TABLE}."MAX_EXPECTED" ;;
  }

  dimension: mc_event_id {
    alias: [event_id]
    type: string
    primary_key: yes
    sql: ${TABLE}."MC_EVENT_ID" ;;
  }

  dimension: mc_incident_id {
    type: string
    sql: ${TABLE}."MC_INCIDENT_ID" ;;
    link: {
      label: "Go to IncidentIQ"
      url: "https://getmontecarlo.com/incidents/{{value}}"
    }
  }

  dimension: min_expected {
    type: string
    sql: ${TABLE}."MIN_EXPECTED" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension_group: resolve {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."RESOLVE_TIME" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}."TABLE_TYPE" ;;
  }

  dimension: hours_to_resolution {
    type: number
    sql: ${TABLE}."HOURS_TO_RESOLUTION" ;;
  }

  dimension: type {
    alias: [event_type]
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: anomaly_type {
    type: string
    sql:
      CASE
        WHEN ${type} IN ('freshness', 'size_change', 'unchanged_size', 'schema_change', 'json_schema_change') THEN ${type}
        ELSE 'distribution'
      END ;;
  }

  dimension: freshness_gap {
    description: "Gap in expected table update time and actual update time in minutes."
    type: number
    sql:
      CASE
        WHEN ${type} = 'freshness'
          THEN TIMESTAMPDIFF('minute', TO_TIMESTAMP(${expected}), TO_TIMESTAMP(${actual}))
        ELSE NULL
      END ;;
  }

  measure: average_freshness_gap {
    type: average
    sql: ${freshness_gap} ;;
  }

  dimension: unchanged_size_gap {
    description: "Gap in expected table size change time and actual change time in minutes."
    type: number
    sql:
      CASE
        WHEN ${type} = 'unchanged_size'
          THEN TIMESTAMPDIFF('minute', TO_TIMESTAMP(${expected}), TO_TIMESTAMP(${actual}))
        ELSE NULL
      END ;;
  }

  measure: average_unchanged_size_gap {
    type: average
    sql: ${unchanged_size_gap} ;;
  }



  measure: count {
    type: count
    drill_fields: [details*]
  }
  measure: number_of_unique_incident_types {
    type: count_distinct
    sql: ${mc_incident_id},${type} ;;
  }

  measure: incident_count {
    type: count_distinct
    sql: ${mc_incident_id} ;;
    drill_fields: [details*]
  }

  measure: average_hours_to_resolution {
    type: average
    sql: ${hours_to_resolution} ;;
    value_format_name: decimal_1
  }

  dimension: days_to_first_feedback {
    type: duration_day
    label: "By Day"
    group_label: "Time to First Feedback"
    sql_start: ${created_raw} ;;
    sql_end: ${first_feedback_raw} ;;
    # sql: case when DATEDIFF( day, CREATED_AT, FIRST_STATUS_TIME)<0 then null else DATEDIFF( day, CREATED_AT, FIRST_STATUS_TIME) end  ;;
  }

  dimension: hours_to_first_feedback {
    type: duration_hour
    label: "By Hour"
    group_label: "Time to First Feedback"
    sql_start: ${created_raw} ;;
    sql_end: ${first_feedback_raw} ;;
    # sql: case when DATEDIFF( hour, CREATED_AT, FIRST_STATUS_TIME)<0 then null else DATEDIFF( hour, CREATED_AT, FIRST_STATUS_TIME) end ;;
  }
  dimension: minutes_to_first_feedback {
    type: duration_minute
    label: "By Minute"
    group_label: "Time to First Feedback"
    sql_start: ${created_raw} ;;
    sql_end: ${first_feedback_raw} ;;
  }
##############
  dimension:PERFECT_IMPERFECT{
    type: string
    sql: case  when (min_expected = '0' and max_expected = '0' and type in ('null_rate','zero_rate','negative_rate','text_all_spaces_rate','text_null_keyword_rate')) or
                (min_expected = '1' and max_expected = '1' and type in ('text_uuid_rate','text_int_rate','text_number_rate'))
                then 'PERFECT' else 'IMPERFECT' end ;;
  }

  measure: average_time_to_first_feedback {
    type: average
    sql: ${hours_to_first_feedback} ;;
    value_format_name: decimal_1
  }

  measure: incidents_with_status_update {
    type: count_distinct
    sql: ${mc_incident_id} ;;
    filters: [
      first_feedback: "-NULL"
    ]
  }

  measure: percent_of_incidents_with_status_update {
    type: number
    sql: ${incidents_with_status_update} / NULLIF(${incident_count},0) ;;
    value_format_name: percent_2
  }

  dimension: days_since_event {
    type: duration_day
    sql_start: ${created_date} ;;
    sql_end: CURRENT_DATE ;;
  }

  measure: days_since_incident {
    type: min
    sql: ${days_since_event} ;;
  }

  dimension: event_data {
    type: string
    sql: ${TABLE}."EVENT_DATA" ;;
  }

  dimension: under_score {
    type: string
    sql: json_extract_path_text(${TABLE}."EVENT_DATA", 'under_score') ;;
  }

  dimension: anomaly_score {
    type: string
    sql: json_extract_path_text(${TABLE}."EVENT_DATA", 'anomaly_score') ;;
  }

  dimension: dashboard_incident_link {
    type: string
    sql: 'https://getmontecarlo.com/incidents/' || ${mc_incident_id};;
    link: {
      label: "Check in Monte Carlo"
      icon_url: "https://avatars.githubusercontent.com/u/51944801?s=200&v=4"
      url: "{{value}}"
    }
  }

  measure: freshness_anomaly_count {
    type: count_distinct
    sql: ${mc_event_id} ;;
    filters: [type: "fresh_anom"]
    drill_fields: [details*]
  }

  measure: freshness_incident_count {
    type: count_distinct
    sql: ${mc_incident_id} ;;
    filters: [is_freshness_anomaly: "Yes"]
    drill_fields: [details*]
  }

  measure: volume_incident_count {
    type: count_distinct
    sql: ${mc_incident_id} ;;
    filters: [is_volume_anomaly: "Yes"]
    drill_fields: [details*]
  }

  dimension: is_freshness_anomaly {
    type: yesno
    sql: ${type} = 'fresh_anom' or json_extract_path_text(${event_data}, 'rule.rule_type') = 'freshness';;
  }

  dimension: is_volume_anomaly {
    type: yesno
    sql: ${type} = 'size_anom' or json_extract_path_text(${event_data}, 'rule.rule_type') = 'size';;
  }

  measure: schema_change_count {
    type: count_distinct
    sql: ${mc_event_id} ;;
    filters: [type: "schema_change"]
    drill_fields: [details*]
  }

  measure: distribution_anomaly_count {
    type: count_distinct
    sql: ${mc_event_id} ;;
    filters: [type: "dist_anom"]
    drill_fields: [details*]
  }

  measure: custom_rule_anomaly_count {
    type: count_distinct
    sql: ${mc_event_id} ;;
    filters: [type: "custom_rule_anom"]
    drill_fields: [details*]
  }

  measure: unchanged_size_anomaly_count {
    type: count_distinct
    sql: ${mc_event_id} ;;
    filters: [type: "unchanged_size_anom"]
    drill_fields: [details*]
  }

  set: details {
    fields: [dataset_name, project_name, table_name]
  }

}