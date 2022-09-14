view: insight_query_runtime_trends {
  sql_table_name: "@{DATASET_NAME}"."@{TABLE_PREFIX}QUERY_RUNTIME_TRENDS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}."DATASET_NAME" ;;
  }

  dimension_group: first_run_in_period {
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
    sql: ${TABLE}."FIRST_RUN_IN_PERIOD" ;;
  }

  dimension: full_table_id {
    type: string
    sql: ${TABLE}."FULL_TABLE_ID" ;;
  }

  dimension_group: last_run_in_period {
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
    sql: ${TABLE}."LAST_RUN_IN_PERIOD" ;;
  }

  dimension: max_runtime {
    type: number
    sql: ${TABLE}."MAX_RUNTIME" ;;
  }

  dimension: mean_runtime {
    type: number
    sql: ${TABLE}."MEAN_RUNTIME" ;;
  }

  dimension: n_samples {
    type: number
    sql: ${TABLE}."N_SAMPLES" ;;
  }

  dimension: percent_increase_per_month {
    type: number
    sql: ${TABLE}."PERCENT_INCREASE_PER_MONTH" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: query_run_by {
    type: string
    sql: ${TABLE}."QUERY_RUN_BY" ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}."QUERY_TEXT" ;;
  }

  dimension: query_type {
    type: string
    sql: ${TABLE}."QUERY_TYPE" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: runtime_at_end_of_period {
    type: number
    sql: ${TABLE}."RUNTIME_AT_END_OF_PERIOD" ;;
  }

  dimension: runtime_at_start_of_period {
    type: number
    sql: ${TABLE}."RUNTIME_AT_START_OF_PERIOD" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}."TABLE_TYPE" ;;
  }

  dimension: typical_cycle_hours {
    type: number
    sql: ${TABLE}."TYPICAL_CYCLE_HOURS" ;;
  }

  measure: count {
    type: count
    drill_fields: [dataset_name, project_name, table_name]
  }
}