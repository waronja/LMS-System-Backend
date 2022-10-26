class Course < ApplicationRecord
    belongs_to :school
    belongs_to :student
<<<<<<< HEAD
    has_many  :resources
    has_many :phases
=======
    # has_many  :resources
    # has_many :phases
>>>>>>> e25a2c883cac674951efe565dca407f8b62daa90
end
