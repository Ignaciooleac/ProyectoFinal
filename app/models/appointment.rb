class Appointment < ApplicationRecord
    has_one :operation
    belongs_to :ship
    belongs_to :port
end
