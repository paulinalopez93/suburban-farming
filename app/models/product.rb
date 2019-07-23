class Product < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  enum category: %i[vegetables fruits eggs wine herbs]
end
