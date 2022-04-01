include: "/views/order.view.lkml"
include: "/views/line_item.view.lkml"
include: "/views/tracking.view.lkml"
include: "/views/message.view.lkml"

explore: order {
  extension: required
  join: line_item {
    type: left_outer
    sql_on: ${order.id} = ${line_item.order_id} ;;
    relationship: one_to_many
  }
  join: message {
    type: inner
    sql_on: ${order.message_id} = ${message.id} ;;
    relationship: one_to_one
  }
}

explore: tracking {
  extension: required
  join: message {
    type: inner
    sql_on: ${tracking.message_id} = ${message.id} ;;
    relationship: one_to_one
  }
}
