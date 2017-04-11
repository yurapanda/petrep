class Service < ApplicationRecord
	has_many :services_to_dos
	has_many :avail_services
end
