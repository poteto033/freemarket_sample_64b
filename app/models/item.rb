class Item < ApplicationRecord
  has_many :
  belongs_to :category
  belongs_to :brand,foreign_key:true
  belongs_to :solder, class_name: "User"
  belongs_to :buyer, class_name: "User"
end
