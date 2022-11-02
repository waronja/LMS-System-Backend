class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  belongs_to :school_owner
  has_many :students
  has_many :educators
end
