class Activity < ApplicationRecord
  validates :first_address, presence: true
  validates :second_address, presence: true
  validates :first_address, format: { with: /(.*,){2}.*/ }
  has_one :start, dependent: :destroy
  has_one :destination, dependent: :destroy
end
