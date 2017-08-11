class Team < ApplicationRecord
  has_many :dancers, foreign_key: :team_id, class_name: "User"
  has_many :donations_received, through: :dancers, foreign_key: :dancer_id

  def team_total
    d_amounts = donations_received.map{|d| d.amount}
    d_amounts.inject(0){|sum,x| sum + x }
  end
  
end
