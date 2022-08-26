class Car < ApplicationRecord
  belongs_to :owner, class_name: "User"

  has_many :rentals
  has_many :renters, through: :rentals

  has_one_attached :photo

  BRAND_CATEGORY = %w[Tesla Kia Volkswagen Hyundai Chevrolet Nissan Hyundai MINI
                      Mazda Toyota Polestar BMW Mitsubishi Peugeot Renaut Bugatti ].freeze

  validates :brand, inclusion: { in: BRAND_CATEGORY }
  validates :description, length: { minimum: 10 }
  validates :autonomy, :description, :brand, :model, :daily_price, presence: true
end
