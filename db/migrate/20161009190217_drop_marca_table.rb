class DropMarcaTable < ActiveRecord::Migration
  def change
  	drop_table :marcas
  end
  def down
  	raise ActiveRecord::IrreversibleMigration
   end
end
