view: tm_subparty {
  sql_table_name: trademark.tm_subparty ;;

  dimension: ee_name {
    type: string
    sql: ${TABLE}.ee_name ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.entity ;;
  }

  dimension: entity_code {
    type: string
    sql: ${TABLE}.entity_code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rf_id {
    type: string
    sql: ${TABLE}.rf_id ;;
  }

  dimension: stctry {
    type: string
    sql: ${TABLE}.stctry ;;
  }

  dimension: stctry_code {
    type: string
    sql: ${TABLE}.stctry_code ;;
  }

  dimension: subpty1_id {
    type: string
    sql: ${TABLE}.subpty1_id ;;
  }

  dimension: subpty2_id {
    type: string
    sql: ${TABLE}.subpty2_id ;;
  }

  measure: count {
    type: count
    drill_fields: [ee_name, name]
  }
}
