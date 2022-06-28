view: insight_custom_rules {
  sql_table_name: "@{DATASET_NAME}"."INSIGHT_CUSTOM_RULES"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: monitor_type {
    type: string
    sql: ${TABLE}."MONITOR_TYPE" ;;
  }

  dimension: pass_or_breach {
    type: string
    sql: ${TABLE}."PASS_OR_BREACH" ;;
  }

  dimension: query_value {
    type: string
    sql: ${TABLE}."QUERY_VALUE" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: rule_description {
    type: string
    sql: ${TABLE}."RULE_DESCRIPTION" ;;
  }

  dimension: rule_uuid {
    type: string
    sql: ${TABLE}."RULE_UUID" ;;
  }

  dimension_group: running {
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
    sql: ${TABLE}."RUNNING_TIME" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}