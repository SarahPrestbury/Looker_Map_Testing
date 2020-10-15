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
  url: "https://raw.githubusercontent.com/SarahPrestbury/Looker_Map_Testing/master/counties.json?token=AKQ6PSEE2GZZ7QY3GNT5GWK7RBNHG"
}
