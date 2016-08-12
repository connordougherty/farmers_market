class CreateStorefronts < ActiveRecord::Migration
  def change
    create_table :storefronts do |t|
      t.string :name
      t.text :info
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
