class GoalSerializer < ActiveModel::Serializer
  attributes :id, :aim, :strategy, :completed
  has_many :objectives 
end
