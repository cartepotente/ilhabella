class ChangeColumnaProductos < ActiveRecord::Migration
  def up
    remove_column :productos, :categoria_id
  end

  def down
    add_column :productos, :category_id, :integer
  end
end
