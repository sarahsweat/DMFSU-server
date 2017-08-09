class User < ApplicationRecord
  belongs_to :team, optional: true
  has_many :donations_received, foreign_key: :dancer_id, class_name: "Donation"
  has_many :donations_given, foreign_key: :donor_id, class_name: "Donation"
  has_many :donors, through: :donations, source: :donor
end
