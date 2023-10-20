class MapsController < ApplicationController
  include Pagy::Backend

  before_action :set_map, only: %i[ show edit update destroy ]
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /maps
  def index
    @pagy, @maps = pagy(Map.all)

    respond_to do |format|
      format.html
      format.json
      format.turbo_stream
    end
  end

  # GET /maps/1
  def show
  end

  # GET /maps/new
  def new
    @map = Map.new
  end

  # GET /maps/1/edit
  def edit
  end

  # POST /maps
  def create
    @map = Map.new(map_params)

    if @map.save
      redirect_to @map, notice: "Map was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /maps/1
  def update
    if @map.update(map_params)
      redirect_to @map, notice: "Map was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /maps/1
  def destroy
    @map.destroy!
    redirect_to maps_url, notice: "Map was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map
      @map = Map.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def map_params
      params.require(:map).permit(:name, :top_left_x, :top_left_y, :max_zoom, :bottom_right_x, :max_resolution, :bottom_right_y, :stores_show_from_zoom, :features_radius, :range, :street, :street_number, :parent_id, :lft, :rgt, :depth, :kind, :alias, :created_at, :updated_at, :last_update, :last_change, :zoom_matrix, :adjustment_data, :map_radius, :map_latitude, :map_longitude, :time_between_notifications, :max_notifications_per_period, :notifications_time_period, :scaled_stores, :properties, :until_zoom, :real_min_zoom, :initial_zoom, :authorization_user_manual_file_name, :authorization_user_manual_content_type, :authorization_user_manual_file_size, :authorization_user_manual_updated_at, :loader_version, :tiles_version, :incident_positioning_system, :country_code, :region_code, :map_classification_id, :map_district_id, :map_orientation, :fusion_table_on_start, :time_zone, :deleted_at, :sales_room_m2, :property_type, :cost_center, :show_custom_fields)
    end
end
