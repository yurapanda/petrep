class Comment < ApplicationRecord
	#has_many associations to invoice|appointment|boarding_booking|tests
  belongs_to :user
  belongs_to :commentable, polymorphic: true, optional: false 
  validates :body, presence: true
end
