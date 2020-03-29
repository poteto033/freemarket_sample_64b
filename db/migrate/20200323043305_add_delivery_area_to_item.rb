class AddDeliveryAreaToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :delivery_area, :integer
  end
end
