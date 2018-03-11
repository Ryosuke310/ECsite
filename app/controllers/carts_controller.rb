class CartsController < ApplicationController
    before_action :authenticate_user
    
    def show
        @cart = Cart.find_by(user_id: current_user.id)
        if @cart.blank?
            @cart = Cart.new(user_id: current_user.id)
            @cart.save
        end
        @cart_items = @cart.cart_items
    end
    
    def add_item
        @cart = Cart.find_by(user_id: current_user.id)
        @cart_item = CartItem.find_by(cart_id: @cart.id, item_id: params[:item_id])
        
        if @cart_item.blank?
            @cart_item = CartItem.new(cart_id: @cart.id, item_id: params[:item_id])
        end
        
        @cart_item.quantity += 1

        if @cart_item.save
            flash[:notice] = "カートに追加されました。"
        else
            flash[:notice] = "カートに追加できませんでした。時間を置いてもう一度お試しください。"
        end
        redirect_to("/items/#{params[:item_id]}")
    end
    
    def remove_item
        @cart = Cart.find_by(user_id: current_user.id)
        @cart_item = CartItem.find_by(cart_id: @cart.id, item_id: params[:item_id])
        
        if @cart_item.destroy
            flash[:notice] = "カートから削除されました。"
        else    
            flash[:notice] = "カートから削除できませんでした。"
        end
        redirect_to("/carts/show")
    end
end
