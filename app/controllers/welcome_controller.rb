class WelcomeController < ApplicationController
	def index
		@sellers = Seller.all
		@storefronts = Storefront.all
	end

	def user_select
		if params[:user_type] == 'Buyer'
			redirect_to new_buyer_path
		else
			redirect_to new_seller_path
		end
	end
end
