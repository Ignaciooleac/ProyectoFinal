class Ship < ApplicationRecord
    belongs_to :client
    has_many :appointments
    has_many :ports, :through => :appointments
end
