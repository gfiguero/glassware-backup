class Aim::Core::MapSerializer < ActiveModel::Serializer
  attributes :id, :aim_maps, :name, :top_left_x, :top_left_y, :max_zoom, :bottom_right_x, :max_resolution, :bottom_right_y, :stores_show_from_zoom, :features_radius, :range, :street, :street_number, :parent_id, :lft, :rgt, :depth, :kind, :alias, :created_at, :updated_at, :last_update, :last_change, :zoom_matrix, :adjustment_data, :map_radius, :map_latitude, :map_longitude, :time_between_notifications, :max_notifications_per_period, :notifications_time_period, :scaled_stores, :properties, :until_zoom, :real_min_zoom, :initial_zoom, :authorization_user_manual_file_name, :authorization_user_manual_content_type, :authorization_user_manual_file_size, :authorization_user_manual_updated_at, :loader_version, :tiles_version, :incident_positioning_system, :country_code, :region_code, :map_classification_id, :map_district_id, :map_orientation, :fusion_table_on_start, :time_zone, :deleted_at, :sales_room_m2, :property_type, :cost_center, :show_custom_fields
end
