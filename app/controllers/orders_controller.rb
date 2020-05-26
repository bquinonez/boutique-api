class OrdersController < ApplicationController
    
    def index
        @orders = Order.all
        render json: @orders
    end
    
    def create
        # debugger
        ## Items
        user = User.find(params[:order][:user_id])
        items = user.cart.items
        ## Create Order
        @order = Order.create(user_id: user.id, address: params[:address]);
        ## Associate the Items with the Order
        items.each do |item|
            OrderItem.create(order_id: @order.id, item_id: item.id)
        end
        ## Clear the cart
        # byebug
        user.cart.cart_items.destroy_all
        render json: @order, include: ["user.cart.cart_items"]
    end

end
