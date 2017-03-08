view: correspondent_domrep_attorney {
  sql_table_name: trademark.correspondent_domrep_attorney ;;

## dimensions ##

  dimension: attorney_name_orig {
    type: string
    sql: UPPER(${TABLE}.attorney_name) ;;
  }

  dimension:attorney_name_remove_address {
    hidden: yes
    type: string
    sql: CASE WHEN REGEXP_CONTAINS(${attorney_name_orig}, r"STREET") = true THEN NULL ELSE ${TABLE}.attorney_name END ;;
  }

  dimension: readable_attorney_name {
    type: string
    sql: IFNULL(REPLACE(REGEXP_EXTRACT(${attorney_name_remove_address}, r'[A-Z ]+'), 'ESQ', ''), "NO ATTORNEY") ;;
  }

  dimension: filter_empty_readable_attorney_name {
    type: yesno
    sql: ${readable_attorney_name} != ' '  ;;
  }

  dimension: filter_single_char_names {
    type: yesno
    sql:  LENGTH(${readable_attorney_name}) > 2 ;;
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

  dimension: corr_att_own_add_1_2 {
    type: yesno
    sql: ${owner.own_addr_1} IS NOT NULL OR ${owner.own_addr_2} IS NOT NULL ;;
  }

## measures ##

  measure: count {
    type: count
    drill_fields: [attorney_name_orig, domestic_rep_name]
  }

  measure: count_corr_attorney_cases {
    type: count
    filters: {
      field: correspondent_domrep_attorney.readable_attorney_name
      value: "-NULL"
    }
  }

  measure: distinct_count_corr_attorney_cases {
    label: "Total Distinct Corr Attorney"
    type: count_distinct
    sql: ${TABLE}.attorney_name ;;
    drill_fields: [corr_att_drill_set_count*]
  }

  measure: count_null {
    type: count
    filters: {
      field: correspondent_domrep_attorney.readable_attorney_name
      value: "NULL"
    }
  }

  measure: distinct_test {
    type: count
    filters: {
      field: correspondent_domrep_attorney.corr_att_own_add_1_2
      value: "Yes"
    }
  }

  measure: list_corr_attorneys {
    label: "List of Correspondent Attorneys"
    type: list
    list_field: correspondent_domrep_attorney.readable_attorney_name
  }

## sets ##

  set: corr_att_drill_set_count {
    fields: [correspondent_domrep_attorney.readable_attorney_name,
            case_file.count,
            case_file.reg_count,
            case_file.renew_count]
  }

}
