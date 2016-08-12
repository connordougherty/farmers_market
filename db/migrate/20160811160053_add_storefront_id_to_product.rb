class AddStorefrontIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :storefront_id, :integer
  end
end
