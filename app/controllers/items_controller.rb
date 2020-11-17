class ItemsController < ApplicationController
skip_before_action :verify_authenticity_token, only: [:buy]
before_action :set_item, only: [:buy, :edit]

    def index
        @items = Item.all
        @items = Item.paginate(:page => params[:page])
    end
    
    def new
        @item = Item.new
    end

    def create
        item = Item.new(item_params)
        item.store_id = current_user.store.id
        # item.image.attach(params[:image])
        item.save!
        redirect_to items_path
    end

    def show
        @item = Item.find(params[:id])
    end

    def edit
        
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)
        redirect_to item_path(item.id)
    end

    def destroy
        Item.destroy(params[:id])
        redirect_to items_path
    end

    def buy
        Stripe.api_key = ENV['STRIPE_API_KEY']
        session = Stripe::Checkout::Session.create({
            payment_method_types: ['card'],
            mode: 'payment',
            success_url: success_url(params[:id]),
            cancel_url: cancel_url(params[:id]),
            line_items: [{
                price_data: {
                    currency: 'aud',
                    product_data: {
                        name: @item.title
                    },
                    unit_amount: (@item.price * 100).to_i
                },
                quantity: 1
            }]
        })

        render json: session
    end

    def success
        # render plain: "Success!"
    end

    def cancel
        render plain: "The transaction was cancelled."
    end


    private

    def item_params
        params.require(:item).permit(:title, :price, :category_id, :description, :image)
    end

    def set_item
        @item = Item.find(params[:id])
    end
end
