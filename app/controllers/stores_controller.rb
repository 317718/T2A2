class StoresController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :authenticate_user!, except: [:index]
    
    def index
        @stores = Store.all
    end

    def new
        @store = Store.new
    end

    def create
        store = Store.new(store_params)
        store.user_id = current_user.id
        store.save
        redirect_to store_path(store.id)
    end

    def show
        @store = Store.find(params[:id])
        @items = @store.items
        @items = Item.paginate(:page => params[:page])
    end
     
    def edit
        @store = Store.find(params[:id])
    end

    def update
        store = Store.find(params[:id])
        store.update(name: params[:store][:name])
        store.save
        redirect_to store_path(store.id)
    end

    def destroy
        Store.destroy(params[:id])
        redirect_to stores_path
    end

    private

    def store_params
        params.require(:store).permit(:name)
    end
end
