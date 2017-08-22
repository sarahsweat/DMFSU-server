class Team < ApplicationRecord
  has_many :dancers, foreign_key: :team_id, class_name: "User"
  has_many :donations_received, through: :dancers, foreign_key: :dancer_id

  validates :name, presence: true, uniqueness: true
  validates :goal, presence: true, numericality: { greater_than: 0 }

  def team_total
    d_amounts = donations_received.map{|d| d.amount}
    d_amounts.inject(0){|sum,x| sum + x }
  end

end
