class Category < ActiveRecord::Base

has_many :productos
has_many :types

end
