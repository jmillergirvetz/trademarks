view: tm_app_daily {
  sql_table_name: trademark.tm_app_daily ;;

  dimension: tad_create_dt {
    type: string
    sql: ${TABLE}.tad_create_dt ;;
  }

  dimension: tad_file_id {
    type: string
    sql: ${TABLE}.tad_file_id ;;
  }

  dimension: tad_version_dt {
    type: string
    sql: ${TABLE}.tad_version_dt ;;
  }

  dimension: tad_version_seq {
    type: string
    sql: ${TABLE}.tad_version_seq ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
