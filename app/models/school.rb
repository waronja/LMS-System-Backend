class School < ApplicationRecord
     belongs_to :school_owner
     has_many :students
<<<<<<< HEAD
     has_many :educators
=======
     # has_many :educators
>>>>>>> e25a2c883cac674951efe565dca407f8b62daa90
     has_many :courses
end
