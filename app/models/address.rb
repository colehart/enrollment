# app/models/address
class Address < ApplicationRecord
  validates_presence_of :description,
                        :street,
                        :city,
                        :state,
                        :zip_code
end
