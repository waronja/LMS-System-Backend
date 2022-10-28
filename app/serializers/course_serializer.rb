class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :school_id, :student_id

  # belongs_to :school
  # belongs_to :student
  has_many :phases

end
