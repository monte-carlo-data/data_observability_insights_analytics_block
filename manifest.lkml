project_name: "monte_carlo_insights_block"

constant: CONNECTION_NAME {
  value: "snowflake-prod"
  export: override_required
}

constant: DATASET_NAME {
  value: "PROD_INSIGHTS"
  export: override_required
}

constant: TABLE_PREFIX {
  value: ""
  export: override_optional
}
