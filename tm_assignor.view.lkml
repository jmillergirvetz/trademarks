view: tm_assignor {
  sql_table_name: trademark.tm_assignor ;;

  dimension: ack_dt {
    type: string
    sql: ${TABLE}.ack_dt ;;
  }

  dimension: tm_count {
    type: string
    sql: ${TABLE}.count ;;
  }

  dimension: exec_dt {
    type: string
    sql: ${TABLE}.exec_dt ;;
  }

  dimension: or_address_1 {
    type: string
    sql: ${TABLE}.or_address_1 ;;
  }

  dimension: or_address_2 {
    type: string
    sql: ${TABLE}.or_address_2 ;;
  }

  dimension: or_city {
    type: string
    sql: ${TABLE}.or_city ;;
  }

  dimension: or_comp_stm {
    type: string
    sql: ${TABLE}.or_comp_stm ;;
  }

  dimension: or_country {
    type: string
    sql: ${TABLE}.or_country ;;
  }

  dimension: or_dba_stm {
    type: string
    sql: ${TABLE}.or_dba_stm ;;
  }

  dimension: or_former_stm {
    type: string
    sql: ${TABLE}.or_former_stm ;;
  }

  dimension: or_legal_entity_text {
    type: string
    sql: ${TABLE}.or_legal_entity_text ;;
  }

  dimension: or_name {
    type: string
    sql: ${TABLE}.or_name ;;
  }

  dimension: or_natlty {
    type: string
    sql: ${TABLE}.or_natlty ;;
  }

  dimension: or_postcode {
    type: string
    sql: ${TABLE}.or_postcode ;;
  }

  dimension: or_state {
    type: string
    sql: ${TABLE}.or_state ;;
  }

  dimension: rf_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.rf_id ;;
  }

  measure: count {
    type: count
    drill_fields: [or_name]
  }
}
