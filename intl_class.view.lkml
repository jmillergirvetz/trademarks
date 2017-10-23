view: intl_class {
  sql_table_name: trademark.intl_class ;;

  dimension: class_id {
    type: string
    sql: ${TABLE}.class_id ;;
  }

  dimension: intl_class_cd {
    type: string
    sql: ${TABLE}.intl_class_cd ;;
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
