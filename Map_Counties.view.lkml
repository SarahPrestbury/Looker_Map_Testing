view: map_counties {

derived_table: {
  sql:
   SELECT COUNTY_KEY, NAME
   FROM DEV_CM_DATASHARE_JACK_VAULT.RAW.SAT_BOUNDARY_LINE_COUNTY;;
  }

dimension: county_key {
  sql: ${TABLE}.COUNTY_KEY ;;
  primary_key: yes
}

dimension: county_name {
  sql: ${TABLE}.NAME ;;
  map_layer_name: counties_boundary
  }

}
