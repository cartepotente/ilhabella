class Producto < ActiveRecord::Base
belongs_to :user
	belongs_to :category
	belongs_to :marca

	validates :category, presence: true
	validates :marca, presence: true
end
