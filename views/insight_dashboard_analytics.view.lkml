view: insight_dashboard_analytics {
  sql_table_name: "@{SNOWFLAKE_PROJECT_NAME}"."INSIGHT_DASHBOARD_ANALYTICS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: avg_daily_views_last_30_days {
    type: number
    sql: ${TABLE}."AVG_DAILY_VIEWS_LAST_30_DAYS" ;;
  }

  dimension: consider_deleting {
    type: yesno
    sql: ${TABLE}."CONSIDER_DELETING" ;;
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
    sql: ${TABLE}."CREATED_TIME" ;;
  }

  dimension: dashboard_folder {
    type: string
    sql: ${TABLE}."DASHBOARD_FOLDER" ;;
  }

  dimension: dashboard_id {
    type: string
    sql: ${TABLE}."DASHBOARD_ID" ;;
  }

  dimension: dashboard_name {
    type: string
    sql: ${TABLE}."DASHBOARD_NAME" ;;
  }

  dimension: days_since_creation {
    type: number
    sql: ${TABLE}."DAYS_SINCE_CREATION" ;;
  }

  dimension: days_since_last_access {
    type: string
    sql: ${TABLE}."DAYS_SINCE_LAST_ACCESS" ;;
  }

  dimension: importance_score {
    type: number
    sql: ${TABLE}."IMPORTANCE_SCORE" ;;
  }

  dimension: is_shared_dashboard {
    type: yesno
    sql: ${TABLE}."IS_SHARED_DASHBOARD" ;;
  }

  dimension_group: last_accessed {
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
    sql: ${TABLE}."LAST_ACCESSED_AT" ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}."ROW_NUMBER" ;;
  }

  dimension: total_views_since_creation {
    type: number
    sql: ${TABLE}."TOTAL_VIEWS_SINCE_CREATION" ;;
  }

  measure: count {
    type: count
    drill_fields: [dashboard_name, created_time]
  }
}