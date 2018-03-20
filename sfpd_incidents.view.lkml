view: sfpd_incidents {
  sql_table_name: sf_thesis.sfpd_incidents ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: dayofweek {
    type: string
    sql: ${TABLE}.dayofweek ;;
  }

  dimension: descript {
    type: string
    sql: ${TABLE}.descript ;;
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

  dimension: pddistrict {
    type: string
    sql: ${TABLE}.pddistrict ;;
  }

  dimension: pdid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pdid ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}.resolution ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: unique_key {
    type: number
    sql: ${TABLE}.unique_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
