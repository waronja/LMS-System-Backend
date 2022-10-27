class SchoolOwnerSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email
  has_one :school
end
