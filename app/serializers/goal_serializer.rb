# which parts of our goal do we think will be imoportant to access on our front end? id, aim, strategy, and completed

# below we add our attributes we want to access for our goal

# then we need to ensure objectives come through, nested under goals - we add the has_many relationship

class GoalSerializer < ActiveModel::Serializer
  attributes :id, :aim, :strategy, :completed
  has_many :objectives 
end
