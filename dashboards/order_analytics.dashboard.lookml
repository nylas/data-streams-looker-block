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
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: line_item.total_products,
            id: line_item.total_products, name: Total Orders}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: 12px
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
    height: 7
  - title: Top Merchants
    name: Top Merchants
    model: block-gcp-admin
    explore: order_info
    type: looker_grid
    fields: [order.merchant_name, order.purchase_date_month, count_of_id]
    pivots: [order.purchase_date_month]
    fill_fields: [order.purchase_date_month]
    filters:
      order.merchant_name: "-EMPTY"
    sorts: [order.purchase_date_month desc, count_of_id desc 0]
    dynamic_fields: [{measure: count_of_message_id, based_on: tracking.message_id,
        expression: '', label: Count of Message ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_id, based_on: order.id, expression: '',
        label: Count of ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      order.purchase_date_month: Purchase Month
      count_of_message_id: Total Messages Processed
      count_of_id: Total Orders
    series_column_widths:
      order.merchant_name: 250
      order.purchase_date_month: 200
    series_cell_visualizations:
      count_of_message_id:
        is_active: true
      count_of_id:
        is_active: true
        palette:
          palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      tracking.carrier_name:
        align: center
      order.purchase_date_month:
        align: left
      order.merchant_name:
        align: left
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '25'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    row: 14
    col: 0
    width: 24
    height: 7
  - title: Order Currency Distribution
    name: Order Currency Distribution
    model: block-gcp-admin
    explore: order_info
    type: looker_pie
    fields: [order.currency, count_of_id]
    filters:
      order.order_total: ">0"
    sorts: [count_of_id desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id, based_on: order.id, expression: '', label: Count
          of ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels:
      GBP: GBP (£)
      USD: USD ($)
      CAD: CAD (C$)
      EUR: EUR (€)
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
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      ***
      Powered By <img src="https://www.nylas.com/wp-content/themes/nylas/assets/images/logos/nylas_logo_black.svg" height="20">
    row: 21
    col: 0
    width: 24
    height: 2
  - title: Average Order Total By Currency By Merchant
    name: Average Order Total By Currency By Merchant
    model: block-gcp-admin
    explore: order_info
    type: looker_grid
    fields: [order.currency, order.merchant_name, order.sum_order_total]
    pivots: [order.currency]
    filters:
      order.purchase_date_month: 3 months
      order.order_total: ">0"
      order.merchant_name: "-EMPTY"
    sorts: [order.currency, order.sum_order_total desc 0]
    limit: 500
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 7
    col: 0
    width: 12
    height: 7
  - title: Total Messages Processed by Carrier
    name: Total Messages Processed by Carrier
    model: block-gcp-admin
    explore: order_info
    type: looker_column
    fields: [tracking.carrier_name, order.purchase_date_month, count_of_message_id]
    pivots: [tracking.carrier_name]
    fill_fields: [order.purchase_date_month]
    filters:
      order.purchase_date_month: 3 months
      tracking.carrier_name: "-NULL"
    sorts: [count_of_message_id desc 0, tracking.carrier_name]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: count_of_message_id, based_on: tracking.message_id,
        expression: '', label: Count of Message ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Purchase Month
    series_types: {}
    series_labels:
      order.purchase_date_month: Purchase Month
      count_of_message_id: Total Messages Processed
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      order.purchase_date_month: 200
      tracking.carrier_name: 250
    series_cell_visualizations:
      count_of_message_id:
        is_active: true
        palette:
          palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      tracking.carrier_name:
        align: left
      order.purchase_date_month:
        align: left
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 7
    col: 12
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
    field: order.purchase_date_month
