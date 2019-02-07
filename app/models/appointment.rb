class Appointment < ApplicationRecord
    belongs_to :ship
    belongs_to :port
end
