class Category < ApplicationRecord
    has_many :products
    has_many :subcategorys
    #belongs_to :subcategory
    #belongs_to :product

end
