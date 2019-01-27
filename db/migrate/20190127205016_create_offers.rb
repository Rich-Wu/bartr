class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.integer :commodity_id
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
