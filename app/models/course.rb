class Course < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, uniqueness: true
    
    belongs_to :school
    belongs_to :student
    # has_many  :resources
    has_many :phases
end
