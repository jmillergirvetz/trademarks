view: design_search {
  sql_table_name: trademark.design_search ;;

  dimension: design_search_cd {
    type: string
    sql: ${TABLE}.design_search_cd ;;
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
