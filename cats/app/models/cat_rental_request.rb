class CatRentalRequest < ApplicationRecord
  validate :overlapping_requests

  validates :cat_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true, inclusion: { in: %w(PENDING APPROVED DENIED),
    message: "not a valid status" }

  belongs_to :cat,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :Cat


  def overlapping_requests
    CatRentalRequest.where(':cat_id = ?', self.id)
  end


end
