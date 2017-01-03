view: owner_name_change {
  sql_table_name: trademark.owner_name_change ;;

  dimension: own_id {
    type: string
    sql: ${TABLE}.own_id ;;
  }

  dimension: own_name_change {
    type: string
    sql: ${TABLE}.own_name_change ;;
  }

  dimension: serial_no {
    type: string
    sql: ${TABLE}.serial_no ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
