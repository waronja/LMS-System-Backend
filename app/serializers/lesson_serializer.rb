class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :phase_id, :educator_id, :student_id

  has_many :resources
end
