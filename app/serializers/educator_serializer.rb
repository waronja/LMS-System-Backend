class EducatorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest, :isadmin

  belongs_to :school
  # has_many :lessons
end
