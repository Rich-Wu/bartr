class RemoveImageFromTrade < ActiveRecord::Migration[5.2]
  def change
    remove_column :trades, :image, :string
  end
end
