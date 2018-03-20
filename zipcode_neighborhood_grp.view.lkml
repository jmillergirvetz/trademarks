view: zipcode_neighborhood_grp {
  sql_table_name: sf_thesis.zipcode_neighborhood_grp ;;

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
