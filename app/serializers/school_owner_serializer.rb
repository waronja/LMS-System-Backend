class SchoolOwnerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest, :isadmin

  # has_one :school
end
