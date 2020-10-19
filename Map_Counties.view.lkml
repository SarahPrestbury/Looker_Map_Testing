view: map_counties {

derived_table: {
  sql:
   SELECT COUNTY_KEY, SPLIT_PART(NAME,' County', 0) AS COUNTY_NAME
   FROM RAW.SAT_BOUNDARY_LINE_COUNTY;;
  }

dimension: county_key {
  sql: ${TABLE}.COUNTY_KEY ;;
  primary_key: yes
}

dimension: county_name {
  sql: ${TABLE}.COUNTY_NAME ;;
  map_layer_name: counties_boundary
  }

}
