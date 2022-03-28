include: "/views/order.view.lkml"
view: line_item {
  sql_table_name: `@{GCP_PROJECT_ID}.@{GCP_DATASET_NAME}.line_item`
    ;;
  extends: [order]

  dimension_group: _synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._synced_at ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
  }

  measure: total_products {
    type: count_distinct
    sql: concat(${order.id}, ${name});;
  }

  measure: count {
    type: count
    drill_fields: [name, order.merchant_name, order.id]
  }
}
