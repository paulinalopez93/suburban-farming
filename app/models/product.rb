class Product < ApplicationRecord
  has_many :product_orders
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :reviews, dependent: :destroy
  enum category: %i[vegetables fruits eggs wine herbs]
  monetize :price_cents

  def marker
    return {
      lat: user.latitude,
      lng: user.longitude
    }
  end
end
