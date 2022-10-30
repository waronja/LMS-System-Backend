class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :lesson_id, :quiz_id, :phase_id, :course_id
end
