class Phase < ApplicationRecord
    has_many :resources
    has_many :lessons
    belongs_to :course
   
end
