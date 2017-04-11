class ServicesToDo < ApplicationRecord
  belongs_to :service
  belongs_to :invoice
end
