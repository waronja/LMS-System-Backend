class School < ApplicationRecord
    has_many :students
    belongs_to :school_owner
    has_many :educators
    has_many :courses
end
