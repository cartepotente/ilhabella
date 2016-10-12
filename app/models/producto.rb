class Producto < ActiveRecord::Base
	before_save :capitalize_nombre

	belongs_to :user
	belongs_to :category
	belongs_to :marca
	validates :nombre, presence: true
	validates :precio, numericality: true
	validates :descripcion, presence: true
	validates :category, presence: true
	validates :marca, presence: true

	

	def capitalize_nombre
	  self.nombre = self.nombre.split.collect(&:capitalize).join(' ') if self.nombre && !self.nombre.blank?
	end
	
end
