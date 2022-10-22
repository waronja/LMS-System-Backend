class Student < ApplicationRecord
    belongs_to :school
    has_one  :course
    has_many :lessons

end
