class Student < ApplicationRecord
    has_secure_password
    
    validates :first_name,presence: true
    validates :last_name,presence: true
    validates :email,presence: true,uniqueness: true
    validates :password,presence: true,length: {minimum: 6}



    belongs_to :school
    has_one  :course
    has_many :lessons

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :password, length: { minimum: 6}
  

end
