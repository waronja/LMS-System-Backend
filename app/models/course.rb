class Course < ApplicationRecord
    belongs_to :school
    belongs_to :student
    # has_many :educators
    # has_many  :resources
    # has_many :phases
end
