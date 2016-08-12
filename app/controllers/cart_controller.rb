class CartController < ApplicationController
	def add_to_cart
  	line_item = LineItem.new
  	line_item.user_id = params[:user_id]
  	line_item.product_id = params[:product_id]
  	line_item.quantity = params[:quantity]
  	line_item.save

  	line_item.line_item_total = line_item.product.cost * line_item.quantity
  	line_item.save

  	redirect_to root_path
  end

  def view_cart
  	@line_items = LineItem.all

  	sum = 0

    current_or_guest_user.line_items.each do |line_item|
      sum += line_item.line_item_total
    end

    @grand_total = sum
  end

  
end
