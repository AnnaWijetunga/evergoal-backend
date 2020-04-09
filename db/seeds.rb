# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

goal1 = Goal.create(aim:"Run", strategy: "Run 6 days a week to build up to a marathon.")
goal2 = Goal.create(aim:"Cook", strategy: "Menu plan and create weekly meals.")

objective1 = Objective.create(description: "Track my runs", goal_id: 1, completed: 0)
objective2 = Objective.create(description: "Increase mileage weekly", goal_id: 1, completed: 0)
objective3 = Objective.create(description: "Buy new shoes", goal_id: 1, completed: 0)

objective4 = Objective.create(description: "Set aside a day for weekly planning", goal_id: 2, completed: 0)
objective5 = Objective.create(description: "Set aside time to write down ingredients", goal_id: 2, completed: 0)