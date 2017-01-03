view: tm_docid {
  sql_table_name: trademark.tm_docid ;;

  dimension: tm_count {
    type: string
    sql: ${TABLE}.count ;;
  }

  dimension: intl_reg_no {
    type: string
    sql: ${TABLE}.intl_reg_no ;;
  }

  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }

  dimension: rf_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.rf_id ;;
  }

  dimension: serial {
    type: string
    sql: ${TABLE}.serial ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
