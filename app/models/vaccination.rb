class Vaccination < ApplicationRecord
	has_many :done_vaccinations, dependent: :destroy
end
