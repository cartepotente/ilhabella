class Producto < ActiveRecord::Base

	belongs_to :category
	belongs_to :marca
end
