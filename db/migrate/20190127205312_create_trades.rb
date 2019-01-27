class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.integer :user_id
      t.integer :offer_id
      t.integer :quantity
      t.string :unit
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
