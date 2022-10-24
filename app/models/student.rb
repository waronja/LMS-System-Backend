class Student < ApplicationRecord
    has_secure_password
    belongs_to :school
    has_one  :course
    # has_many :lessons

end
