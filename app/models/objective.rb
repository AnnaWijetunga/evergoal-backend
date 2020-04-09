class Objective < ApplicationRecord
    belongs_to :goal
    validates :description, presence: true
end
