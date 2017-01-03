view: tm_convey {
  sql_table_name: trademark.tm_convey ;;

  dimension: conv_group {
    type: string
    sql: ${TABLE}.conv_group ;;
  }

  dimension: rf_id {
    type: string
    sql: ${TABLE}.rf_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
