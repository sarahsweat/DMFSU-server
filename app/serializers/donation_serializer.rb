class DonationSerializer < ActiveModel::Serializer
  attributes :id, :amount, :message, :created_at, :updated_at
  
  belongs_to :donor, class_name: "User", foreign_key: "donor_id"
  belongs_to :dancer, class_name: "User", foreign_key: "dancer_id"
end
