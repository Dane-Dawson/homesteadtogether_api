class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.text :avatar_src
      t.integer :zip_code
      t.string :farm_name
      t.string :street_address
      t.string :city
      t.integer :karma
      t.integer :karmic_level
      t.string :name

      t.timestamps
    end
  end
end
