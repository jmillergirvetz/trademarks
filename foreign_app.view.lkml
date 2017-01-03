view: foreign_app {
  sql_table_name: trademark.foreign_app ;;

  dimension: for_appl_country_cd {
    type: string
    sql: ${TABLE}.for_appl_country_cd ;;
  }

  dimension: for_appl_filing_dt {
    type: string
    sql: ${TABLE}.for_appl_filing_dt ;;
  }

  dimension: for_appl_no {
    type: string
    sql: ${TABLE}.for_appl_no ;;
  }

  dimension: for_appl_other_cd {
    type: string
    sql: ${TABLE}.for_appl_other_cd ;;
  }

  dimension: for_appl_priority_in {
    type: string
    sql: ${TABLE}.for_appl_priority_in ;;
  }

  dimension: for_appl_seq {
    type: string
    sql: ${TABLE}.for_appl_seq ;;
  }

  dimension: for_registration_dt {
    type: string
    sql: ${TABLE}.for_registration_dt ;;
  }

  dimension: for_registration_exp_dt {
    type: string
    sql: ${TABLE}.for_registration_exp_dt ;;
  }

  dimension: for_registration_no {
    type: string
    sql: ${TABLE}.for_registration_no ;;
  }

  dimension: for_renewal_dt {
    type: string
    sql: ${TABLE}.for_renewal_dt ;;
  }

  dimension: for_renewal_exp_dt {
    type: string
    sql: ${TABLE}.for_renewal_exp_dt ;;
  }

  dimension: for_renewal_no {
    type: string
    sql: ${TABLE}.for_renewal_no ;;
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
