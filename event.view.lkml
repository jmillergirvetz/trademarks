view: event {
  sql_table_name: trademark.event ;;

  dimension: event_cd {
    type: string
    sql: ${TABLE}.event_cd ;;
  }

  dimension: event_dt {
    type: string
    sql: ${TABLE}.event_dt ;;
  }

  dimension: event_seq {
    type: string
    sql: ${TABLE}.event_seq ;;
  }

  dimension: event_type_cd {
    type: string
    sql: ${TABLE}.event_type_cd ;;
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
