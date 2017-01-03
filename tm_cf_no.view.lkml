view: tm_cf_no {
  sql_table_name: trademark.tm_cf_no ;;

  dimension: cf_registration_no {
    type: string
    sql: ${TABLE}.cf_registration_no ;;
  }

  dimension: cf_serial_no {
    type: string
    sql: ${TABLE}.cf_serial_no ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }

  dimension: rf_id {
    type: string
    sql: ${TABLE}.rf_id ;;
  }

  dimension: serial {
    type: string
    sql: ${TABLE}.serial ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
