class Category < ApplicationRecord
  has_many :items,through: :item_categories
  has_ancestry
end
