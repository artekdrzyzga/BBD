class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
  
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :city
      t.string :country
      t.string :phone
      t.string :zip_code
      t.string :street

      #t.belongs_to :order, foreign_key: true

      t.timestamps
    end
  end
end
