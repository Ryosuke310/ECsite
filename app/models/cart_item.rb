class CartItem < ActiveRecord::Base
    belongs_to :cart, required: true
    belongs_to :item, required: true
end
