view: madrid_event_description {
  sql_table_name: trademark.madrid_event_description ;;

  dimension: madrid_event_cd {
    type: string
    sql: ${TABLE}.madrid_event_cd ;;
  }

  dimension: madrid_event_ct {
    type: string
    sql: ${TABLE}.madrid_event_ct ;;
  }

  dimension: madrid_event_desc {
    type: string
    sql: ${TABLE}.madrid_event_desc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
