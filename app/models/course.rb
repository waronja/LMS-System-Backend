class Course < ApplicationRecord
    belongs_to :school
    belongs_to :student
    has_many  :resources
    has_many :phases
end
