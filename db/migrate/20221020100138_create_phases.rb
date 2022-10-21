class CreatePhases < ActiveRecord::Migration[7.0]
  def change
    create_table :phases do |t|
      t.string :name
      t.integer :lesson_id
      t.integer :course_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
