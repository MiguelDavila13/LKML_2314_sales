# If necessary, uncomment the line below to include explore_source.
# include: "thelook_migueld_mtr_sales.model.lkml"

view: pdt_test {
  derived_table: {
    explore_source: markets {
      column: markets_code {}
      column: markets_name {}
      column: zone {}
      column: count {}
    }
  }
  dimension: markets_code {
    description: ""
  }
  dimension: markets_name {
    description: ""
  }
  dimension: zone {
    description: ""
  }
  dimension: count {
    description: ""
    type: number
  }
}
