view: map_district_unitary {
    derived_table: {
      sql:
         SELECT DISTRICT_BOROUGH_UNITARY_KEY, NAME
         FROM DEV_CM_DATASHARE_JACK_VAULT.RAW.SAT_BOUNDARY_LINE_DISTRICT_BOROUGH_UNITARY;;
    }

    dimension: district_borough_unitary_key {
      sql: ${TABLE}.DISTRICT_BOROUGH_UNITARY_KEY ;;
      primary_key: yes
    }

    dimension: county_name {
      sql: ${TABLE}.NAME ;;
      # map_layer_name: counties_boundary
    }

  }
