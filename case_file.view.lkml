view: case_file {
  sql_table_name: trademark.case_file ;;

  dimension_group: abandon_dt {
    type: time
    sql: cast(${TABLE}.abandon_dt as timestamp) ;;
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

  dimension: amend_reg_dt {
    type: string
    sql: ${TABLE}.amend_reg_dt ;;
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

  dimension: cfh_status_dt {
    type: string
    sql: ${TABLE}.cfh_status_dt ;;
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

  dimension: exm_attorney_name {
    type: string
    sql: UPPER(IFNULL(${TABLE}.exm_attorney_name, "NO ATTORNEY")) ;;
  }

  dimension: exm_office_cd {
    type: string
    sql: ${TABLE}.exm_office_cd ;;
  }

  dimension: file_location {
    type: string
    sql: ${TABLE}.file_location ;;
  }

  dimension: file_location_dt {
    type: string
    sql: ${TABLE}.file_location_dt ;;
  }

  dimension: filing_dt {
    type: string
    sql: ${TABLE}.filing_dt ;;
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

  dimension: ir_auto_reg_dt {
    type: string
    sql: ${TABLE}.ir_auto_reg_dt ;;
  }

  dimension: ir_death_dt {
    type: string
    sql: ${TABLE}.ir_death_dt ;;
  }

  dimension: ir_first_refus_in {
    type: string
    sql: ${TABLE}.ir_first_refus_in ;;
  }

  dimension: ir_priority_dt {
    type: string
    sql: ${TABLE}.ir_priority_dt ;;
  }

  dimension: ir_priority_in {
    type: string
    sql: ${TABLE}.ir_priority_in ;;
  }

  dimension: ir_publication_dt {
    type: string
    sql: ${TABLE}.ir_publication_dt ;;
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

  dimension: ir_status_dt {
    type: string
    sql: ${TABLE}.ir_status_dt ;;
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
    sql: ${TABLE}.mark_id_char ;;
  }

  dimension: opposit_pend_in {
    type: string
    sql: ${TABLE}.opposit_pend_in ;;
  }

  dimension: publication_dt {
    type: string
    sql: ${TABLE}.publication_dt ;;
  }

  dimension: reg_cancel_cd {
    type: string
    sql: ${TABLE}.reg_cancel_cd ;;
  }

  dimension: reg_cancel_dt {
    type: string
    sql: ${TABLE}.reg_cancel_dt ;;
  }

  dimension_group: registration_dt {
    type: time
    timeframes: [date, year, month, day_of_year]
    sql: cast(${TABLE}.registration_dt as timestamp) ;;
  }

  dimension: registration_no {
    type: string
    sql: ${TABLE}.registration_no ;;
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

  dimension: renewal_file_in {
    type: string
    sql: ${TABLE}.renewal_file_in ;;
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

  measure: count {
    type: count
    drill_fields: [exm_attorney_name]
  }

  measure: us_count {
    label: "US Count"
    type: count
    filters: {
      field: case_file.registration_no
      value: "-NULL"
    }
  }
  measure: ir_count {
    label: "IR Count"
    type: count
    filters: {
      field: case_file.ir_registration_no
      value: "-NULL"
    }
  }

  measure: attorney_count {
    label: "Exm Attorney Count"
    type:  count
    filters: {
      field: case_file.exm_attorney_name
      value: "-NO ATTORNEY"
    }
  }

  measure: distinct_exm_attorney_cnt {
    type: count_distinct
    sql: case_file.exm_attorney_name ;;
  }

  measure: reg_count {
    label: "Registration Count"
    type: count
    filters: {
      field: case_file.registration_dt_date
      value: "-NULL"
    }
  }

  measure: renew_count {
    label: "Renewal Count"
    type: count
    filters: {
      field: case_file.renewal_dt_date
      value: "-NULL"
    }
  }

  dimension: misclassified_codes {
    type: yesno
    sql: ${classification.class_primary_cd} is null;;
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

}
