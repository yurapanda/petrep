class DoneVaccination < ApplicationRecord
  belongs_to :vaccination
  belongs_to :patient
end
