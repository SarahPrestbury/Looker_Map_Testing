connection: "map_testing"

datagroup: map_testing_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: map_testing_default_datagroup

include: "/views/**/*.view"
include: "/Map_Counties.view"
include: "/map_district_unitary.view"

#explore: sat_boundary_line_county {
#label: "sat_boundary_line_county"
# view_name: sat_boundary_line_county
# join: map_counties {
#    relationship: one_to_one
#    sql_on: ${sat_boundary_line_county.county_key} = ${map_counties.county_key} ;;
#  }
#  }



explore: sat_boundary_line_district_borough_unitary {
  label: "sat_boundary_line_district_borough_unitary"
  view_name: sat_boundary_line_district_borough_unitary
  join: map_district_unitary {
    relationship: one_to_one
    sql_on:  ${sat_boundary_line_district_borough_unitary.district_borough_unitary_key} = ${map_district_unitary.district_borough_unitary_key} ;;
  }
  }


map_layer: unitary_authorities {
  url: "https://raw.githubusercontent.com/jackjohnson-jj10/TopoJSONDemo/main/district_borough_unitary_limited_topo.json"
  #file: "/district_borough_unitary_limited_topo.json"
  format:  topojson
  property_key: "name"
}


#map_layer: counties_boundary {
#  url: "https://raw.githubusercontent.com/brechtv/looker_map_layers/master/uk-counties.json"
#  format: topojson
#  property_key: "NAME_2"
#}
