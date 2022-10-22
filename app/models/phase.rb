class Phase < ApplicationRecord
    belongs_to :phase
    has_many :lessons
   
end
