class Partner < ActiveRecord::Base
    validates :name, presence: true
    validates :representative, presence: true
    validates :email, presence: true
    validates :postal_code, presence: true
    validates :address, presence: true
    has_many :items, dependent: :destroy
end
