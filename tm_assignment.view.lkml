view: tm_assignment {
  sql_table_name: trademark.tm_assignment ;;

  dimension: caddress_1 {
    type: string
    sql: ${TABLE}.caddress_1 ;;
  }

  dimension: caddress_2 {
    type: string
    sql: ${TABLE}.caddress_2 ;;
  }

  dimension: caddress_3 {
    type: string
    sql: ${TABLE}.caddress_3 ;;
  }

  dimension: caddress_4 {
    type: string
    sql: ${TABLE}.caddress_4 ;;
  }

  dimension: cname {
    type: string
    sql: ${TABLE}.cname ;;
  }

  dimension: convey_text {
    type: string
    sql: ${TABLE}.convey_text ;;
  }

  dimension: file_id {
    type: string
    sql: ${TABLE}.file_id ;;
  }

  dimension: frame_no {
    type: string
    sql: ${TABLE}.frame_no ;;
  }

  dimension: last_update_dt {
    type: string
    sql: ${TABLE}.last_update_dt ;;
  }

  dimension: page_count {
    type: string
    sql: ${TABLE}.page_count ;;
  }

  dimension: purge_in {
    type: string
    sql: ${TABLE}.purge_in ;;
  }

  dimension: record_dt {
    type: string
    sql: ${TABLE}.record_dt ;;
  }

  dimension: reel_no {
    type: string
    sql: ${TABLE}.reel_no ;;
  }

  dimension: rf_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.rf_id ;;
  }

  measure: count {
    type: count
    drill_fields: [cname]
  }
}
