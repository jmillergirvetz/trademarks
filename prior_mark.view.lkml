view: prior_mark {
  sql_table_name: trademark.prior_mark ;;

  dimension: prior_no {
    type: string
    sql: ${TABLE}.prior_no ;;
  }

  dimension: prior_type_cd {
    type: string
    sql: ${TABLE}.prior_type_cd ;;
  }

  dimension: rec_error {
    type: string
    sql: ${TABLE}.rec_error ;;
  }

  dimension: serial_no {
    primary_key: yes
    type: string
    sql: ${TABLE}.serial_no ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
