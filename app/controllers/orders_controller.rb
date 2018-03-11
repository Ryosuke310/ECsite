class OrdersController < ApplicationController
    before_action :ensure_correct_user, {only: [:show, :index]}

    def index
        @orders = Order.where(user_id: params[:user_id])
    end
    
    def show
        @order = Order.find_by(id: params[:id], user_id: params[:user_id])
    end
    
    def new_from_cart
        @cart = Cart.find_by(user_id: current_user.id)
        @cart_items = @cart.cart_items
        render("orders/new")
    end

    def new_from_item
        @item = Item.find_by(id: params[:item_id])
        @cart = Cart.find_by(user_id: current_user.id)
        @cart_items = @cart.cart_items
        if @cart_items.find_by(item_id: params[:item_id]).blank?
            @new_item = CartItem.new(cart_id: @cart.id, item_id: params[:item_id], quantity: 1)
            @new_item.save
        end
        @cart_items = @cart.cart_items
        render("orders/new")
    end
    
    def new 
    end
    
    def create
        @cart = Cart.find_by(user_id: current_user.id)
        @cart_items = @cart.cart_items
        @order = Order.new(user_id: current_user.id)
        @order.save

        @cart_items.each do |cart_item| 
            order_detail = OrderDetail.new(order_id: @order.id, item_id: cart_item.item_id, quantity: cart_item.quantity)
            order_detail.save
        end
        @cart_items.destroy_all
        flash[:notice] = "注文が確定しました。商品の到着を楽しみにお待ち下さい。"
        redirect_to("/")
    end
    
    def ensure_correct_user
        if current_user.id != params[:user_id].to_i
          flash[:notice] = "権限がありません。"
          redirect_to("/")
        end
    end
end
