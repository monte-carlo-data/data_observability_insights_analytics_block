view: insight_key_assets {
  sql_table_name: "@{DATASET_NAME}"."@{TABLE_PREFIX}KEY_ASSETS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: avg_reads_per_active_day {
    type: number
    sql: ${TABLE}."AVG_READS_PER_ACTIVE_DAY" ;;
  }

  dimension: avg_writes_per_active_day {
    type: number
    sql: ${TABLE}."AVG_WRITES_PER_ACTIVE_DAY" ;;
  }

  dimension: bytes_per_day {
    type: number
    sql: ${TABLE}."BYTES_PER_DAY" ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}."DATASET_NAME" ;;
  }

  dimension: days_since_last_read {
    type: number
    sql: ${TABLE}."DAYS_SINCE_LAST_READ" ;;
  }

  dimension: days_since_last_write {
    type: number
    sql: ${TABLE}."DAYS_SINCE_LAST_WRITE" ;;
  }

  dimension: direct_downstream_tables {
    type: number
    sql: ${TABLE}."DIRECT_DOWNSTREAM_TABLES" ;;
  }

  dimension: direct_upstream_tables {
    type: number
    sql: ${TABLE}."DIRECT_UPSTREAM_TABLES" ;;
  }

  dimension: distinct_reads {
    type: number
    sql: ${TABLE}."DISTINCT_READS" ;;
  }

  dimension: distinct_writes {
    type: number
    sql: ${TABLE}."DISTINCT_WRITES" ;;
  }

  dimension: domains {
    type: string
    sql: ${TABLE}."DOMAINS" ;;
  }

  dimension: full_table_id {
    type: string
    sql: ${TABLE}."FULL_TABLE_ID" ;;
  }

  dimension: importance {
    type: string
    sql: ${TABLE}."IMPORTANCE" ;;
  }

  dimension: importance_score {
    type: number
    sql: ${TABLE}."IMPORTANCE_SCORE" ;;
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

  dimension: periodicity {
    type: string
    sql: ${TABLE}."PERIODICITY" ;;
  }

  dimension: prc_active_days {
    type: number
    sql: ${TABLE}."PRC_ACTIVE_DAYS" ;;
  }

  dimension: prc_distinct_reads {
    type: number
    sql: ${TABLE}."PRC_DISTINCT_READS" ;;
  }

  dimension: prc_distinct_writes {
    type: number
    sql: ${TABLE}."PRC_DISTINCT_WRITES" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: read_users {
    type: number
    sql: ${TABLE}."READ_USERS" ;;
  }

  dimension: read_users_list {
    type: string
    sql: ${TABLE}."READ_USERS_LIST" ;;
  }

  dimension: reads {
    type: number
    sql: ${TABLE}."READS" ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}."RESOURCE_TYPE" ;;
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

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}."USERS" ;;
  }

  dimension: write_users {
    type: number
    sql: ${TABLE}."WRITE_USERS" ;;
  }

  dimension: write_users_list {
    type: string
    sql: ${TABLE}."WRITE_USERS_LIST" ;;
  }

  dimension: writes {
    type: number
    sql: ${TABLE}."WRITES" ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, dataset_name, project_name]
  }
}