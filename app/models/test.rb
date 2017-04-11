class Test < ApplicationRecord
  belongs_to :patient
  has_many :comments , as: :commentable#for comments
  has_many :results, dependent: :destroy, inverse_of: :test
  accepts_nested_attributes_for :results, reject_if: :all_blank, allow_destroy: true
  has_many :prescriptions, dependent: :destroy, inverse_of: :test
  accepts_nested_attributes_for :prescriptions, reject_if: :all_blank, allow_destroy: true
end

