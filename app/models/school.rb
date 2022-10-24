class School < ApplicationRecord
     belongs_to :school_owner
     has_many :students
     has_many :educators
     has_many :courses
end
