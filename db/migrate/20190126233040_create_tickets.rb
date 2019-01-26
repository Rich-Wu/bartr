class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :quantity
      t.string :unit
      t.string :item

      t.timestamps
    end
  end
end
