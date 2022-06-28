view: insight_monitor_issues_and_solutions {
  sql_table_name: "@{DATASET_NAME}"."INSIGHT_MONITOR_ISSUES_AND_SOLUTIONS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: agg_type {
    type: string
    sql: ${TABLE}."AGG_TYPE" ;;
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
    sql: ${TABLE}."CREATED_ON" ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}."DATASET_NAME" ;;
  }

  dimension: domains {
    type: string
    sql: ${TABLE}."DOMAINS" ;;
  }

  dimension: full_table_id {
    type: string
    sql: ${TABLE}."FULL_TABLE_ID" ;;
  }

  dimension: last_modified_by {
    type: string
    sql: ${TABLE}."LAST_MODIFIED_BY" ;;
  }

  dimension: monitor_status {
    type: string
    sql: ${TABLE}."MONITOR_STATUS" ;;
  }

  dimension: monitor_type {
    type: string
    sql: ${TABLE}."MONITOR_TYPE" ;;
  }

  dimension: monitor_url {
    type: string
    sql: ${TABLE}."MONITOR_URL" ;;
  }

  dimension: monitor_uuid {
    type: string
    sql: ${TABLE}."MONITOR_UUID" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: suggestion {
    type: string
    sql: ${TABLE}."SUGGESTION" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}."TABLE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [dataset_name, table_name, project_name]
  }
}