- dashboard: order_analytics
  title: Order Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Total Emails Processed by  Carrier
    name: Total Emails Processed by  Carrier
    model: block-gcp-admin
    explore: order_info
    type: looker_grid
    fields: [tracking.carrier_name, count_of_message_id, order.purchase_month]
    sorts: [count_of_message_id desc]
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
    table_theme: editable
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
      count_of_message_id: Tracking Emails Processed
    series_cell_visualizations:
      count_of_message_id:
        is_active: false
    series_text_format:
      count_of_message_id:
        align: center
      tracking.carrier_name:
        align: center
      order.purchase_month:
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
    hidden_fields:
    listen:
      Purchase Month: order.purchase_month
    row: 0
    col: 0
    width: 12
    height: 4
  - title: Top Merchants
    name: Top Merchants
    model: block-gcp-admin
    explore: order_info
    type: looker_grid
    fields: [order.merchant_name, total_orders, order.purchase_month]
    sorts: [total_orders desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Total Orders, based_on: order.id,
        _kind_hint: measure, measure: total_orders, type: count_distinct, _type_hint: count_distinct},
      {category: table_calculation, expression: 'rank(${count_of_id}, ${count_of_id})',
        label: Rank, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: rank, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
    series_cell_visualizations:
      count_of_id:
        is_active: false
    series_text_format:
      rank:
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
    hidden_fields: [count_of_id, rank]
    listen: {}
    row: 0
    col: 13
    width: 11
    height: 4
  - title: Global Trends
    name: Global Trends
    model: block-gcp-admin
    explore: order_info
    type: looker_column
    fields: [order.purchase_month, line_item.total_products]
    fill_fields: [order.purchase_month]
    sorts: [order.purchase_month desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id, based_on: order.id, expression: '', label: Count
          of ID, type: count_distinct, _kind_hint: measure, _type_hint: number}, {
        category: table_calculation, expression: 'rank(${count_of_id}, ${count_of_id})',
        label: Rank, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: rank, _type_hint: number, is_disabled: true}]
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: ''
    hide_legend: false
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
    series_cell_visualizations:
      count_of_id:
        is_active: false
    series_text_format:
      rank:
        align: center
    defaults_version: 1
    hidden_fields: []
    listen:
      Purchase Month: order.purchase_month
    row: 4
    col: 0
    width: 12
    height: 7
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
    field: order.purchase_month
