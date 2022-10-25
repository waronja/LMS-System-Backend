class Educator < ApplicationRecord
    # has_secure_password
    
    belongs_to :school
    belongs_to :course
    # has_many   :lessons
end
