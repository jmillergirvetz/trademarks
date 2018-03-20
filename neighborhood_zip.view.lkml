view: neighborhood_zip {
  sql_table_name: sf_thesis.neighborhood_zip ;;

  dimension: neighborhood {
    type: string
    sql: ${TABLE}.neighborhood ;;
  }

  dimension: neighborhood_group {
    type: string
    sql: ${TABLE}.neighborhood_group ;;
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
