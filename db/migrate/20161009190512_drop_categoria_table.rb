class DropCategoriaTable < ActiveRecord::Migration
  def change
  	drop_table :categoria
  end
  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
