class Product < ApplicationRecord
  belongs_to :category
  belongs_to :subcategory
  
  


  has_one_attached :picture

  validates :name, presence: true
  validates :code, presence: true, uniqueness: true
  validates :price, presence: true


  def thumb
   return self.picture.variant(resize: '500x500>', gravity: 'center')
  end


end
