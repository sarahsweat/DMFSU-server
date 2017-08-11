class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :photo, :goal, :created_at, :updated_at
  has_many :dancers, foreign_key: :team_id, class_name: "User"
  has_many :donations_received, through: :dancers, foreign_key: :dancer_id
  attribute :team_total
end
