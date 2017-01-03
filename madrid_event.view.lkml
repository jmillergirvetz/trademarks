view: madrid_event {
  sql_table_name: trademark.madrid_event ;;

  dimension: mir_event_cd {
    type: string
    sql: ${TABLE}.mir_event_cd ;;
  }

  dimension: mir_event_dt {
    type: string
    sql: ${TABLE}.mir_event_dt ;;
  }

  dimension: mir_event_seq {
    type: string
    sql: ${TABLE}.mir_event_seq ;;
  }

  dimension: mir_id {
    type: string
    sql: ${TABLE}.mir_id ;;
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
