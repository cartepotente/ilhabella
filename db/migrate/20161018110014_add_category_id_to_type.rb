class AddCategoryIdToType < ActiveRecord::Migration
  def change
    add_column :types, :category_id, :integer
  end
end
