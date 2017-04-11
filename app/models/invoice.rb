class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  has_many :comments , as: :commentable #for comments
  has_many :services_to_dos, inverse_of: :invoice
  accepts_nested_attributes_for :services_to_dos, reject_if: :all_blank, allow_destroy: true
  
end
