class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :email
      t.string :phone
      t.string :city
      t.string :zip_code
      t.string :street
      t.text :desc_menu
      t.text :desc_top
      t.string :photo

      t.timestamps
    end
  end
end
