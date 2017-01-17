view: lat_lng_world_cities {
  sql_table_name: trademark.lat_lng_world_cities ;;

  dimension: city {
    primary_key: yes
    type: string
    sql: UPPER(${TABLE}.city) ;;
  }

  dimension: city_ascii {
    type: string
    sql: ${TABLE}.city_ascii ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: iso2 {
    type: string
    sql: ${TABLE}.iso2 ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: lat_lng {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${lng} ;;
  }

  dimension: pop {
    type: string
    sql: ${TABLE}.pop ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
