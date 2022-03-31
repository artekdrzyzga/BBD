class Subcategory < ApplicationRecord
 #has_many :products, :through => :categorys
 belongs_to :category
 has_many :products



 validates :name, presence: true, uniqueness: true
end
