class AddStatusToTrade < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :status, :integer
  end
end
