view: message {
  sql_table_name: `@{GCP_PROJECT_ID}.@{GCP_DATASET_NAME}.message`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

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

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: grant_id {
    type: string
    sql: ${TABLE}.grant_id ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.received_at ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: thread_id {
    type: string
    sql: ${TABLE}.thread_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, participant.count, tracking.count, order.count]
  }
}
