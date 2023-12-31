connection: "salesgcpea"

# include all the views
include: "/views/**/*.view.lkml"

include: "/explores/exploreA.explore.lkml"

datagroup: thelook_migueld_mtr_sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: thelook_migueld_mtr_sales_default_datagroup

explore: customers {
  always_filter:  {
    filters:{
      field: customers.test
    }
  }
}

explore: date {}

explore: markets {}

explore: products {}

explore: transactions {}

explore: pdt_test {}
