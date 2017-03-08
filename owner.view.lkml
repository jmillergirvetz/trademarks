
view: owner {
  sql_table_name: trademark.owner ;;

  dimension: own_addr_1 {
    type: string
    sql: UPPER(${TABLE}.own_addr_1) ;;
  }

  dimension: own_addr_2 {
    type: string
    sql: UPPER(${TABLE}.own_addr_2) ;;
  }

  dimension: own_addr_city {
    type: string
    sql: UPPER(${TABLE}.own_addr_city) ;;
  }

  dimension: own_addr_country_cd {
    map_layer_name: countries
    sql: UPPER(${TABLE}.own_addr_country_cd) ;;
  }

  dimension: own_addr_other_cd {
    type: string
    sql: ${TABLE}.own_addr_other_cd ;;
  }

  dimension: own_addr_postal {
    map_layer_name: us_zipcode_tabulation_areas
    sql: IFNULL(${TABLE}.own_addr_postal, 'Not Available') ;;
  }

  dimension: own_addr_state_cd {
    map_layer_name: us_states
    sql: ${TABLE}.own_addr_state_cd ;;
  }

  dimension: own_altn_name {
    type: string
    sql: ${TABLE}.own_altn_name ;;
  }

  dimension: own_composed_of {
    type: string
    sql: ${TABLE}.own_composed_of ;;
  }

  dimension: own_entity_cd {
    type: string
    sql: ${TABLE}.own_entity_cd ;;
  }

  dimension: own_entity_desc {
    type: string
    sql: ${TABLE}.own_entity_desc ;;
  }

  dimension: own_id {
    type: string
    sql: ${TABLE}.own_id ;;
  }

  dimension: own_nalty_country_cd {
    type: string
    sql: ${TABLE}.own_nalty_country_cd ;;
  }

  dimension: own_nalty_other_cd {
    type: string
    sql: ${TABLE}.own_nalty_other_cd ;;
  }

  dimension: own_nalty_state_cd {
    type: string
    sql: ${TABLE}.own_nalty_state_cd ;;
  }

  dimension: own_name {
    hidden: yes
    type: string
    sql: UPPER(${TABLE}.own_name) ;;
  }

  dimension: own_name_ {
    type: string
    sql:
            UPPER(CASE WHEN ${TABLE}.own_name LIKE '%Mattel%' OR ${TABLE}.own_name LIKE '%MATTEL%' THEN "MATTEL INC"
              WHEN ${TABLE}.own_name LIKE '%Disney%' OR ${TABLE}.own_name LIKE '%DISNEY%' THEN 'DISNEY ENTERPRISES INC'
              WHEN ${TABLE}.own_name LIKE '%Apple %' OR ${TABLE}.own_name LIKE '%APPLE %'
                OR ${TABLE}.own_name LIKE '%Apple,%' OR ${TABLE}.own_name LIKE '%APPLE,%'THEN 'APPLE INC'
              WHEN ${TABLE}.own_name LIKE '%Hasbro%' OR ${TABLE}.own_name LIKE '%HASBRO%' THEN 'HASBRO INC'
              WHEN ${TABLE}.own_name LIKE '%Johnson & Johnson%' OR ${TABLE}.own_name LIKE '%JOHNSON & JOHNSON%'
                OR ${TABLE}.own_name LIKE '%Johnson and Johnson%' OR ${TABLE}.own_name LIKE '%JOHNSON and JOHNSON%'
                THEN 'JOHNSON & JOHNSON'
              WHEN ${TABLE}.own_name LIKE '%Novartis%' OR ${TABLE}.own_name LIKE '%NOVARTIS%' THEN 'NOVARTIS'
              WHEN ${TABLE}.own_name LIKE '%Viacom%' OR ${TABLE}.own_name LIKE '%VIACOM%' THEN 'VIACOM'
              WHEN ${TABLE}.own_name LIKE '%Microsoft%' OR ${TABLE}.own_name LIKE '%MICROSOFT%' THEN 'MICROSOFT CORP'
              WHEN ${TABLE}.own_name LIKE '%Intel %' OR ${TABLE}.own_name LIKE '%INTEL %'
                OR ${TABLE}.own_name LIKE '%Intel,%' OR ${TABLE}.own_name LIKE '%INTEL,%'THEN 'INTEL'
              WHEN ${TABLE}.own_name LIKE '%Ibm%' OR ${TABLE}.own_name LIKE '%IBM%' OR ${TABLE}.own_name LIKE '%ibm%'
                OR ${TABLE}.own_name LIKE '%International Business Machines%'
                OR ${TABLE}.own_name LIKE '%INTERNATIONAL BUSINESS MACHINES%'
                THEN 'IBM'
              WHEN ${TABLE}.own_name LIKE '%Cisco%' OR ${TABLE}.own_name LIKE '%CISCO%' THEN 'CISCO SYSTEMS'
              WHEN ${TABLE}.own_name LIKE '%Oracle%' OR ${TABLE}.own_name LIKE '%ORACLE%' THEN 'ORACLE CORP'
              WHEN ${TABLE}.own_name LIKE '%Pfizer %' OR ${TABLE}.own_name LIKE '%PFIZER %'
                OR ${TABLE}.own_name LIKE '%Pfizer,%' OR ${TABLE}.own_name LIKE '%PFIZER,%'THEN 'PFIZER INC'
              WHEN ${TABLE}.own_name LIKE '%Ford Motor Company%' OR ${TABLE}.own_name LIKE '%FORD MOTOR COMPANY%'
                THEN 'FORD MOTOR COMPANY'
              WHEN ${TABLE}.own_name LIKE "%L'Oreal%" OR ${TABLE}.own_name LIKE "%L'OREAL%" THEN "L'OREAL"
              WHEN ${TABLE}.own_name LIKE '%Nestle%' OR ${TABLE}.own_name LIKE '%NESTLE%' THEN 'NESTLE'
              WHEN ${TABLE}.own_name LIKE '%Anheuser-Busch%' OR ${TABLE}.own_name LIKE '%ANHEUSER-BUSCH%' THEN 'Anheuser-Busch, Inc.'
              WHEN ${TABLE}.own_name LIKE '%Sara Lee%' OR ${TABLE}.own_name LIKE '%SARA LEE%' THEN 'SARA LEE CORP'
              ELSE ${TABLE}.own_name
              END) ;; # REGEX_EXTRACT(my_string, r'[A-Z0-9\- ]+')
  }

# can't return table value within else so need to use case statemenet like above
#       case: {
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Mattel%' OR ${TABLE}.own_name LIKE '%MATTEL%' ;;
#           label: "Mattel, Inc."
#         }
#         when: {
#           sql:${TABLE}.own_name LIKE '%Disney%' OR ${TABLE}.own_name LIKE '%DISNEY%' ;;
#           label: "Disney Enterprises, Inc."
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Apple %' OR ${TABLE}.own_name LIKE '%APPLE %'
#             OR ${TABLE}.own_name LIKE '%Apple,%' OR ${TABLE}.own_name LIKE '%APPLE,%' ;;
#           label: "Apple, Inc."
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Hasbro%' OR ${TABLE}.own_name LIKE '%HASBRO%' ;;
#           label: "Hasbro, Inc."
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Johnson & Johnson%' OR ${TABLE}.own_name LIKE '%JOHNSON & JOHNSON%'
#             OR ${TABLE}.own_name LIKE '%Johnson and Johnson%' OR ${TABLE}.own_name LIKE '%JOHNSON and JOHNSON%' ;;
#           label: "Johnson & Johnson"
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Novartis%' OR ${TABLE}.own_name LIKE '%NOVARTIS%' ;;
#           label: "Novartis"
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Viacom%' OR ${TABLE}.own_name LIKE '%VIACOM%' ;;
#           label: "Viacom"
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Microsoft%' OR ${TABLE}.own_name LIKE '%MICROSOFT%';;
#           label: "Microsoft Corp."
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Intel %' OR ${TABLE}.own_name LIKE '%INTEL %'
#             OR ${TABLE}.own_name LIKE '%Intel,%' OR ${TABLE}.own_name LIKE '%INTEL,%';;
#           label: "Intel"
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Ibm%' OR ${TABLE}.own_name LIKE '%IBM%' OR ${TABLE}.own_name LIKE '%ibm%'
#                        OR ${TABLE}.own_name LIKE '%International Business Machines%'
#                        OR ${TABLE}.own_name LIKE '%INTERNATIONAL BUSINESS MACHINES%' ;;
#           label: "IBM"
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Cisco%' OR ${TABLE}.own_name LIKE '%CISCO%' ;;
#           label: "Cisco Systems"
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Oracle%' OR ${TABLE}.own_name LIKE '%ORACLE%' ;;
#           label: "Oracle Corp."
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Pfizer %' OR ${TABLE}.own_name LIKE '%PFIZER %'
#             OR ${TABLE}.own_name LIKE '%Pfizer,%' OR ${TABLE}.own_name LIKE '%PFIZER,%' ;;
#           label: "Pfizer, Inc."
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Ford Motor Company%' OR ${TABLE}.own_name LIKE '%FORD MOTOR COMPANY%' ;;
#           label: "Ford Motor Company"
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE "%L'Oreal%" OR ${TABLE}.own_name LIKE "%L'OREAL%" ;;
#           label: "L'Oreal"
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Nestle%' OR ${TABLE}.own_name LIKE '%NESTLE%' ;;
#           label: "Nestle"
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Anheuser-Busch%' OR ${TABLE}.own_name LIKE '%ABHEUSER-BUSCH%' ;;
#           label: "Anheuser-Busch, Inc."
#         }
#         when: {
#           sql: ${TABLE}.own_name LIKE '%Sara Lee%' OR ${TABLE}.own_name LIKE '%SARA LEE%' ;;
#           label: "Sara Lee Corp."
#         }
#         # can't return table value within else so need to use case statemenet like above
#         else: ${TABLE}.own_name
# #   }
# #   }

  dimension: own_name_na {
    label: "Owner Name"
    type: string
    sql: CASE WHEN ${own_name_} IS NULL THEN 'N/A' ELSE ${own_name_} END ;;

  }

  dimension: own_seq {
    type: string
    sql: ${TABLE}.own_seq ;;
  }

  dimension: own_type_cd {
    type: string
    sql: ${TABLE}.own_type_cd ;;
  }

  dimension: serial_no {
    primary_key: yes
    type: string
    sql: ${TABLE}.serial_no ;;
  }

  dimension: own_name_and_alt_name {
    type: yesno
    sql: ${own_name_} IS NOT NULL OR ${own_altn_name} IS NOT NULL;;
  }

  measure: distinct_tm_with_owner {
    label: "Count Distinct TMs with Owner"
    type: count_distinct
    sql: ${own_name_} ;;
    filters: {
      field: own_name_
      value: "-NULL"
    }
    drill_fields: [owner_drill_set_count*]
  }

  measure: total_tm_with_owner {
    type: number
    sql: SUM(CASE WHEN ${own_name_and_alt_name} THEN 1 ELSE 0 END) ;;
    drill_fields: [own_name, own_altn_name, own_addr_city, own_addr_state_cd, own_nalty_country_cd, own_addr_1]
  }

  measure: count {
    type: count
  }

  measure: count_serial_num {
    type: count
  }

  measure:list_tm_class_codes_bfr_1973{
    type: list
    list_field: tm_class_codes_before1973.mark_class_title_old
  }

  measure: list_tm_class_codes_aftr_1973 {
    type: list
    list_field: tm_class_codes_after1973.mark_class_title
  }

  measure: list_owner_names {
    type: list
    list_field: owner.own_name_
  }

  set: owner_drill_set_count {
    fields: [owner.own_name_,
            case_file.count,
            case_file.reg_count,
            case_file.renew_count]
  }

}
