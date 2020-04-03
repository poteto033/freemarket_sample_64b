class Item < ApplicationRecord
  belongs_to :category
  belongs_to :brand,optional: true
  belongs_to :solder, class_name: "User",optional: true
  belongs_to :buyer, class_name: "User",optional: true
  has_many :images
  
  accepts_nested_attributes_for :images, allow_destroy: true
 
  validates :name, :text, :item_status, :price, :delivery_charge, :delivery_area, :delivery_days, :category, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :Prefecture 
  belongs_to_active_hash :Deliverydays
  belongs_to_active_hash :Deliverycharge
  belongs_to_active_hash :Itemstatus
  
end
