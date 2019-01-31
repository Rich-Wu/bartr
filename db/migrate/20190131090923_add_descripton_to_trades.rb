class AddDescriptonToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :description, :text
  end
end
