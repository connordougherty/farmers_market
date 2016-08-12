class RemoveBuyerIdFromLineItem < ActiveRecord::Migration
  def change
    remove_column :line_items, :buyer_id, :integer
  end
end
