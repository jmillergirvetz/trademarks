view: us_class {
  label: "US Class"
  sql_table_name: trademark.us_class ;;

  dimension: class_id {
    type: string
    sql: ${TABLE}.class_id ;;
  }

  dimension: serial_no {
    primary_key: yes
    type: string
    sql: ${TABLE}.serial_no ;;
  }

  dimension: us_class_cd {
    type: string
    sql: ${TABLE}.us_class_cd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
