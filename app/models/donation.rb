class Donation < ApplicationRecord
  belongs_to :donor, class_name: "User", foreign_key: "donor_id"
  belongs_to :dancer, class_name: "User", foreign_key: "dancer_id"
  
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :donor_id, :dancer_id, presence: true

  def date
    created_at.to_date.to_s
  end

end
