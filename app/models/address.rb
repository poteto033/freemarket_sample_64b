class Address < ApplicationRecord
  belongs_to :user

  validates :postcode,          presence: true, format: { with: /^\d{7}$/,multiline: true} 
  validates :prefecture,        presence: true
  validates :city,              presence: true
  validates :block,             presence: true
end
