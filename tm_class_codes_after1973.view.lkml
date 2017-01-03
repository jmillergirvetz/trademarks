view: tm_class_codes_after1973 {
  sql_table_name: trademark.tm_class_codes_after1973 ;;

  dimension: mark_class_code {
    primary_key: yes
    type: string
    sql: ${TABLE}.mark_class_code ;;
  }

  dimension: mark_class_title {
    type: string
    sql: ${TABLE}.mark_class_title ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: tm_class_list_after1973 {
    label: "Trademark Class List After 1973"
    type: list
    list_field: mark_class_title
  }
}
