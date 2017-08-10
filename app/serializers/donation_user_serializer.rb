class DonationUserSerializer < ActiveModel::Serializer
  attributes :id, :amount, :message
end
