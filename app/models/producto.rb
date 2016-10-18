class Producto < ActiveRecord::Base

  has_attached_file :image, styles: { medium: "600x480#", small: "350x180#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	before_save :capitalize_nombre
	belongs_to :user
	belongs_to :category
	belongs_to :marca
	belongs_to :type
	validates :nombre, presence: true
	validates :precio, numericality: true
	validates :descripcion, presence: true
	validates :category, presence: true
	validates :marca, presence: true
	validates :image, presence: true

	

	def capitalize_nombre
	  self.nombre = self.nombre.split.collect(&:capitalize).join(' ') if self.nombre && !self.nombre.blank?
	end
	
end
