class AddDefaultToitems < ActiveRecord::Migration[5.0]
  def change
    change_column_default :items, :delivery_area, "0"
  end
end
