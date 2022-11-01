class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :resources
  belongs_to :phase
  belongs_to :educator
  belongs_to :student
end
