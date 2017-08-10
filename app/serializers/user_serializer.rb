class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :zip, :photo, :bio, :goal, :team_captain, :created_at, :updated_at, :donations_received

  belongs_to :team, optional: true
  has_many :donations_received, foreign_key: :dancer_id, serializer: DonationUserSerializer
  has_many :donations_given, foreign_key: :donor_id, serializer: DonationUserSerializer
  has_many :donors, through: :donations, source: :donor
end
