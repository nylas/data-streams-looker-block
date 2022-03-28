include: "/views/order.view.lkml"
include: "/views/line_item.view.lkml"
include: "/views/tracking.view.lkml"

explore: order {
  extension: required
  join: line_item {
    type: left_outer
    sql_on: ${order.id} = ${line_item.order_id} ;;
    relationship: many_to_one
  }

  join: tracking {
    type: left_outer
    sql_on: ${order.id} = ${tracking.order_id} ;;
    relationship: many_to_one
  }
}
