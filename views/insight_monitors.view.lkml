view: insight_monitors {
  sql_table_name: "@{SNOWFLAKE_PROJECT_NAME}"."INSIGHT_MONITORS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}."DATASET_NAME" ;;
  }

  dimension: distribution_monitor {
    type: yesno
    sql: ${TABLE}."DISTRIBUTION_MONITOR" ;;
  }

  dimension: domains {
    type: string
    sql: ${TABLE}."DOMAINS" ;;
  }

  dimension: field_health_monitor {
    type: yesno
    sql: ${TABLE}."FIELD_HEALTH_MONITOR" ;;
  }

  dimension: freshness_monitor {
    type: yesno
    sql: ${TABLE}."FRESHNESS_MONITOR" ;;
  }

  dimension: full_table_id {
    type: string
    sql: ${TABLE}."FULL_TABLE_ID" ;;
  }

  dimension: json_schema_monitor {
    type: yesno
    sql: ${TABLE}."JSON_SCHEMA_MONITOR" ;;
  }

  dimension: muted {
    type: yesno
    sql: ${TABLE}."MUTED" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: schema_monitor {
    type: yesno
    sql: ${TABLE}."SCHEMA_MONITOR" ;;
  }

  dimension: size_monitor {
    type: yesno
    sql: ${TABLE}."SIZE_MONITOR" ;;
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
    drill_fields: [table_name, dataset_name, project_name]
  }
}
