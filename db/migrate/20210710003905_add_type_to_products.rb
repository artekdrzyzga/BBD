class AddTypeToProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :dimensions, :string
    remove_column :products, :status, :integer

    add_column :products, :width, :integer
    add_column :products, :height, :integer
    add_column :products, :status, :boolean
  end
end
