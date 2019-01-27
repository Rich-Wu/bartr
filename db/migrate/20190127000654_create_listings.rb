class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :item_name
      t.integer :quantity
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
