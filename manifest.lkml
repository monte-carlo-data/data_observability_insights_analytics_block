project_name: "monte_carlo_insights_block"

constant: SNOWFLAKE_CONNECTION_NAME {
  value: "snowflake-prod"
  export: override_required
}

constant: SNOWFLAKE_PROJECT_NAME {
  value: "PROD_INSIGHTS"
  export: override_required
}
