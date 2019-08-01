class Hub < ApplicationRecord
  geocoded_by :address
  has_many :users
  after_validation :geocode, if: :will_save_change_to_address?
end
