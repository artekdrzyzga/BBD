class RemoveWidthFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :width, :integer
    remove_column :products, :height, :integer
    add_column :products, :dimensions, :integer
  end
end
