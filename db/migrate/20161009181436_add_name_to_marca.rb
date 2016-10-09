class AddNameToMarca < ActiveRecord::Migration
  def change
    add_column :marcas, :name, :string
  end
end
