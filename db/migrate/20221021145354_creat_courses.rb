class CreatCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :school_id
      t.integer :student_id
      t.integer :educator_id
   

      t.timestamps
    end
  end
end
