class Educator < ApplicationRecord
    has_secure_password

    belongs_to :school
    # has_many   :lessons

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :password, length: { minimum: 6}

end
