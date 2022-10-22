class Student < ApplicationRecord
    has_one :course
    has_many :lessons
end
