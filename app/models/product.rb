class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :picture

  def thumb
   return self.picture.variant(resize: '640x480!')
  end


end
