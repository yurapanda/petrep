class AvailService < ApplicationRecord
  belongs_to :patient
  belongs_to :service
  belongs_to :appointment

  validates :patient_id, presence: true
end
