class Producto < ActiveRecord::Base

  has_attached_file :image, styles: { medium: "600x480#", small: "350x180#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	#before_save :capitalize_nombre
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

	
	#convertir la primera letra de cada palabra en mayuscula
	#def capitalize_nombre
	 # self.nombre = self.nombre.split.collect(&:capitalize).join(' ') if self.nombre && !self.nombre.blank?
	#end

	def search_producto
		productos = Producto.all

		productos = productos.where(["nombre ILIKE ?","%#{nombre}%" ]) if nombre.present?
		productos = productos.where(["category_id = ?", category_id]) if category_id.present?
		productos = productos.where(["type_id = ?", type_id]) if type_id.present?
		productos = productos.where(["marca_id =m?", marca_id]) if marca_id.present?
	
		return productos

	end

	def self.search(search)     
 	puts 'Buscar ' + search.to_s     
 	if search       
 		find(:first, :conditions =>  ['name ILIKE ?', "%#{search}%"])#ILIKE busqueda en mayusculas y minusculas solo en pg
    else
      self.first
    end
  end



end
