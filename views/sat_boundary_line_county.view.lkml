view: sat_boundary_line_county {
  #sql_table_name: "DEV_CM_DATASHARE_JACK_VAULT"."RAW"."SAT_BOUNDARY_LINE_COUNTY"
   # ;;
  derived_table: {
    sql:
       SELECT *
       FROM DEV_CM_DATASHARE_JACK_VAULT.RAW.SAT_BOUNDARY_LINE_COUNTY;;
  }

  dimension: admin_unit_id {
    type: string
    sql: ${TABLE}."ADMIN_UNIT_ID" ;;
  }

  dimension: county_key {
    type: string
    #primary_key: yes
    sql: ${TABLE}."COUNTY_KEY" ;;
  }

  dimension_group: effective_from_ts {
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
    sql: CAST(${TABLE}."EFFECTIVE_FROM_TS" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: effective_to_ts {
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
    sql: CAST(${TABLE}."EFFECTIVE_TO_TS" AS TIMESTAMP_NTZ) ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}."FILE_NAME" ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}."GEO" ;;
  }

  dimension: global_polygon_id {
    type: string
    sql: ${TABLE}."GLOBAL_POLYGON_ID" ;;
  }

  dimension: hash_diff {
    type: string
    sql: ${TABLE}."HASH_DIFF" ;;
  }

  dimension: hectares {
    type: string
    sql: ${TABLE}."HECTARES" ;;

  }

  dimension: load_src {
    type: string
    sql: ${TABLE}."LOAD_SRC" ;;
  }

  dimension_group: load_ts {
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
    sql: ${TABLE}."LOAD_TS" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
    map_layer_name: counties_boundary
  }

  measure: count {
    type: count
    drill_fields: [name, file_name]
  }

  measure: sum_hectares {
    type: sum
    sql: ${hectares} ;;
  }
}
