class AddTypeIdToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :type_id, :integer
  end
end
