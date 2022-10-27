class School < ApplicationRecord
     validates :name,presence: true,uniqueness: true
     validates :description: true
     
     # belongs_to :school_owner
     # has_many :students
     # has_many :educators
     # has_many :courses
end
