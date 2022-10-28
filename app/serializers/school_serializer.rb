class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :courses
  belongs_to :school_owner
end
