class BoardingBooking < ApplicationRecord
  belongs_to :patient
  has_many :comments , as: :commentable, inverse_of: :commentable #for comments
  has_many :notifications
end
