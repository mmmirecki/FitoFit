class Trip < ApplicationRecord
    geocoded_by :address
    after_validation :geocode

    def address
        [street, city, country].compact.join(', ')
    end
end
