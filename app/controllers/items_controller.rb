class ItemsController < ApplicationController

    def index
        @items = Item.all
        render json: @items
    end

    def create
        @item = Item.create(item_params)
        if @item.valid?
          render json: @item
        else
          render json: {errors: @item.errors.full_messages}
        end
    end
      
    def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
          render json: @item
        else
          render json: {errors: "Invalid update"}
        end
    end
      
    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        render json: @item
    end
      
    private
      
    def item_params
        params.permit(:img, :name, :price)
    end

end
