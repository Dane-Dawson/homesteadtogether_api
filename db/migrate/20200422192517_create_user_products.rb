class CreateUserProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_products do |t|
      t.text :img_src
      t.text :description
      t.text :tags
      t.string :product_type
      t.boolean :active
      t.integer :karma_value
      t.boolean :flagged
      t.text :flagged_message
      t.integer :user_id
      t.integer :product_id
      t.integer :partnership_id

      t.timestamps
    end
  end
end
