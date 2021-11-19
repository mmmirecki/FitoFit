class Activity < ApplicationRecord
    has_one :start, dependent: :destroy
    has_one :destination, dependent: :destroy
end
 