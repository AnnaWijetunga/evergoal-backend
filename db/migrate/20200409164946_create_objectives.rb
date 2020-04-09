class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.string :description
      t.integer :goal_id
      t.integer :completed, default: 0

      t.timestamps
    end
  end
end
