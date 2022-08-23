class Car < ApplicationRecord
  belongs_to :owner, class_name: "User"

  has_many :rentals
  has_many :renters, through: :rentals

  has_one_attached :photo
end
