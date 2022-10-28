class PhaseSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :lessons
end
