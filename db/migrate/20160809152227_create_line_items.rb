class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :buyer_id
      t.integer :product_id
      t.integer :line_item_total

      t.timestamps null: false
    end
  end
end
