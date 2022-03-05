view: insights_catalog {
  sql_table_name: "@{SNOWFLAKE_PROJECT_NAME}"."INSIGHTS_CATALOG"
    ;;

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: report_source {
    type: string
    sql: ${TABLE}."REPORT_SOURCE" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: usage {
    type: string
    sql: ${TABLE}."USAGE" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}