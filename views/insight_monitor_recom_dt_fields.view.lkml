view: insight_monitor_recom_dt_fields {
  sql_table_name: "@{SNOWFLAKE_PROJECT_NAME}"."INSIGHT_MONITOR_RECOM_DT_FIELDS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}."DATASET_NAME" ;;
  }

  dimension: domains {
    type: string
    sql: ${TABLE}."DOMAINS" ;;
  }

  dimension: field {
    type: string
    sql: ${TABLE}."FIELD" ;;
  }

  dimension: field_score {
    type: string
    sql: ${TABLE}."FIELD_SCORE" ;;
  }

  dimension: full_table_id {
    type: string
    sql: ${TABLE}."FULL_TABLE_ID" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: table_importance_score {
    type: number
    sql: ${TABLE}."TABLE_IMPORTANCE_SCORE" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}."TABLE_TYPE" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [dataset_name, project_name, table_name]
  }
}