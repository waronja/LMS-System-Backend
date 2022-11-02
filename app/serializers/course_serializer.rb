class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_one :school
  belongs_to :student
  # has_many :phases

end
