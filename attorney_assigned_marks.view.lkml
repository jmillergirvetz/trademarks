view: attorney_assigned_marks {

  derived_table: {
    sql: SELECT tmp1.case_file_exm_attorney_name AS attorney_name,
              tmp1.case_file_count AS total_marks,
              tmp2.case_file_count AS registered_marks
      FROM
      (SELECT IFNULL(case_file.exm_attorney_name,"NO ATTORNEY") AS case_file_exm_attorney_name,
              COUNT(*) AS case_file_count
      FROM trademark.case_file AS case_file
      GROUP BY 1
      ORDER BY 2 DESC,1) AS tmp1
      JOIN
      (SELECT IFNULL(case_file.exm_attorney_name, "NO ATTORNEY")  AS case_file_exm_attorney_name,
              COUNT(*) AS case_file_count
      FROM trademark.case_file AS case_file
      WHERE (cast(case_file.registration_dt as timestamp) IS NOT NULL)
      GROUP BY 1
      ORDER BY 2 ) AS tmp2
      ON tmp1.case_file_exm_attorney_name = tmp2.case_file_exm_attorney_name
      ORDER BY 2 DESC
       ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  dimension: attorney_name {
    primary_key: yes
    type: string
    sql: ${TABLE}.attorney_name ;;
  }

  dimension: registered_marks_tmp {
    hidden: yes
    type: number
    sql: ${TABLE}.registered_marks ;;
  }

  dimension: total_marks_tmp {
    hidden: yes
    type: number
    sql: ${TABLE}.total_marks ;;
  }

  measure: count_marks {
    type: count
  }

  measure: count_registered_marks {
    type: count
    filters: {
      field: case_file.registration_dt_date
      value: "-NULL"
    }
  }

  measure: total_registered_marks {
    type: sum
    drill_fields: [detail*]
    sql: ${registered_marks_tmp};;
  }

  measure: total_marks {
    type: sum
    drill_fields: [detail*]
    sql: ${total_marks_tmp};;
  }

  set: detail {
    fields: [attorney_name, registered_marks_tmp, total_marks_tmp]
  }

}
