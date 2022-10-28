class EducatorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest, :school_id, :isadmin

  belongs_to :school
end
