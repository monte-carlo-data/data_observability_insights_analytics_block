view: insight_query_performance {
  sql_table_name: "@{DATASET_NAME}"."@{TABLE_PREFIX}QUERY_PERFORMANCE"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: filepath {
    type: string
    sql: ${TABLE}."FILEPATH" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}