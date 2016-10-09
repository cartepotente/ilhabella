class AddUserIdToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :user_id, :integer
    add_index :productos, :user_id
  end
end
