view: event_description {
  sql_table_name: trademark.event_description ;;

  dimension: event_cd {
    type: string
    sql: ${TABLE}.event_cd ;;
  }

  dimension: event_ct {
    type: string
    sql: ${TABLE}.event_ct ;;
  }

  dimension: event_desc {
    type: string
    sql: ${TABLE}.event_desc ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
