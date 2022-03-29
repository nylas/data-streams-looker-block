- dashboard: order_analytics
  title: Order Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Global Trends
    name: Global Trends
    model: block-gcp-admin
    explore: order_info
    type: looker_column
    fields: [line_item.total_products, order.purchase_date_month]
    filters: {}
    sorts: [order.purchase_date_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_labels:
      line_item.total_products: Total Orders
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Purchase Month: order.purchase_date_month
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Total Messages Processed by Carrier
    name: Total Messages Processed by Carrier
    model: block-gcp-admin
    explore: order_info
    type: looker_grid
    fields: [tracking.carrier_name, order.purchase_date_month, count_of_message_id]
    sorts: [tracking.carrier_name desc]
    limit: 500
    dynamic_fields: [{measure: count_of_message_id, based_on: tracking.message_id,
        expression: '', label: Count of Message ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      order.purchase_date_month: Purchase Month
      count_of_message_id: Total Messages Processed
    series_cell_visualizations:
      count_of_message_id:
        is_active: true
    series_text_format:
      tracking.carrier_name:
        align: center
      order.purchase_date_month:
        align: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Purchase Month: order.purchase_date_month
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Top Merchants
    name: Top Merchants
    model: block-gcp-admin
    explore: order_info
    type: looker_grid
    fields: [order.merchant_name, order.purchase_date_month, count_of_id]
    sorts: [count_of_id desc]
    limit: 500
    dynamic_fields: [{measure: count_of_message_id, based_on: tracking.message_id,
        expression: '', label: Count of Message ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_id, based_on: order.id, expression: '',
        label: Count of ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      order.purchase_date_month: Purchase Month
      count_of_message_id: Total Messages Processed
      count_of_id: Total Orders
    series_cell_visualizations:
      count_of_message_id:
        is_active: true
      count_of_id:
        is_active: true
    series_text_format:
      tracking.carrier_name:
        align: center
      order.purchase_date_month:
        align: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Purchase Month: order.purchase_date_month
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Order Currency Distribution
    name: Order Currency Distribution
    model: block-gcp-admin
    explore: order_info
    type: looker_pie
    fields: [order.currency, count_of_id]
    sorts: [count_of_id desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id, based_on: order.id, expression: '', label: Count
          of ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 12
    width: 12
    height: 6
  filters:
  - name: Purchase Month
    title: Purchase Month
    type: field_filter
    default_value: 3 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: block-gcp-admin
    explore: order_info
    listens_to_filters: []
    field: order.purchase_date_month
