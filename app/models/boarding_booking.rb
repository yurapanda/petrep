class BoardingBooking < ApplicationRecord
  belongs_to :patient
  has_many :comments , as: :commentable, inverse_of: :commentable #for comments


  validates :start_date, :end_date, presence: true
end
