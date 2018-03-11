class Cart < ActiveRecord::Base
    belongs_to :user, required: true
    has_many :cart_items, dependent: :destroy
end
