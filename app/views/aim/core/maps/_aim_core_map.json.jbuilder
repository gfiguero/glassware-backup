json.extract!(aim_core_map, :id, :name, :top_left_x, :top_left_y, :max_zoom, :bottom_right_x, :max_resolution, :bottom_right_y,
              :stores_show_from_zoom, :features_radius, :range, :street, :street_number, :parent_id, :lft, :rgt, :depth, :kind, :last_update, :last_change, :zoom_matrix, :adjustment_data, :command_radius, :command_latitude, :command_longitude, :time_between_notifications, :max_notifications_per_period, :notifications_time_period, :scaled_stores, :properties, :until_zoom, :real_min_zoom, :initial_zoom, :authorization_user_manual_file_name, :authorization_user_manual_content_type, :authorization_user_manual_file_size, :authorization_user_manual_updated_at, :loader_version, :tiles_version, :incident_positioning_system, :country_code, :region_code, :command_classification_id, :command_district_id, :command_orientation, :fusion_table_on_start, :time_zone, :deleted_at, :sales_room_m2, :property_type, :cost_center, :show_custom_fields, :created_at, :updated_at)
json.url(aim_core_map_url(aim_core_map, format: :json))
