view: tm_assignee {
  sql_table_name: trademark.tm_assignee ;;

  dimension: tm_count {
    type: string
    sql: ${TABLE}.count ;;
  }

  dimension: ee_address_1 {
    type: string
    sql: ${TABLE}.ee_address_1 ;;
  }

  dimension: ee_address_2 {
    type: string
    sql: ${TABLE}.ee_address_2 ;;
  }

  dimension: ee_city {
    type: string
    sql: ${TABLE}.ee_city ;;
  }

  dimension: ee_comp_stm {
    type: string
    sql: ${TABLE}.ee_comp_stm ;;
  }

  dimension: ee_country {
    type: string
    sql: ${TABLE}.ee_country ;;
  }

  dimension: ee_dba_stm {
    type: string
    sql: ${TABLE}.ee_dba_stm ;;
  }

  dimension: ee_former_stm {
    type: string
    sql: ${TABLE}.ee_former_stm ;;
  }

  dimension: ee_legal_entity_text {
    type: string
    sql: ${TABLE}.ee_legal_entity_text ;;
  }

  dimension: ee_name {
    type: string
    sql: ${TABLE}.ee_name ;;
  }

  dimension: ee_natlty {
    type: string
    sql: ${TABLE}.ee_natlty ;;
  }

  dimension: ee_postcode {
    type: string
    sql: ${TABLE}.ee_postcode ;;
  }

  dimension: ee_state {
    type: string
    sql: ${TABLE}.ee_state ;;
  }

  dimension: rf_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.rf_id ;;
  }

  measure: count {
    type: count
    drill_fields: [ee_name]
  }
}
