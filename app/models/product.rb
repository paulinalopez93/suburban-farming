class Product < ApplicationRecord
  has_many :product_orders
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :reviews, dependent: :destroy
  enum category: %i[vegetables fruits eggs wine herbs]
  monetize :price_cents
  before_save :convert_price

  validates :photo, presence: true
  validates :price_cents, presence: true
  validates :details, presence: true
  validates :name, presence: true
  validates :category, presence: true

  def marker
    return {
      lat: user.latitude,
      lng: user.longitude
    }
  end

  def convert_price
    self.price_cents = (self.price_cents * 100).to_i
  end
end
