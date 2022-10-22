class School < ApplicationRecord
    has_many :students
    belongs_to :school_owner
end
