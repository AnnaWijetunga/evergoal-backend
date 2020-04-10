class ObjectiveSerializer < ActiveModel::Serializer
  attributes :id, :goal_id, :description, :completed
  belongs_to :goal
end