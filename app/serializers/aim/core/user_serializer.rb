module Aim
  module Core
    class UserSerializer < ActiveModel::Serializer
      attributes :id, :serial_number, :name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at,
                 :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :role, :created_at, :updated_at, :token, :deleted_at, :map_id, :type, :rut, :turn, :address, :gender, :last_names, :imei, :username, :position, :zone_id, :state, :state_updated_at, :phone_number, :external_id, :password_changed_at, :last_activity_at, :expired_at, :locked_at, :failed_attempts, :unlock_token, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :provider, :initials, :tracking_report, :slug, :current_loggable_type, :deactivate, :deactivation_date, :duration_range_id, :temporary_password
    end
  end
end
