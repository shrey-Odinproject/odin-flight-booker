class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, dependent: :destroy

  accepts_nested_attributes_for :passengers, allow_destroy: true, reject_if: proc {|attr| attr['name'].blank? || attr['email'].blank?}
  validates :passengers, presence: true
  # need to validate passenger model and show error
end
