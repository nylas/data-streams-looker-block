view: participant {
  sql_table_name: `nylas-event-streams.order_parser.participant`
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: message_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.message_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [name, message.id]
  }
}
