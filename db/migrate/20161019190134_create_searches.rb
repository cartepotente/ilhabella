class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keyword
      t.integer :category
      t.integer :marca
      t.integer :subcategory

      t.timestamps null: false
    end
  end
end
