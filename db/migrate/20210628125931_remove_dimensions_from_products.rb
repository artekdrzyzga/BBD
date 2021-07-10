class RemoveDimensionsFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :dimensions, :integer
    add_column :products, :dimensions, :string
  end
end
