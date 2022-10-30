class Phase < ApplicationRecord
    belongs_to :course

    validates :name,presence: true
    # has_many :resources
    has_many :lessons

    validates :name, presence: true
    
end
