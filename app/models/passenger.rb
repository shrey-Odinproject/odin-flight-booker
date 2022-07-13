class Passenger < ApplicationRecord
  belongs_to :booking
  delegate :flight, to: :booking # belongs_to flight through booking is replaced by delegate
end
