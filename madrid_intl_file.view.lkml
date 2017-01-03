view: madrid_intl_file {
  sql_table_name: trademark.madrid_intl_file ;;

  dimension: mir_id {
    type: string
    sql: ${TABLE}.mir_id ;;
  }

  dimension: mir_irreg_reply_dt {
    type: string
    sql: ${TABLE}.mir_irreg_reply_dt ;;
  }

  dimension: mir_registration_dt {
    type: string
    sql: ${TABLE}.mir_registration_dt ;;
  }

  dimension: mir_registration_no {
    type: string
    sql: ${TABLE}.mir_registration_no ;;
  }

  dimension: mir_registration_seq {
    type: string
    sql: ${TABLE}.mir_registration_seq ;;
  }

  dimension: mir_renewal_dt {
    type: string
    sql: ${TABLE}.mir_renewal_dt ;;
  }

  dimension: mir_status_cd {
    type: string
    sql: ${TABLE}.mir_status_cd ;;
  }

  dimension: mir_status_dt {
    type: string
    sql: ${TABLE}.mir_status_dt ;;
  }

  dimension: mir_uspto_file_dt {
    type: string
    sql: ${TABLE}.mir_uspto_file_dt ;;
  }

  dimension: mir_uspto_ref_no {
    type: string
    sql: ${TABLE}.mir_uspto_ref_no ;;
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
