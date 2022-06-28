view: insight_cleanup_suggestions {
  sql_table_name: "@{DATASET_NAME}"."INSIGHT_CLEANUP_SUGGESTIONS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}."DATASET_NAME" ;;
  }

  dimension: days_since_last_read {
    type: string
    sql: ${TABLE}."DAYS_SINCE_LAST_READ" ;;
  }

  dimension: days_since_last_write {
    type: string
    sql: ${TABLE}."DAYS_SINCE_LAST_WRITE" ;;
  }

  dimension: domains {
    type: string
    sql: ${TABLE}."DOMAINS" ;;
  }

  dimension: full_table_id {
    type: string
    sql: ${TABLE}."FULL_TABLE_ID" ;;
  }

  dimension_group: last_read {
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
    sql: ${TABLE}."LAST_READ" ;;
  }

  dimension_group: last_write {
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
    sql: ${TABLE}."LAST_WRITE" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}."TABLE_TYPE" ;;
  }

  dimension: total_byte_count {
    type: number
    sql: ${TABLE}."TOTAL_BYTE_COUNT" ;;
  }

  dimension: total_row_count {
    type: number
    sql: ${TABLE}."TOTAL_ROW_COUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, project_name, dataset_name]
  }
}