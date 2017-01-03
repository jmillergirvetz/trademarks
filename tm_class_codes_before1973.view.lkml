view: tm_class_codes_before1973 {
  sql_table_name: trademark.tm_class_codes_before1973 ;;

  dimension: mark_class_code_old {
    primary_key: yes
    type: string
    sql: ${TABLE}.mark_class_code_old ;;
  }

  dimension: mark_class_title_old {
    type: string
    sql: ${TABLE}.mark_class_title_old ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: tm_class_list_before1973 {
    label: "Trademark Class List Before 1973"
    type: list
    list_field: mark_class_title_old
  }
}
