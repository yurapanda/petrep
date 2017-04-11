class Breed < ApplicationRecord
  belongs_to :kind

  validates :name , :kind_id, presence: true
end
