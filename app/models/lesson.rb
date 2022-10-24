class Lesson < ApplicationRecord
    belongs_to :student
    belongs_to :phase
    belongs_to :educator
end
