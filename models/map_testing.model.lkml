connection: "map_testing"

datagroup: map_testing_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: map_testing_default_datagroup


include: "/views/**/*.view"

explore: sat_boundary_line_county {
  label: "sat_boundary_line_county"
  view_name: sat_boundary_line_county
  }

map_layer: counties_boundary {
 url: "https://raw.githubusercontent.com/SarahPrestbury/Looker_Map_Testing/master/county%20(1).json?token=AKQ6PSF54OM5XYGUI36HBW27RGEVM"
}
