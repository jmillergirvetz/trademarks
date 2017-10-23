view: neighborhood_pd {
  sql_table_name: sf_thesis.neighborhood_pd ;;

  dimension: neighborhood_group {
    type: string
    sql: ${TABLE}.neighborhood_group ;;
  }

  dimension: pd_district {
    type: string
    sql: ${TABLE}.pd_district ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
