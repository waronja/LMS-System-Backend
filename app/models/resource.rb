class Resource < ApplicationRecord
    validates :name,presence: true
    # belongs_to :course
    # belongs_to :phase
end
