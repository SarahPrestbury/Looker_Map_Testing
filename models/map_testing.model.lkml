connection: "map_testing"

datagroup: map_testing_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: map_testing_default_datagroup

include: "/views/**/*.view"
#include: "/Map_Counties.view"


#explore: sat_boundary_line_county {
#  label: "sat_boundary_line_county"
#  view_name: sat_boundary_line_county
#  join: map_counties {
#    relationship: one_to_one
#    sql_on: ${sat_boundary_line_county.county_key} = ${map_counties.county_key} ;;
#  }
#  }

explore: sat_boundary_line_county {}


map_layer: district_borough_unitary {
  file: "/district_borough_unitary_limited_topo.json"
  property_key: "name"
}
