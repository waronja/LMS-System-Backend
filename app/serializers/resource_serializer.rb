class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :lesson_id, :phase_id, :course_id

  belongs_to :lesson
  belongs_to :phase
  belongs_to :course

end
