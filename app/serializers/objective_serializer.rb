# below we add our attributes we want to access for our objective

# then we need to ensure goal comes through, as a parent to objectives - we add the belongs_to relationship

class ObjectiveSerializer < ActiveModel::Serializer
  attributes :id, :goal_id, :description, :completed
  belongs_to :goal
end