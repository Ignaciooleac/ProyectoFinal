class Port < ApplicationRecord
    belongs_to :company
    has_many :appointments
    has_many :operations
    has_many :workers
    has_many :ships, :through => :appointments
end
