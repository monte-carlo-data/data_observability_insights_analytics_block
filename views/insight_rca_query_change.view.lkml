view: insight_rca_query_change {
  sql_table_name: "@{DATASET_NAME}"."INSIGHT_RCA_QUERY_CHANGE"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension_group: actual_next_query {
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
    sql: ${TABLE}."ACTUAL_NEXT_QUERY_TIME" ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}."DATASET_NAME" ;;
  }

  dimension_group: event_anomalous_data {
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
    sql: ${TABLE}."EVENT_ANOMALOUS_DATA_TIME" ;;
  }

  dimension: event_app_url {
    type: string
    sql: ${TABLE}."EVENT_APP_URL" ;;
  }

  dimension_group: event_created {
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
    sql: ${TABLE}."EVENT_CREATED_TIME" ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}."EVENT_TYPE" ;;
  }

  dimension_group: expected_next_query {
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
    sql: ${TABLE}."EXPECTED_NEXT_QUERY_TIME" ;;
  }

  dimension: field {
    type: string
    sql: ${TABLE}."FIELD" ;;
  }

  dimension: full_table_id {
    type: string
    sql: ${TABLE}."FULL_TABLE_ID" ;;
  }

  dimension: last_feedback {
    type: string
    sql: ${TABLE}."LAST_FEEDBACK" ;;
  }

  dimension: mc_event_id {
    type: string
    sql: ${TABLE}."MC_EVENT_ID" ;;
  }

  dimension: mc_incident_id {
    type: string
    sql: ${TABLE}."MC_INCIDENT_ID" ;;
  }

  dimension: mc_query_group_id {
    type: string
    sql: ${TABLE}."MC_QUERY_GROUP_ID" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}."QUERY" ;;
  }

  dimension: query_executor {
    type: string
    sql: ${TABLE}."QUERY_EXECUTOR" ;;
  }

  dimension: query_len {
    type: number
    sql: ${TABLE}."QUERY_LEN" ;;
  }

  dimension_group: query_time {
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
    sql: ${TABLE}."QUERY_TIME" ;;
  }

  dimension: rca_type {
    type: string
    sql: ${TABLE}."RCA_TYPE" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: typical_query_run_cycle_hours {
    type: number
    sql: ${TABLE}."TYPICAL_QUERY_RUN_CYCLE_HOURS" ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, event_created_time, dataset_name, project_name]
  }
}