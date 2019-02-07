class Worker < ApplicationRecord
    belongs_to :company
    belongs_to :port
end
