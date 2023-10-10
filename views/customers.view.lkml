view: customers {
  sql_table_name: sales.customers ;;

  dimension: custmer_name {
    type: string
    sql: ${TABLE}.custmer_name ;;
    label: "names"
  }

  dimension: test {
    case: {
      when: {
        sql: 1 ;;
        label: "testing declaring"
      }
      when: {
        sql: 2 ;;
        label: "asfdasdfasf"
      }
      when: {
        sql: 3 ;;
        label: "qwerty"
      }
    }
  }
  dimension: customer_code {
    type: string
    sql: ${TABLE}.customer_code ;;
  }
  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }
  measure: count {
    type: count
    drill_fields: [custmer_name]
  }
}
