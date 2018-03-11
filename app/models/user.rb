class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  
  has_many :orders, dependent: :destroy
  has_one :cart, dependent: :destroy
end
