class Lesson < ApplicationRecord
validates :name, presence: true

    # belongs_to :student
    # has_one :assessment
    # belongs_to :phase
    # belongs_to :educator

end
