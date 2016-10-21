class Search < ActiveRecord::Base

	def search_producto
		productos = Producto.all

		productos = productos.where(["nombre LIKE ?","%#{keyword}%" ]) if keyword.present?
		productos = productos.where(["category_id = ?", category]) if category.present?
		productos = productos.where(["type_id = ?", subcategory]) if subcategory.present?
		productos = productos.where(["marca_id = ?", marca]) if marca.present?
	
		return productos

	end



end
