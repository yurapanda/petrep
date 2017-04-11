class Appointment < ApplicationRecord
  belongs_to :patient
  has_many :comments , as: :commentable , inverse_of: :commentable #for comments
  has_many :avail_services, inverse_of: :appointment
  accepts_nested_attributes_for :avail_services, reject_if: :all_blank, allow_destroy: true
end
