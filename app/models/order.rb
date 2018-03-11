class Order < ActiveRecord::Base
    belongs_to :user, required: true
    has_many :order_details, dependent: :destroy
end
