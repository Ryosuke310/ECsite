class OrderDetail < ActiveRecord::Base
    belongs_to :order, required: true
    belongs_to :item, required: true
end
