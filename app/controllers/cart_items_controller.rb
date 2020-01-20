class CartItemsController < ApplicationController

    def index        
        @cart_items = CartItem.all      
        render json: @cart_items
    end

              
    def create  
        @cart_item = CartItem.create(cart_item_params)    
            if @cart_item.valid?
                  render json: @cart_item
            else
              render json: {errors: @cart_item.errors.full_messages}
            end
    end
            
        
    def update
      @cart_item = CartItem.find(params[:id])
      if @cart_item.update(cart_item_params)
        render json: @cart_item
      else
        render json: {errors: "Invalid update"}
      end
    end
            
        
    def destroy
      @cart_item = User.find(cart_item_params[:id])
      @cart_item.destroy
      render json: @cart_item
    end  
        
    private

    def cart_item_params
      params.permit(:user_id, :item_id)
    end
end
