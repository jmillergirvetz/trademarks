view: case_file {

  sql_table_name: trademark.case_file ;;

  dimension_group: abandon_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: cast(${TABLE}.abandon_dt as timestamp) ;;
  }

  dimension: date_as_string {
    hidden: yes
    type: string
    sql: cast(${TABLE}.abandon_dt as varchar) ;;
  }

  dimension: acq_dist_in {
    type: string
    sql: ${TABLE}.acq_dist_in ;;
  }
  dimension: acq_dist_part_in {
    type: string
    sql: ${TABLE}.acq_dist_part_in ;;
  }

  dimension: amend_lb_for_app_in {
    type: string
    sql: ${TABLE}.amend_lb_for_app_in ;;
  }

  dimension: amend_lb_for_reg_in {
    type: string
    sql: ${TABLE}.amend_lb_for_reg_in ;;
  }

  dimension: amend_lb_itu_in {
    type: string
    sql: ${TABLE}.amend_lb_itu_in ;;
  }

  dimension: amend_lb_use_in {
    type: string
    sql: ${TABLE}.amend_lb_use_in ;;
  }

  dimension: amend_principal_in {
    type: string
    sql: ${TABLE}.amend_principal_in ;;
  }

  dimension_group: amend_reg_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.amend_reg_dt AS timestamp) ;;
  }

  dimension: amend_supp_reg_in {
    type: string
    sql: ${TABLE}.amend_supp_reg_in ;;
  }

  dimension: cancel_pend_in {
    type: string
    sql: ${TABLE}.cancel_pend_in ;;
  }

  dimension: cert_mark_in {
    type: number
    sql: CAST(${TABLE}.cert_mark_in as int64) ;;
  }

  dimension: cfh_status_cd {
    type: string
    sql: ${TABLE}.cfh_status_cd ;;
  }

  dimension_group: cfh_status_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.cfh_status_dt AS timestamp);;
  }

  dimension: chg_reg_in {
    type: string
    sql: ${TABLE}.chg_reg_in ;;
  }

  dimension: coll_memb_mark_in {
    type: number
    sql: CAST(${TABLE}.coll_memb_mark_in as int64);;
  }

  dimension: coll_serv_mark_in {
    type: number
    sql: CAST(${TABLE}.coll_serv_mark_in as int64);;
  }

  dimension: coll_trade_mark_in {
    type: number
    sql: CAST(${TABLE}.coll_trade_mark_in as int64);;
  }

  dimension: concur_use_in {
    type: string
    sql: ${TABLE}.concur_use_in ;;
  }

  dimension: concur_use_pend_in {
    type: string
    sql: ${TABLE}.concur_use_pend_in ;;
  }

  dimension: concur_use_pub_in {
    type: string
    sql: ${TABLE}.concur_use_pub_in ;;
  }

  dimension: draw_3d_cur_in {
    type: string
    sql: ${TABLE}.draw_3d_cur_in ;;
  }

  dimension: draw_3d_file_in {
    type: string
    sql: ${TABLE}.draw_3d_file_in ;;
  }

  dimension: draw_color_cur_in {
    type: string
    sql: ${TABLE}.draw_color_cur_in ;;
  }

  dimension: draw_color_file_in {
    type: string
    sql: ${TABLE}.draw_color_file_in ;;
  }

  dimension: exm_attorney_name_orig {
    hidden: no
    type: string
    sql: UPPER(${TABLE}.exm_attorney_name) ;;
  }

  dimension: exm_attorney_name {
    type: string
    sql: IFNULL(REGEXP_EXTRACT(${TABLE}.exm_attorney_name, r'[A-Z0-9\- ]+'), "NO ATTORNEY") ;;
  }

  dimension: exm_office_cd {
    type: string
    sql: ${TABLE}.exm_office_cd ;;
  }

  dimension: file_location {
    type: string
    sql: ${TABLE}.file_location ;;
  }

  dimension_group: file_location_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.file_location_dt AS timestamp);;
  }

  dimension_group: filing_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.filing_dt AS timestamp) ;;
  }

  dimension: for_priority_in {
    type: string
    sql: ${TABLE}.for_priority_in ;;
  }

  dimension: incontest_ack_in {
    type: string
    sql: ${TABLE}.incontest_ack_in ;;
  }

  dimension: incontest_file_in {
    type: string
    sql: ${TABLE}.incontest_file_in ;;
  }

  dimension: interfer_pend_in {
    type: string
    sql: ${TABLE}.interfer_pend_in ;;
  }

  dimension_group: ir_auto_reg_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.ir_auto_reg_dt AS timestamp);;
  }

  dimension_group: ir_death_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.ir_death_dt AS timestamp) ;;
  }

  dimension: ir_first_refus_in {
    type: string
    sql: ${TABLE}.ir_first_refus_in ;;
  }

  dimension_group: ir_priority_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.ir_priority_dt AS timestamp) ;;
  }

  dimension: ir_priority_in {
    type: string
    sql: ${TABLE}.ir_priority_in ;;
  }

  dimension_group: ir_publication_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.ir_publication_dt AS timestamp);;
  }

  dimension_group: ir_registration_dt {
    type: time
    timeframes: [date, year, month, day_of_year]
    sql: cast(${TABLE}.ir_registration_dt as timestamp) ;;
  }

  dimension: ir_registration_no {
    type: string
    sql: ${TABLE}.ir_registration_no ;;
  }

  dimension_group: ir_renewal_dt {
    type: time
    timeframes: [date, year, month, day_of_year]
    sql: CAST(${TABLE}.ir_renewal_dt as timestamp) ;;
  }

  dimension: ir_status_cd {
    type: string
    sql: ${TABLE}.ir_status_cd ;;
  }

  dimension_group: ir_status_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.ir_status_dt AS timestamp);;
  }

  dimension: lb_for_app_cur_in {
    type: string
    sql: ${TABLE}.lb_for_app_cur_in ;;
  }

  dimension: lb_for_app_file_in {
    type: string
    sql: ${TABLE}.lb_for_app_file_in ;;
  }

  dimension: lb_for_reg_cur_in {
    type: string
    sql: ${TABLE}.lb_for_reg_cur_in ;;
  }

  dimension: lb_for_reg_file_in {
    type: string
    sql: ${TABLE}.lb_for_reg_file_in ;;
  }

  dimension: lb_intl_reg_cur_in {
    type: string
    sql: ${TABLE}.lb_intl_reg_cur_in ;;
  }

  dimension: lb_intl_reg_file_in {
    type: string
    sql: ${TABLE}.lb_intl_reg_file_in ;;
  }

  dimension: lb_itu_cur_in {
    type: string
    sql: ${TABLE}.lb_itu_cur_in ;;
  }

  dimension: lb_itu_file_in {
    type: string
    sql: ${TABLE}.lb_itu_file_in ;;
  }

  dimension: lb_none_cur_in {
    type: string
    sql: ${TABLE}.lb_none_cur_in ;;
  }

  dimension: lb_none_file_in {
    type: string
    sql: ${TABLE}.lb_none_file_in ;;
  }

  dimension: lb_use_cur_in {
    type: string
    sql: ${TABLE}.lb_use_cur_in ;;
  }

  dimension: lb_use_file_in {
    type: string
    sql: ${TABLE}.lb_use_file_in ;;
  }

  dimension: mark_draw_cd {
    type: string
    sql: ${TABLE}.mark_draw_cd ;;
  }

  dimension: mark_id_char {
    type: string
    sql: IFNULL(${TABLE}.mark_id_char, "no trademark") ;;
  }

  dimension: mark_id_char_reg_yesno {
    hidden: no
    type: string
    case: {
      when: {
        label: "(1)"
        sql: ${TABLE}.registration_dt IS NOT NULL ;;
      }
      else: "(0)"
    }
  }

  dimension: mark_id_char_reg {
    label: "Trademark with Registered or Not"
    description: "Registered Trademarks With (1) or Without (0) Mark"
    type: string
    sql: CONCAT(${mark_id_char}, " ", ${mark_id_char_reg_yesno}) ;;
  }

  dimension: opposit_pend_in {
    type: string
    sql: ${TABLE}.opposit_pend_in ;;
  }

  dimension_group: publication_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.publication_dt AS timestamp) ;;
  }

  dimension: reg_cancel_cd {
    type: string
    sql: ${TABLE}.reg_cancel_cd ;;
  }

  dimension_group: reg_cancel_dt {
    type: time
    timeframes: [date, year, month, week, day_of_month]
    sql: CAST(${TABLE}.reg_cancel_dt AS timestamp);;
  }

  dimension_group: registration_dt {
    type: time
    timeframes: [date, year, month, day_of_year]
    sql: cast(${TABLE}.registration_dt as timestamp) ;;
  }

  dimension: registration_yesno {
    type: yesno
    sql: ${registration_dt_date} IS NOT NULL ;;
  }

  dimension: registration_no {
    type: string
    sql: ${TABLE}.registration_no ;;
  }

  dimension: registered_and_renewed {
    type: yesno
    sql: ${registration_dt_date} IS NOT NULL AND ${renewal_dt_date} IS NOT NULL ;;
  }

  dimension: not_registered_but_renewed {
    type: yesno
    sql: ${registration_dt_date} IS NULL AND ${renewal_dt_date} IS NOT NULL ;;
  }

  dimension: related_other_in {
    type: string
    sql: ${TABLE}.related_other_in ;;
  }

  dimension_group: renewal_dt {
    type: time
    timeframes: [date, year, month, day_of_year]
    sql: CAST(${TABLE}.renewal_dt as timestamp) ;;
  }

  dimension: renewal_yesno {
    type: yesno
    sql: ${renewal_dt_date} IS NOT NULL  ;;
  }

  dimension: renewal_file_in_original {
    hidden: yes
    type: string
    sql: ${TABLE}.renewal_file_in ;;
  }

  dimension: renewal_file_in_ {
    type: yesno
    sql: ${renewal_file_in_original} = '1' ;;
  }

  dimension: repub_12c_dt {
    type: string
    sql: ${TABLE}.repub_12c_dt ;;
  }

  dimension: repub_12c_in {
    type: string
    sql: ${TABLE}.repub_12c_in ;;
  }

  dimension: serial_no {
    primary_key: yes
    type: string
    sql: ${TABLE}.serial_no ;;
  }

  dimension: serv_mark_in {
    type: number
    sql: CAST(${TABLE}.serv_mark_in as int64) ;;
  }

  dimension: std_char_claim_in {
    type: string
    sql: ${TABLE}.std_char_claim_in ;;
  }

  dimension: supp_reg_in {
    type: string
    sql: ${TABLE}.supp_reg_in ;;
  }

  dimension: tad_file_id {
    type: string
    sql: ${TABLE}.tad_file_id ;;
  }

  dimension: trade_mark_in {
    type: number
    sql:  CAST(${TABLE}.trade_mark_in as int64) ;;
  }

  dimension: use_afdv_acc_in {
    type: string
    sql: ${TABLE}.use_afdv_acc_in ;;
  }

  dimension: use_afdv_file_in {
    type: string
    sql: ${TABLE}.use_afdv_file_in ;;
  }

  dimension: use_afdv_par_acc_in {
    type: string
    sql: ${TABLE}.use_afdv_par_acc_in ;;
  }

  dimension: misclassified_codes {
    type: yesno
    sql: ${classification.class_primary_cd} IS NULL;;
  }

  dimension: for_ir_reg_overlap {
    type: yesno
    sql: ${foreign_app.for_registration_dt_date} IS NOT NULL AND ${ir_registration_dt_date} IS NOT NULL;;
  }

## measures ##
  measure: count {
    type: count
    filters: {
      field: case_file.filing_dt_date
      value: "-NULL"
    }
    drill_fields: [base_view_drill_set_count*]
  }

  measure: us_count {
    label: "US Count"
    type: count
    filters: {
      field: case_file.registration_no
      value: "-NULL"
    }
    drill_fields: [base_view_drill_set_count*]
  }
  measure: ir_count {
    label: "IR Count"
    type: count
    filters: {
      field: case_file.ir_registration_dt_date
      value: "-NULL"
    }
    drill_fields: [base_view_drill_set_count*]
  }

  measure: ir_registration_count {
    label: "IR Registration Count"
    type: count
    filters: {
      field: case_file.ir_registration_dt_date
      value: "-NULL"
    }
    drill_fields: [base_view_drill_set_reg_count*]
  }

  measure: ir_renewal_count {
    label: "IR Renewal Count"
    type: count
    filters: {
      field: case_file.ir_renewal_dt_date
      value: "-NULL"
    }
    drill_fields: [base_view_drill_set_renew_count*]
  }

  measure: for_ir_reg_overlap_count {
    type: count
    filters: {
      field: case_file.for_ir_reg_overlap
      value: "Yes"
    }
  }

  measure: attorney_count {
    label: "Exm Attorney Count"
    type:  count
    filters: {
      field: case_file.exm_attorney_name
      value: "-NO ATTORNEY"
    }
    drill_fields: [exm_att_drill_set_count*]
  }

  measure: distinct_exm_attorney_cnt {
    type: count_distinct
    sql: ${exm_attorney_name} ;;
    drill_fields: [exm_att_drill_set_count*]
  }

  measure: reg_count {
    label: "Registration Count"
    type: count
    filters: {
      field: case_file.registration_dt_date
      value: "-NULL"
    }
    drill_fields: [base_view_drill_set_reg_count*]
  }

  measure: reg_count_num {
    hidden: yes
    label: "Registration Number Count"
    type: count
    filters: {
      field: case_file.registration_no
      value: "-NULL"
    }
  }

  dimension: abandon_dt_date_data {
    hidden: yes
    type: yesno
    sql: ${abandon_dt_date} IS NOT NULL ;;
  }

  measure: renew_count {
    label: "Renewal Count"
    type: count
    filters: {
      field: case_file.renewal_dt_date
      value: "-NULL"
    }
    drill_fields: [base_view_drill_set_renew_count*]
  }

  measure: filed_renewal_count {
    hidden: yes
    type: count
    filters: {
      field: case_file.renewal_file_in_
      value: "Yes"
    }
    drill_fields: [base_view_drill_set_renew_count*]
  }

  measure: registered_and_renewed_count {
    type: count
    filters: {
      field: case_file.registered_and_renewed
      value: "Yes"
    }
  }

  measure: not_registered_but_renewed_count {
    type: count
    filters: {
      field: case_file.not_registered_but_renewed
      value: "Yes"
    }
  }

  measure: mark_id_char_count{
    type: count
    filters: {
      field: case_file.mark_id_char_reg_yesno
      value: "1"
    }
  }

  measure: sum_mark {
    type: sum
    sql:  ${trade_mark_in} ;;
  }

  measure: sum_serv_mark{
    type: sum
    sql: ${serv_mark_in} ;;
  }

  measure: sum_cert_mark {
    type: sum
    sql: ${cert_mark_in} ;;
  }
  measure: sum_coll_mark {
    type: sum
    sql: ${coll_trade_mark_in};;
  }

  measure: sum_coll_serv_mark{
    type: sum
    sql: ${coll_serv_mark_in} ;;
  }

  measure: sum_coll_mem_mark {
    type: sum
    sql: ${coll_memb_mark_in} ;;
  }

  parameter: list_after_1973 {
    type: yesno
  }

  measure: list_classifications {
    type: string
    sql: REPLACE(
              CASE WHEN {% parameter list_after_1973 %} = true
              THEN ${tm_class_codes_after1973.tm_class_list_after1973}
              ELSE ${tm_class_codes_before1973.tm_class_list_before1973}
              END
              , 'RECORD|', '') ;;
  }

  measure: list_exm_attorneys {
    label: "List of Exam Attorneys"
    type: list
    list_field: case_file.exm_attorney_name
    html: html: <a href="dashboards/788?ExamAttorneyName={{linked_value}}" target="_blank">{{linked_value}}</a> ;;
  }

  measure: list_mark_id_char {
    label: "List of Trademarks"
    type: list
    list_field: case_file.mark_id_char_reg
  }

  measure: list_owners {
    label: "List of Owners"
    type: list
    list_field: owner.own_name_
    html: <a href="/dashboards/789?OwnerName={{linked_value}}" target="_blank">{{linked_value}}</a> ;;

  }


## sets ##

  set: base_view_drill_set_count {
    fields: [owner.own_name_na,
            correspondent_domrep_attorney.readable_attorney_name,
             case_file.exm_attorney_name,
             case_file.count]
    }

  set: base_view_drill_set_reg_count {
    fields: [owner.own_name_na,
            correspondent_domrep_attorney.readable_attorney_name,
            case_file.exm_attorney_name,
            case_file.reg_count]
    }

  set: base_view_drill_set_renew_count {
    fields: [owner.own_name_na,
            correspondent_domrep_attorney.readable_attorney_name,
            case_file.exm_attorney_name,
            case_file.renew_count]
  }

  set: exm_att_drill_set_count {
    fields: [case_file.exm_attorney_name,
      case_file.count,
      case_file.reg_count,
      case_file.renew_count]
  }

}
