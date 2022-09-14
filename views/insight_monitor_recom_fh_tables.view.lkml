view: insight_monitor_recom_fh_tables {
  sql_table_name: "@{DATASET_NAME}"."@{TABLE_PREFIX}MONITOR_RECOM_FH_TABLES"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: bytes_per_day {
    type: number
    sql: ${TABLE}."BYTES_PER_DAY" ;;
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

  dimension: has_bool_field {
    type: yesno
    sql: ${TABLE}."HAS_BOOL_FIELD" ;;
  }

  dimension: has_num_field {
    type: yesno
    sql: ${TABLE}."HAS_NUM_FIELD" ;;
  }

  dimension: has_time_field {
    type: yesno
    sql: ${TABLE}."HAS_TIME_FIELD" ;;
  }

  dimension: has_txt_field {
    type: yesno
    sql: ${TABLE}."HAS_TXT_FIELD" ;;
  }

  dimension: importance_score {
    type: number
    sql: ${TABLE}."IMPORTANCE_SCORE" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: rows_per_day {
    type: number
    sql: ${TABLE}."ROWS_PER_DAY" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}."TABLE_TYPE" ;;
  }

  dimension: total_bytes {
    type: number
    sql: ${TABLE}."TOTAL_BYTES" ;;
  }

  dimension: total_rows {
    type: number
    sql: ${TABLE}."TOTAL_ROWS" ;;
  }

  dimension: update_frequency_hours {
    type: string
    sql: ${TABLE}."UPDATE_FREQUENCY_HOURS" ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, project_name, dataset_name]
  }
}