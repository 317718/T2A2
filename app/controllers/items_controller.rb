class ItemsController < ApplicationController
    def index
        
    end
    def new
        @item = Item.new
    end

    def create
        item = Item.new(item_params)
        item.user_id = current_user.id
        item.save
        redirect_to store_path(store.id)
    end

    private

    def item_params
        params.require(:item).permit(:title, :price, :category_id, :description)
    end
end
