class Team < ApplicationRecord
  has_many :dancers, foreign_key: :team_id, class_name: "User"
end
