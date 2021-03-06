connection: "bigquery_publicdata_standard_sql"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

## base case file explore
explore: case_file {
  join: attorney_assigned_marks {
    relationship: many_to_many
    sql_on: ${case_file.exm_attorney_name} = ${attorney_assigned_marks.attorney_name} ;;
  }
  join: classification {
    relationship: one_to_many
    sql_on: ${case_file.serial_no} = ${classification.serial_no} ;;
  }
  join: correspondent_domrep_attorney {
    relationship: one_to_one
    sql_on: ${case_file.serial_no} = ${correspondent_domrep_attorney.serial_no} ;;
  }
  join: design_search {
    relationship: one_to_many
    sql_on: ${case_file.serial_no} = ${design_search.serial_no} ;;
  }
  join: event {
    relationship: one_to_many
    sql_on: ${case_file.serial_no} = ${event.serial_no} ;;
  }
  join: foreign_app {
    relationship: one_to_many
    sql_on: ${case_file.serial_no} = ${foreign_app.serial_no} ;;
  }
  join: intl_class {
    relationship: many_to_one
    sql_on: ${classification.serial_no} = ${intl_class.serial_no} ;;
  }
  join: madrid_intl_file {
    relationship: many_to_one
    sql_on: ${case_file.serial_no} = ${madrid_intl_file.serial_no} ;;
  }
  join: owner {
    from: owner
    relationship: one_to_many
    sql_on: ${case_file.serial_no} = ${owner.serial_no} ;;
  }
  # aliased table showing attorneys who are also trademark owners
  join: exam_attorney_owners {
    from: owner
    relationship: many_to_many
    sql_on: ${case_file.exm_attorney_name_orig} = ${exam_attorney_owners.own_name} ;;
  }
  join: prior_mark {
    relationship: many_to_one
    sql_on: ${case_file.serial_no} = ${prior_mark.serial_no} ;;
  }
  # not including view: statement
  join: us_class  {
    relationship: many_to_one
    sql_on: ${case_file.serial_no} = ${us_class.serial_no} ;;
  }
  # derived tables for classification codes and lat lng
  join: tm_class_codes_after1973 {
    relationship: many_to_one
    sql_on: ${classification.class_primary_cd} = ${tm_class_codes_after1973.mark_class_code} ;;
  }
  join: tm_class_codes_before1973 {
    relationship: many_to_one
    sql_on:  ${classification.class_primary_cd} = ${tm_class_codes_before1973.mark_class_code_old};;
  }
  join: lat_lng_world_cities {
    relationship: many_to_one
    sql_on: ${lat_lng_world_cities.city} = ${owner.own_addr_city} ;;
#             AND
#             ${lat_lng_world_cities.iso2} = ${owner.own_addr_country_cd};;
  }
}

## assignment explore
explore: tm_assignment {
  label: "TM Assignment"
  join: tm_assignee {
    relationship: many_to_one
    sql_on: ${tm_assignment.rf_id} = ${tm_assignee.rf_id} ;;
  }
  join: tm_assignor {
    relationship: many_to_one
    sql_on: ${tm_assignment.rf_id} = ${tm_assignor.rf_id} ;;
  }
  join: tm_docid {
    relationship: many_to_one
    sql_on: ${tm_assignment.rf_id} = ${tm_docid.rf_id} ;;
  }
}
