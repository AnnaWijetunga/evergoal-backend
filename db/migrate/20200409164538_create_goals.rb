class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :aim
      t.string :strategy
      t.integer :completed, default: 0

      t.timestamps
    end
  end
end
