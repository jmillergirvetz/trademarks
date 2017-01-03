view: classification {
  sql_table_name: trademark.classification ;;

  dimension: class_id {
    type: string
    sql: ${TABLE}.class_id ;;
  }

  dimension: class_intl_count {
    type: string
    sql: ${TABLE}.class_intl_count ;;
  }

  dimension: class_primary_cd {
    type: string
    sql: ${TABLE}.class_primary_cd ;;
  }

  dimension: class_status_cd {
    type: string
    sql: ${TABLE}.class_status_cd ;;
  }

  dimension: class_status_dt {
    type: string
    sql:  ${TABLE}.class_status_dt;;
  }

#   dimension_group: class_status_dt {
#     type: time
#     timeframes: [date, year, month, day_of_year]
#     sql: cast(${TABLE}.class_status_dt as timestamp);;
#   }

  dimension: class_us_count {
    type: string
    sql: ${TABLE}.class_us_count ;;
  }

  dimension: first_use_any_dt {
    type: string
    sql: ${TABLE}.first_use_any_dt ;;
  }

  dimension: first_use_any_dt_raw {
    type: string
    sql: ${TABLE}.first_use_any_dt_raw ;;
  }

  dimension: first_use_com_dt {
    type: string
    sql: ${TABLE}.first_use_com_dt ;;
  }

  dimension: first_use_com_dt_raw {
    type: string
    sql: ${TABLE}.first_use_com_dt_raw ;;
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
