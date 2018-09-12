class Cat < ApplicationRecord
  validates :color, inclusion: { in: %w(red green blue yellow white black grey),
    message: "not a valid color" }
  validates :sex, inclusion: { in: %w(M F),
    message: "not a valid sex" }

  has_many :cat_rental_requests, dependent: :destroy,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :CatRentalRequest

  def age
    ((Time.zone.now - self.birthdate.to_time) / 1.year.seconds).floor
  end



end
