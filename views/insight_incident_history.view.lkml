view: insight_incident_history {
  sql_table_name: "@{DATASET_NAME}"."@{TABLE_PREFIX}INCIDENT_HISTORY"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: avg_importance_score {
    type: number
    sql: ${TABLE}."AVG_IMPORTANCE_SCORE" ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}."DATASET_NAME" ;;
  }

  dimension: domains {
    type: string
    sql: ${TABLE}."DOMAINS" ;;
  }

  dimension: first_feedback {
    type: string
    sql: ${TABLE}."FIRST_FEEDBACK" ;;
  }

  dimension_group: first_feedback_timestamp {
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
    sql: ${TABLE}."FIRST_FEEDBACK_TIMESTAMP" ;;
  }

  dimension: incident_app_url {
    type: string
    sql: ${TABLE}."INCIDENT_APP_URL" ;;
  }

  dimension_group: incident_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."INCIDENT_CREATED_DATE" ;;
  }

  dimension_group: incident_created_timestamp {
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
    sql: ${TABLE}."INCIDENT_CREATED_TIMESTAMP" ;;
  }

  dimension: incident_id {
    type: string
    sql: ${TABLE}."INCIDENT_ID" ;;
    link: {
      label: "Open in Monte Carlo"
      url: "https://getmontecarlo.com/incidents/{{ value }}"
    }
  }

  dimension: incident_type {
    type: string
    sql: ${TABLE}."INCIDENT_TYPE" ;;
  }

  dimension: key_assets_with_importance_score {
    type: string
    sql: ${TABLE}."KEY_ASSETS_WITH_IMPORTANCE_SCORE" ;;
  }

  dimension: last_feedback {
    type: string
    sql: ${TABLE}."LAST_FEEDBACK" ;;
  }

  dimension_group: last_feedback {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_FEEDBACK_DATE" ;;
  }

  dimension_group: last_feedback_timestamp {
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
    sql: ${TABLE}."LAST_FEEDBACK_TIMESTAMP" ;;
  }

  dimension: max_importance_score {
    type: number
    sql: ${TABLE}."MAX_IMPORTANCE_SCORE" ;;
  }

  dimension: n_events {
    type: number
    sql: ${TABLE}."N_EVENTS" ;;
  }

  dimension: n_key_assets {
    type: number
    sql: ${TABLE}."N_KEY_ASSETS" ;;
  }

  dimension: n_tables {
    type: number
    sql: ${TABLE}."N_TABLES" ;;
  }

  dimension: non_key_assets_with_importance_score {
    type: string
    sql: ${TABLE}."NON_KEY_ASSETS_WITH_IMPORTANCE_SCORE" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: sent_via {
    type: string
    sql: ${TABLE}."SENT_VIA" ;;
  }

  dimension: sent_via_channel {
    type: string
    sql: ${TABLE}."SENT_VIA_CHANNEL" ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}."SEVERITY" ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name, dataset_name]
  }
}