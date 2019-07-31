class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :hub, required: false
  geocoded_by :address
  has_many :product_orders, through: :products
  mount_uploader :photo, PhotoUploader
  after_validation :geocode, if: :will_save_change_to_address?
end
