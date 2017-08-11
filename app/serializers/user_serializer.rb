class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :zip, :photo, :bio, :goal, :team_captain, :created_at, :updated_at, :donations_received
  attribute :individual_total
  
  belongs_to :team, optional: true
  has_many :donations_received, foreign_key: :dancer_id
  has_many :donations_given, foreign_key: :donor_id
  has_many :donors, through: :donations, source: :donor


end
