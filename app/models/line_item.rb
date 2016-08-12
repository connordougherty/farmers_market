class LineItem < ActiveRecord::Base
	belongs_to :buyer
	belongs_to :seller
	belongs_to :user
	belongs_to :product
end
