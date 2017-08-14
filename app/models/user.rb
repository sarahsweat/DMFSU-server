class User < ApplicationRecord
  belongs_to :team, optional: true
  has_many :donations_received, foreign_key: :dancer_id, class_name: "Donation"
  has_many :donations_given, foreign_key: :donor_id, class_name: "Donation"
  has_many :donors, through: :donations_received, source: :donor

  def individual_total
    d_amounts = donations_received.map{|d| d.amount}
    d_amounts.inject(0){|sum,x| sum + x }
  end

  def self.three
    User.joins(:donations_received).group(:dancer_id).sum("amount").values.select{|a| a>50}.length
  end

  def self.seven_five
    User.joins(:donations_received).group(:dancer_id).sum("amount").values.select{|a| a>750}.length
  end

  def self.thousand
    User.joins(:donations_received).group(:dancer_id).sum("amount").values.select{|a| a>1000}.length
  end

  def self.fifteen
    User.joins(:donations_received).group(:dancer_id).sum("amount").values.select{|a| a>1500}.length
  end

  def self.two
    User.joins(:donations_received).group(:dancer_id).sum("amount").values.select{|a| a>2000}.length
  end

  def self.two_two
    User.joins(:donations_received).group(:dancer_id).sum("amount").values.select{|a| a>2200}.length
  end

  def self.five
    User.joins(:donations_received).group(:dancer_id).sum("amount").values.select{|a| a>500}.length
  end



end
