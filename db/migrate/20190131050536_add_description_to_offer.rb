class AddDescriptionToOffer < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :description, :text
  end
end
