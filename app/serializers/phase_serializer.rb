class PhaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :course_id

  # belongs_to :course
end
