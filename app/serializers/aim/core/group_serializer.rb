class Aim::Core::GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at, :kind
end
