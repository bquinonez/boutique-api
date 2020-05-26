class CartItemsController < ApplicationController
    
    ## when you do add to cart we need to create an cartitem for the cart
    ## so we send a post request to the create action
    def index
        @cart_items = CartItem.all
        render json: @cart_items
    end
    
    def create
        @cart_item = CartItem.find_by(cart_id: params["cart_id"], item_id: params["item_id"])
        if @cart_item.nil?
            @cart_item = CartItem.create(cart_item_params)
        else
            quantity = @cart_item[:quantity] + params["quantity"]
            @cart_item.update(quantity: quantity)
        end

        render json: @cart_item
    end
    # {item: @cart_item.item.to_h.merge({:cart_item_id => @cart_item.id, :quantity => same_items_in_cart.count}), cartitem: @cart_item}
    ## in the frontend when I send Post request here,
    ## cart_item gets created and the data that is being sent to the front end
    ## should include the cart_item_id wuth items. Hence we merge item with cart_item_id
    
    def destroy
        @cart_item = CartItem.find_by(cart_id: logged_user.cart.id, item_id: params[:id])
        @cart_item.destroy
        render json: {message: "there is no item in the cart", cart_item: @cart_item}
    end
    
    def deleteSingleItem
        
        @cart_item = CartItem.find(params[:id])
        quantity = @cart_item["quantity"] - 1
        if quantity > 0
            @cart_item.update(quantity: quantity)
            render json: @cart_item
        else
            @cart_item.destroy
            render json: {cart_item_deleted: true, message: "there is no item in the cart", cart_item: @cart_item}
        end
    end
    
    private
    
    def cart_item_params
        params.permit(:cart_id, :item_id, :quantity)
    end

end
