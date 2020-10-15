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

map_layer: counties {
  url: "https://raw.githubusercontent.com/brechtv/looker_map_layers/master/uk-counties.json"
}
