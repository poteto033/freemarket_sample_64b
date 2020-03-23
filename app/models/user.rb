class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  has_one :credit_card
  has_many :buy_items, class_name: "Item", foreign_key: "buyer_id"
  has_many :seling_items, ->{where("buyer_id is NULL")}, class_name: "Item", foreign_key: "solder_id"
  has_many :sold_items, ->{where("buyer_id is not NULL")}, class_name: "Item",foreign_key: "solder_id"
end
