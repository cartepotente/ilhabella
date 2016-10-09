class AddMarcaIdToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :marca_id, :integer
  end
end
