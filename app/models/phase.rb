class Phase < ApplicationRecord
    belongs_to :course
    has_many :resources
    has_many :lessons
end
