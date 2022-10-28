class SchoolOwnerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email
  # has_one :school
  
end
