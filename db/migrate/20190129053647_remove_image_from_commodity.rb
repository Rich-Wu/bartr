class RemoveImageFromCommodity < ActiveRecord::Migration[5.2]
  def change
    remove_column :commodities, :image, :string
  end
end
