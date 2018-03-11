class Item < ActiveRecord::Base
     belongs_to :partner, required: true
     has_many :order_details
     validates :name, presence: true
     validates :image_name, presence: true
     validates :eyecatch_image_name, presence: true
end
