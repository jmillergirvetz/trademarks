view: statement {
  sql_table_name: trademark.statement ;;

  dimension: serial_no {
    primary_key: yes
    type: string
    sql: ${TABLE}.serial_no ;;
  }

  dimension: statement_text {
    type: string
    sql: ${TABLE}.statement_text ;;
  }

  dimension: statement_type_cd {
    type: string
    sql: ${TABLE}.statement_type_cd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
