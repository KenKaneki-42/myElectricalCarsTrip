class Rental < ApplicationRecord
  belongs_to :car
  belongs_to :renter, class_name: "User"

  validates :status, inclusion: { in: %w[pending accepted declined] }
end
