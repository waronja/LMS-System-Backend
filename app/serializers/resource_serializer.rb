class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :lesson
  belongs_to :phase
  belongs_to :course

end
