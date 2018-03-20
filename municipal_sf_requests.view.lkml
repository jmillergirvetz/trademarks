view: municipal_sf_requests {
  sql_table_name: sf_thesis.municipal_sf_requests ;;

  dimension: agency_name {
    type: string
    sql: ${TABLE}.agency_name ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension_group: closed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.closed_date ;;
  }

  dimension: complaint_type {
    type: string
    sql: ${TABLE}.complaint_type ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: descriptor {
    type: string
    sql: ${TABLE}.descriptor ;;
  }

  dimension: incident_address {
    type: string
    sql: ${TABLE}.incident_address ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: media_url {
    type: string
    sql: ${TABLE}.media_url ;;
  }

  dimension: neighborhood {
    type: string
    sql: ${TABLE}.neighborhood ;;
  }

  dimension: police_district {
    type: string
    sql: ${TABLE}.police_district ;;
  }

  dimension_group: resolution_action_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.resolution_action_updated_date ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_notes {
    type: string
    sql: ${TABLE}.status_notes ;;
  }

  dimension: supervisor_district {
    type: number
    sql: ${TABLE}.supervisor_district ;;
  }

  dimension: unique_key {
    type: number
    sql: ${TABLE}.unique_key ;;
  }

  measure: count {
    type: count
    drill_fields: [agency_name]
  }
}
