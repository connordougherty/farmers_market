class Product < ActiveRecord::Base
	belongs_to :seller
	has_many :line_items
	belongs_to :storefront
end
