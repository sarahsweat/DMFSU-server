class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :photo, :goal, :created_at, :updated_at
end
