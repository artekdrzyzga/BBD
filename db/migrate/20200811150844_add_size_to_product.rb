class AddSizeToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :width, :integer
    add_column :products, :height, :integer 
  end
end
