class AddNullToItems < ActiveRecord::Migration[5.0]
  def change
    change_column_null :items, :delivery_area, false
  end
end
