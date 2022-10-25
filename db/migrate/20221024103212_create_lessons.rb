class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :phase_id
      t.integer :educator_id
      t.integer :student_id

      t.timestamps
    end
  end
end
