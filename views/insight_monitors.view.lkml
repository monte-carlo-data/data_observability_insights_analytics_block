view: insight_monitors {
  sql_table_name: "@{SNOWFLAKE_PROJECT_NAME}"."INSIGHT_MONITORS" ;;
  drill_fields: [project_name, dataset_name, table_name, table_type, total_monitors]

  dimension: row_number {
    sql: concat(CAST(${TABLE}."ROW_NUMBER" as VARCHAR), ${account_id}) ;;
    hidden: yes
    primary_key: yes
  }

  measure: freshness_monitors {
    type: count
    filters: [freshness_monitor: "Yes"]
  }

  measure: size_monitors {
    type: count
    filters: [size_monitor: "Yes"]
  }

  measure: distribution_monitors {
    type: count
    filters: [distribution_monitor: "Yes"]
  }

  measure: field_health_monitors {
    type: count
    filters: [field_health_monitor: "Yes"]
  }

  measure: schema_monitors {
    type: count
    filters: [schema_monitor: "Yes"]
  }

  measure: json_schema_monitors {
    type: count
    filters: [json_schema_monitor: "Yes"]
  }

  measure: total_monitors {
    type: number
    sql: ${freshness_monitors} + ${size_monitors} + ${distribution_monitors} + ${field_health_monitors} + ${schema_monitors} + ${json_schema_monitors}  ;;
  }

  measure: total_tables {
    type: count_distinct
    sql: ${row_number} ;;
  }

  dimension: has_a_monitor {
    type: yesno
    # as of Apr 25 2022 schema monitor is marked true for all records, so removing that.
    sql: (${freshness_monitor} or ${size_monitor}
            or ${field_health_monitor} or ${distribution_monitor} or ${json_schema_monitor})
            and not ${muted};;
  }

  measure: total_tables_with_monitors {
    type: count_distinct
    sql: ${row_number} ;;
    filters: [
      has_a_monitor: "Yes"
    ]
  }

  measure: percent_tables_with_monitors {
    type: number
    sql: ${total_tables_with_monitors} / nullif(${total_tables}, 0) ;;
    value_format_name: percent_0
  }

  dimension: domains {
    type: string
    sql: case when ${TABLE}.domains is not null then ${TABLE}.domains else 'All Domains' end ;;
  }

  dimension: muted {
    type: yesno
  }

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

  dimension: project_name {
    type: string
    sql: ${TABLE}."PROJECT_NAME" ;;
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

  dimension: is_wildcard_table {
    type: yesno
    sql: RIGHT(${table_name}, 8) regexp '^[0-9]{8}$' ;;
  }

  dimension: table_type {
    type: string
    sql: ${TABLE}."TABLE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name, dataset_name, table_name]
  }
}
