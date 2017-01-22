view: correspondent_domrep_attorney {
  sql_table_name: trademark.correspondent_domrep_attorney ;;

  dimension: attorney_name {
    type: string
    sql: UPPER(REPLACE(${TABLE}.attorney_name, ',', '')) ;;
  }

  dimension: attorney_no {
    type: string
    sql: ${TABLE}.attorney_no ;;
  }

  dimension: caddr_1 {
    type: string
    sql: ${TABLE}.caddr_1 ;;
  }

  dimension: caddr_2 {
    type: string
    sql: ${TABLE}.caddr_2 ;;
  }

  dimension: caddr_3 {
    type: string
    sql: ${TABLE}.caddr_3 ;;
  }

  dimension: caddr_4 {
    type: string
    sql: ${TABLE}.caddr_4 ;;
  }

  dimension: caddr_5 {
    type: string
    sql: ${TABLE}.caddr_5 ;;
  }

  dimension: domestic_rep_name {
    type: string
    sql: ${TABLE}.domestic_rep_name ;;
  }

  dimension: serial_no {
    primary_key: yes
    type: string
    sql: ${TABLE}.serial_no ;;
  }

  measure: count {
    type: count
    drill_fields: [attorney_name, domestic_rep_name]
  }

  measure: count_corr_attorney_cases {
    type: count
    filters: {
      field: correspondent_domrep_attorney.attorney_name
      value: "-NULL"
    }
  }

  measure: distinct_count_corr_attorney_cases {
    label: "Total Distinct Corr. Attorney"
    type: count_distinct
    filters: {
      field: correspondent_domrep_attorney.attorney_name
      value: "-NULL"
    }
  }
}
