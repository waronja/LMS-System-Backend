class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :school_owner

  belongs_to :school_owner
  has_many :students
  has_many :educators
end
