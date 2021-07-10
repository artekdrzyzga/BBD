class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :picture

  validates :name, presence: true
  validates :code, presence: true
  validates :price, presence: true

  def thumb
   return self.picture.variant(resize: '640x480!')
  end


end
