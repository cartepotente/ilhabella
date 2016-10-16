class AddAttachmentImageToProductos < ActiveRecord::Migration
  def self.up
    change_table :productos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :productos, :image
  end
end
