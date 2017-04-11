class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :breed
  belongs_to :gender
  has_many :done_vaccinations, inverse_of: :patient

  has_many :tests, dependent: :destroy
  has_many :weights, dependent: :destroy


  accepts_nested_attributes_for :done_vaccinations, reject_if: :all_blank, allow_destroy: true
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/	

  validates :user_id, :breed_id, :gender_id, :birth_date , presence: true
end
