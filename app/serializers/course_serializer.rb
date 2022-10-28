class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name
  # belongs_to :school
end
