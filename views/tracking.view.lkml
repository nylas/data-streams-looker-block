view: tracking {
  sql_table_name: `abhishek-apache-beam-learning.mock_looker_blocks.tracking`
    ;;
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

  dimension: carrier_name {
    type: string
    sql: ${TABLE}.carrier_name ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: tracking_link {
    type: string
    sql: ${TABLE}.tracking_link ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  measure: count {
    type: count
    drill_fields: [carrier_name, order.merchant_name, order.id]
  }
}
